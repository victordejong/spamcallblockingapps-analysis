package org.mozilla.classfile;

import android.support.p001v4.view.ViewCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.UintMap;
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ClassFileWriter.class */
public class ClassFileWriter {
    public static final short ACC_ABSTRACT = 1024;
    public static final short ACC_FINAL = 16;
    public static final short ACC_NATIVE = 256;
    public static final short ACC_PRIVATE = 2;
    public static final short ACC_PROTECTED = 4;
    public static final short ACC_PUBLIC = 1;
    public static final short ACC_STATIC = 8;
    public static final short ACC_SUPER = 32;
    public static final short ACC_SYNCHRONIZED = 32;
    public static final short ACC_TRANSIENT = 128;
    public static final short ACC_VOLATILE = 64;
    private static final boolean DEBUGCODE = false;
    private static final boolean DEBUGLABELS = false;
    private static final boolean DEBUGSTACK = false;
    private static final int ExceptionTableSize = 4;
    private static final int FileHeaderConstant = -889275714;
    private static final boolean GenerateStackMap;
    private static final int LineNumberTableSize = 16;
    private static final int MIN_FIXUP_TABLE_SIZE = 40;
    private static final int MIN_LABEL_TABLE_SIZE = 32;
    private static final int MajorVersion;
    private static final int MinorVersion;
    private static final int SuperBlockStartsSize = 4;
    private String generatedClassName;
    private int itsCodeBufferTop;
    private ClassFileMethod itsCurrentMethod;
    private ExceptionTableEntry[] itsExceptionTable;
    private int itsExceptionTableTop;
    private long[] itsFixupTable;
    private int itsFixupTableTop;
    private short itsFlags;
    private int[] itsLabelTable;
    private int itsLabelTableTop;
    private int[] itsLineNumberTable;
    private int itsLineNumberTableTop;
    private short itsMaxLocals;
    private short itsMaxStack;
    private short itsSourceFileNameIndex;
    private short itsStackTop;
    private short itsSuperClassIndex;
    private short itsThisClassIndex;
    private ObjArray itsVarDescriptors;
    private int[] itsSuperBlockStarts = null;
    private int itsSuperBlockStartsTop = 0;
    private UintMap itsJumpFroms = null;
    private byte[] itsCodeBuffer = new byte[256];
    private ObjArray itsMethods = new ObjArray();
    private ObjArray itsFields = new ObjArray();
    private ObjArray itsInterfaces = new ObjArray();
    private char[] tmpCharBuffer = new char[64];
    private ConstantPool itsConstantPool = new ConstantPool(this);

    /* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ClassFileWriter$ClassFileFormatException.class */
    public static class ClassFileFormatException extends RuntimeException {
        private static final long serialVersionUID = 1263998431033790599L;

        ClassFileFormatException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ClassFileWriter$StackMapTable.class */
    final class StackMapTable {
        static final boolean DEBUGSTACKMAP = false;
        private SuperBlock[] superBlockDeps;
        private SuperBlock[] superBlocks = null;
        private int[] stack = null;
        private int[] locals = null;
        private SuperBlock[] workList = null;
        private byte[] rawStackMap = null;
        private int localsTop = 0;
        private int stackTop = 0;
        private int workListTop = 0;
        private int rawStackMapTop = 0;
        private boolean wide = false;

        StackMapTable() {
        }

        private void addToWorkList(SuperBlock superBlock) {
            if (!superBlock.isInQueue()) {
                superBlock.setInQueue(true);
                superBlock.setInitialized(true);
                if (this.workListTop == this.workList.length) {
                    SuperBlock[] superBlockArr = new SuperBlock[this.workListTop * 2];
                    System.arraycopy(this.workList, 0, superBlockArr, 0, this.workListTop);
                    this.workList = superBlockArr;
                }
                SuperBlock[] superBlockArr2 = this.workList;
                int i = this.workListTop;
                this.workListTop = i + 1;
                superBlockArr2[i] = superBlock;
            }
        }

        private void clearStack() {
            this.stackTop = 0;
        }

        private void computeRawStackMap() {
            int[] trimmedLocals = this.superBlocks[0].getTrimmedLocals();
            int i = -1;
            int i2 = 1;
            while (i2 < this.superBlocks.length) {
                SuperBlock superBlock = this.superBlocks[i2];
                int[] trimmedLocals2 = superBlock.getTrimmedLocals();
                int[] stack = superBlock.getStack();
                int start = (superBlock.getStart() - i) - 1;
                if (stack.length == 0) {
                    int length = trimmedLocals.length > trimmedLocals2.length ? trimmedLocals2.length : trimmedLocals.length;
                    int abs = Math.abs(trimmedLocals.length - trimmedLocals2.length);
                    int i3 = 0;
                    while (i3 < length && trimmedLocals[i3] == trimmedLocals2[i3]) {
                        i3++;
                    }
                    if (i3 == trimmedLocals2.length && abs == 0) {
                        writeSameFrame(trimmedLocals2, start);
                    } else if (i3 == trimmedLocals2.length && abs <= 3) {
                        writeChopFrame(abs, start);
                    } else if (i3 != trimmedLocals.length || abs > 3) {
                        writeFullFrame(trimmedLocals2, stack, start);
                    } else {
                        writeAppendFrame(trimmedLocals2, abs, start);
                    }
                } else if (stack.length != 1) {
                    writeFullFrame(trimmedLocals2, stack, start);
                } else if (Arrays.equals(trimmedLocals, trimmedLocals2)) {
                    writeSameLocalsOneStackItemFrame(trimmedLocals2, stack, start);
                } else {
                    writeFullFrame(trimmedLocals2, stack, start);
                }
                i = superBlock.getStart();
                i2++;
                trimmedLocals = trimmedLocals2;
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
            	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
            	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
            	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
            */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private int execute(int r6) {
            /*
                Method dump skipped, instructions count: 2213
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.StackMapTable.execute(int):int");
        }

        private void executeALoad(int i) {
            int local = getLocal(i);
            int tag = TypeInfo.getTag(local);
            if (tag == 7 || tag == 6 || tag == 8 || tag == 5) {
                push(local);
                return;
            }
            throw new IllegalStateException("bad local variable type: " + local + " at index: " + i);
        }

        private void executeAStore(int i) {
            setLocal(i, pop());
        }

        private void executeBlock(SuperBlock superBlock) {
            int index;
            int start = superBlock.getStart();
            int i = 0;
            while (start < superBlock.getEnd()) {
                int i2 = ClassFileWriter.this.itsCodeBuffer[start] & 255;
                int execute = execute(start);
                if (isBranch(i2)) {
                    flowInto(getBranchTarget(start));
                } else if (i2 == 170) {
                    int i3 = start + 1 + ((start ^ (-1)) & 3);
                    flowInto(getSuperBlockFromOffset(getOperand(i3, 4) + start));
                    int operand = getOperand(i3 + 4, 4);
                    int operand2 = getOperand(i3 + 8, 4);
                    for (int i4 = 0; i4 < (operand2 - operand) + 1; i4++) {
                        flowInto(getSuperBlockFromOffset(getOperand((i4 * 4) + i3 + 12, 4) + start));
                    }
                }
                for (int i5 = 0; i5 < ClassFileWriter.this.itsExceptionTableTop; i5++) {
                    ExceptionTableEntry exceptionTableEntry = ClassFileWriter.this.itsExceptionTable[i5];
                    short labelPC = (short) ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsStartLabel);
                    short labelPC2 = (short) ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsEndLabel);
                    if (start >= labelPC && start < labelPC2) {
                        SuperBlock superBlockFromOffset = getSuperBlockFromOffset((short) ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsHandlerLabel));
                        superBlockFromOffset.merge(this.locals, this.localsTop, new int[]{exceptionTableEntry.itsCatchType == 0 ? TypeInfo.OBJECT(ClassFileWriter.this.itsConstantPool.addClass("java/lang/Throwable")) : TypeInfo.OBJECT(exceptionTableEntry.itsCatchType)}, 1, ClassFileWriter.this.itsConstantPool);
                        addToWorkList(superBlockFromOffset);
                    }
                }
                start += execute;
                i = i2;
            }
            if (!isSuperBlockEnd(i) && (index = superBlock.getIndex() + 1) < this.superBlocks.length) {
                flowInto(this.superBlocks[index]);
            }
        }

        private void executeStore(int i, int i2) {
            pop();
            setLocal(i, i2);
        }

        private void executeWorkList() {
            while (this.workListTop > 0) {
                SuperBlock[] superBlockArr = this.workList;
                int i = this.workListTop - 1;
                this.workListTop = i;
                SuperBlock superBlock = superBlockArr[i];
                superBlock.setInQueue(false);
                this.locals = superBlock.getLocals();
                this.stack = superBlock.getStack();
                this.localsTop = this.locals.length;
                this.stackTop = this.stack.length;
                executeBlock(superBlock);
            }
        }

        private void flowInto(SuperBlock superBlock) {
            if (superBlock.merge(this.locals, this.localsTop, this.stack, this.stackTop, ClassFileWriter.this.itsConstantPool)) {
                addToWorkList(superBlock);
            }
        }

        private SuperBlock getBranchTarget(int i) {
            return getSuperBlockFromOffset((ClassFileWriter.this.itsCodeBuffer[i] & 255) == 200 ? i + getOperand(i + 1, 4) : i + ((short) getOperand(i + 1, 2)));
        }

        private int getLocal(int i) {
            if (i < this.localsTop) {
                return this.locals[i];
            }
            return 0;
        }

        private int getOperand(int i) {
            return getOperand(i, 1);
        }

        private int getOperand(int i, int i2) {
            if (i2 > 4) {
                throw new IllegalArgumentException("bad operand size");
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 = (i3 << 8) | (ClassFileWriter.this.itsCodeBuffer[i + i4] & 255);
            }
            return i3;
        }

        private SuperBlock[] getSuperBlockDependencies() {
            int[] keys;
            SuperBlock[] superBlockArr = new SuperBlock[this.superBlocks.length];
            for (int i = 0; i < ClassFileWriter.this.itsExceptionTableTop; i++) {
                ExceptionTableEntry exceptionTableEntry = ClassFileWriter.this.itsExceptionTable[i];
                short labelPC = (short) ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsStartLabel);
                superBlockArr[getSuperBlockFromOffset((short) ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsHandlerLabel)).getIndex()] = getSuperBlockFromOffset(labelPC);
            }
            for (int i2 : ClassFileWriter.this.itsJumpFroms.getKeys()) {
                superBlockArr[getSuperBlockFromOffset(i2).getIndex()] = getSuperBlockFromOffset(ClassFileWriter.this.itsJumpFroms.getInt(i2, -1));
            }
            return superBlockArr;
        }

        private SuperBlock getSuperBlockFromOffset(int i) {
            SuperBlock superBlock;
            for (int i2 = 0; i2 < this.superBlocks.length && (superBlock = this.superBlocks[i2]) != null; i2++) {
                if (i >= superBlock.getStart() && i < superBlock.getEnd()) {
                    return superBlock;
                }
            }
            throw new IllegalArgumentException("bad offset: " + i);
        }

        private int getWorstCaseWriteSize() {
            return (this.superBlocks.length - 1) * ((ClassFileWriter.this.itsMaxLocals * 3) + 7 + (ClassFileWriter.this.itsMaxStack * 3));
        }

        private void initializeTypeInfo(int i, int i2) {
            initializeTypeInfo(i, i2, this.locals, this.localsTop);
            initializeTypeInfo(i, i2, this.stack, this.stackTop);
        }

        private void initializeTypeInfo(int i, int i2, int[] iArr, int i3) {
            for (int i4 = 0; i4 < i3; i4++) {
                if (iArr[i4] == i) {
                    iArr[i4] = i2;
                }
            }
        }

        private boolean isBranch(int i) {
            switch (i) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                    return true;
                default:
                    switch (i) {
                        case ByteCode.IFNULL /* 198 */:
                        case ByteCode.IFNONNULL /* 199 */:
                        case 200:
                            return true;
                        default:
                            return false;
                    }
            }
        }

        private boolean isSuperBlockEnd(int i) {
            if (i == 167 || i == 191 || i == 200) {
                return true;
            }
            switch (i) {
                case 170:
                case 171:
                case 172:
                case 173:
                case 174:
                    return true;
                default:
                    switch (i) {
                        case 176:
                        case 177:
                            return true;
                        default:
                            return false;
                    }
            }
        }

        private void killSuperBlock(SuperBlock superBlock) {
            int[] iArr = new int[0];
            int[] iArr2 = {TypeInfo.OBJECT("java/lang/Throwable", ClassFileWriter.this.itsConstantPool)};
            for (int i = 0; i < ClassFileWriter.this.itsExceptionTableTop; i++) {
                ExceptionTableEntry exceptionTableEntry = ClassFileWriter.this.itsExceptionTable[i];
                int labelPC = ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsStartLabel);
                int labelPC2 = ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsEndLabel);
                SuperBlock superBlockFromOffset = getSuperBlockFromOffset(ClassFileWriter.this.getLabelPC(exceptionTableEntry.itsHandlerLabel));
                if ((superBlock.getStart() > labelPC && superBlock.getStart() < labelPC2) || (labelPC > superBlock.getStart() && labelPC < superBlock.getEnd() && superBlockFromOffset.isInitialized())) {
                    iArr = superBlockFromOffset.getLocals();
                    break;
                }
            }
            int i2 = 0;
            while (i2 < ClassFileWriter.this.itsExceptionTableTop) {
                int i3 = i2;
                if (ClassFileWriter.this.getLabelPC(ClassFileWriter.this.itsExceptionTable[i2].itsStartLabel) == superBlock.getStart()) {
                    for (int i4 = i2 + 1; i4 < ClassFileWriter.this.itsExceptionTableTop; i4++) {
                        ClassFileWriter.this.itsExceptionTable[i4 - 1] = ClassFileWriter.this.itsExceptionTable[i4];
                    }
                    ClassFileWriter.access$410(ClassFileWriter.this);
                    i3 = i2 - 1;
                }
                i2 = i3 + 1;
            }
            superBlock.merge(iArr, iArr.length, iArr2, iArr2.length, ClassFileWriter.this.itsConstantPool);
            int end = superBlock.getEnd() - 1;
            ClassFileWriter.this.itsCodeBuffer[end] = (byte) (-65);
            for (int start = superBlock.getStart(); start < end; start++) {
                ClassFileWriter.this.itsCodeBuffer[start] = (byte) 0;
            }
        }

        private int pop() {
            int[] iArr = this.stack;
            int i = this.stackTop - 1;
            this.stackTop = i;
            return iArr[i];
        }

        private long pop2() {
            long pop = pop();
            return TypeInfo.isTwoWords((int) pop) ? pop : (pop << 32) | (pop() & ViewCompat.MEASURED_SIZE_MASK);
        }

        private void push(int i) {
            if (this.stackTop == this.stack.length) {
                int[] iArr = new int[Math.max(this.stackTop * 2, 4)];
                System.arraycopy(this.stack, 0, iArr, 0, this.stackTop);
                this.stack = iArr;
            }
            int[] iArr2 = this.stack;
            int i2 = this.stackTop;
            this.stackTop = i2 + 1;
            iArr2[i2] = i;
        }

        private void push2(long j) {
            push((int) (j & 16777215));
            long j2 = j >>> 32;
            if (j2 != 0) {
                push((int) (j2 & 16777215));
            }
        }

        private void setLocal(int i, int i2) {
            if (i >= this.localsTop) {
                int i3 = i + 1;
                int[] iArr = new int[i3];
                System.arraycopy(this.locals, 0, iArr, 0, this.localsTop);
                this.locals = iArr;
                this.localsTop = i3;
            }
            this.locals[i] = i2;
        }

        private void verify() {
            int[] createInitialLocals = ClassFileWriter.this.createInitialLocals();
            this.superBlocks[0].merge(createInitialLocals, createInitialLocals.length, new int[0], 0, ClassFileWriter.this.itsConstantPool);
            this.workList = new SuperBlock[]{this.superBlocks[0]};
            this.workListTop = 1;
            executeWorkList();
            for (int i = 0; i < this.superBlocks.length; i++) {
                SuperBlock superBlock = this.superBlocks[i];
                if (!superBlock.isInitialized()) {
                    killSuperBlock(superBlock);
                }
            }
            executeWorkList();
        }

        private void writeAppendFrame(int[] iArr, int i, int i2) {
            int length = iArr.length;
            byte[] bArr = this.rawStackMap;
            int i3 = this.rawStackMapTop;
            this.rawStackMapTop = i3 + 1;
            bArr[i3] = (byte) (i + 251);
            this.rawStackMapTop = ClassFileWriter.putInt16(i2, this.rawStackMap, this.rawStackMapTop);
            this.rawStackMapTop = writeTypes(iArr, length - i);
        }

        private void writeChopFrame(int i, int i2) {
            byte[] bArr = this.rawStackMap;
            int i3 = this.rawStackMapTop;
            this.rawStackMapTop = i3 + 1;
            bArr[i3] = (byte) (251 - i);
            this.rawStackMapTop = ClassFileWriter.putInt16(i2, this.rawStackMap, this.rawStackMapTop);
        }

        private void writeFullFrame(int[] iArr, int[] iArr2, int i) {
            byte[] bArr = this.rawStackMap;
            int i2 = this.rawStackMapTop;
            this.rawStackMapTop = i2 + 1;
            bArr[i2] = (byte) (-1);
            this.rawStackMapTop = ClassFileWriter.putInt16(i, this.rawStackMap, this.rawStackMapTop);
            this.rawStackMapTop = ClassFileWriter.putInt16(iArr.length, this.rawStackMap, this.rawStackMapTop);
            this.rawStackMapTop = writeTypes(iArr);
            this.rawStackMapTop = ClassFileWriter.putInt16(iArr2.length, this.rawStackMap, this.rawStackMapTop);
            this.rawStackMapTop = writeTypes(iArr2);
        }

        private void writeSameFrame(int[] iArr, int i) {
            if (i <= 63) {
                byte[] bArr = this.rawStackMap;
                int i2 = this.rawStackMapTop;
                this.rawStackMapTop = i2 + 1;
                bArr[i2] = (byte) i;
                return;
            }
            byte[] bArr2 = this.rawStackMap;
            int i3 = this.rawStackMapTop;
            this.rawStackMapTop = i3 + 1;
            bArr2[i3] = (byte) (-5);
            this.rawStackMapTop = ClassFileWriter.putInt16(i, this.rawStackMap, this.rawStackMapTop);
        }

        private void writeSameLocalsOneStackItemFrame(int[] iArr, int[] iArr2, int i) {
            if (i <= 63) {
                byte[] bArr = this.rawStackMap;
                int i2 = this.rawStackMapTop;
                this.rawStackMapTop = i2 + 1;
                bArr[i2] = (byte) (i + 64);
            } else {
                byte[] bArr2 = this.rawStackMap;
                int i3 = this.rawStackMapTop;
                this.rawStackMapTop = i3 + 1;
                bArr2[i3] = (byte) (-9);
                this.rawStackMapTop = ClassFileWriter.putInt16(i, this.rawStackMap, this.rawStackMapTop);
            }
            writeType(iArr2[0]);
        }

        private int writeType(int i) {
            int i2 = i & 255;
            byte[] bArr = this.rawStackMap;
            int i3 = this.rawStackMapTop;
            this.rawStackMapTop = i3 + 1;
            bArr[i3] = (byte) i2;
            if (i2 == 7 || i2 == 8) {
                this.rawStackMapTop = ClassFileWriter.putInt16(i >>> 8, this.rawStackMap, this.rawStackMapTop);
            }
            return this.rawStackMapTop;
        }

        private int writeTypes(int[] iArr) {
            return writeTypes(iArr, 0);
        }

        private int writeTypes(int[] iArr, int i) {
            int i2 = this.rawStackMapTop;
            while (i < iArr.length) {
                this.rawStackMapTop = writeType(iArr[i]);
                i++;
            }
            return this.rawStackMapTop;
        }

        int computeWriteSize() {
            this.rawStackMap = new byte[getWorstCaseWriteSize()];
            computeRawStackMap();
            return this.rawStackMapTop + 2;
        }

        void generate() {
            this.superBlocks = new SuperBlock[ClassFileWriter.this.itsSuperBlockStartsTop];
            int[] createInitialLocals = ClassFileWriter.this.createInitialLocals();
            int i = 0;
            while (i < ClassFileWriter.this.itsSuperBlockStartsTop) {
                this.superBlocks[i] = new SuperBlock(i, ClassFileWriter.this.itsSuperBlockStarts[i], i == ClassFileWriter.this.itsSuperBlockStartsTop - 1 ? ClassFileWriter.this.itsCodeBufferTop : ClassFileWriter.this.itsSuperBlockStarts[i + 1], createInitialLocals);
                i++;
            }
            this.superBlockDeps = getSuperBlockDependencies();
            verify();
        }

        int write(byte[] bArr, int i) {
            int putInt16 = ClassFileWriter.putInt16(this.superBlocks.length - 1, bArr, ClassFileWriter.putInt32(this.rawStackMapTop + 2, bArr, i));
            System.arraycopy(this.rawStackMap, 0, bArr, putInt16, this.rawStackMapTop);
            return putInt16 + this.rawStackMapTop;
        }
    }

    static {
        InputStream inputStream;
        Throwable th;
        boolean z = false;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            inputStream = ClassFileWriter.class.getResourceAsStream("ClassFileWriter.class");
            if (inputStream == null) {
                try {
                    inputStream = ClassLoader.getSystemResourceAsStream("org/mozilla/classfile/ClassFileWriter.class");
                } catch (Exception e) {
                    inputStream2 = inputStream;
                    MinorVersion = 0;
                    MajorVersion = 48;
                    GenerateStackMap = false;
                    if (inputStream2 != null) {
                        inputStream = inputStream2;
                        inputStream.close();
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream3 = inputStream;
                    MinorVersion = 0;
                    MajorVersion = 48;
                    GenerateStackMap = false;
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            }
            byte[] bArr = new byte[8];
            int i = 0;
            while (i < 8) {
                int read = inputStream.read(bArr, i, 8 - i);
                if (read < 0) {
                    inputStream3 = inputStream;
                    inputStream2 = inputStream;
                    throw new IOException();
                }
                i += read;
            }
            byte b = bArr[4];
            byte b2 = bArr[5];
            int i2 = (bArr[7] & 255) | (bArr[6] << 8);
            MinorVersion = (b << 8) | (b2 & 255);
            MajorVersion = i2;
            if (i2 >= 50) {
                z = true;
            }
            GenerateStackMap = z;
            if (inputStream == null) {
                return;
            }
        } catch (Exception e3) {
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            inputStream.close();
        } catch (IOException e4) {
        }
    }

    public ClassFileWriter(String str, String str2, String str3) {
        this.generatedClassName = str;
        this.itsThisClassIndex = this.itsConstantPool.addClass(str);
        this.itsSuperClassIndex = this.itsConstantPool.addClass(str2);
        if (str3 != null) {
            this.itsSourceFileNameIndex = this.itsConstantPool.addUtf8(str3);
        }
        this.itsFlags = (short) 33;
    }

    static /* synthetic */ int access$410(ClassFileWriter classFileWriter) {
        int i = classFileWriter.itsExceptionTableTop;
        classFileWriter.itsExceptionTableTop = i - 1;
        return i;
    }

    private void addLabelFixup(int i, int i2) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i3 = i & Integer.MAX_VALUE;
        if (i3 >= this.itsLabelTableTop) {
            throw new IllegalArgumentException("Bad label");
        }
        int i4 = this.itsFixupTableTop;
        if (this.itsFixupTable == null || i4 == this.itsFixupTable.length) {
            if (this.itsFixupTable == null) {
                this.itsFixupTable = new long[40];
            } else {
                long[] jArr = new long[this.itsFixupTable.length * 2];
                System.arraycopy(this.itsFixupTable, 0, jArr, 0, i4);
                this.itsFixupTable = jArr;
            }
        }
        this.itsFixupTableTop = i4 + 1;
        this.itsFixupTable[i4] = i2 | (i3 << 32);
    }

    private int addReservedCodeSpace(int i) {
        if (this.itsCurrentMethod == null) {
            throw new IllegalArgumentException("No method to add to");
        }
        int i2 = this.itsCodeBufferTop;
        int i3 = i + i2;
        if (i3 > this.itsCodeBuffer.length) {
            int length = this.itsCodeBuffer.length * 2;
            int i4 = length;
            if (i3 > length) {
                i4 = i3;
            }
            byte[] bArr = new byte[i4];
            System.arraycopy(this.itsCodeBuffer, 0, bArr, 0, i2);
            this.itsCodeBuffer = bArr;
        }
        this.itsCodeBufferTop = i3;
        return i2;
    }

    private void addSuperBlockStart(int i) {
        if (GenerateStackMap) {
            if (this.itsSuperBlockStarts == null) {
                this.itsSuperBlockStarts = new int[4];
            } else if (this.itsSuperBlockStarts.length == this.itsSuperBlockStartsTop) {
                int[] iArr = new int[this.itsSuperBlockStartsTop * 2];
                System.arraycopy(this.itsSuperBlockStarts, 0, iArr, 0, this.itsSuperBlockStartsTop);
                this.itsSuperBlockStarts = iArr;
            }
            int[] iArr2 = this.itsSuperBlockStarts;
            int i2 = this.itsSuperBlockStartsTop;
            this.itsSuperBlockStartsTop = i2 + 1;
            iArr2[i2] = i;
        }
    }

    private void addToCodeBuffer(int i) {
        this.itsCodeBuffer[addReservedCodeSpace(1)] = (byte) i;
    }

    private void addToCodeInt16(int i) {
        putInt16(i, this.itsCodeBuffer, addReservedCodeSpace(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static char arrayTypeToName(int i) {
        switch (i) {
            case 4:
                return 'Z';
            case 5:
                return 'C';
            case 6:
                return 'F';
            case 7:
                return 'D';
            case 8:
                return 'B';
            case 9:
                return 'S';
            case 10:
                return 'I';
            case 11:
                return 'J';
            default:
                throw new IllegalArgumentException("bad operand");
        }
    }

    private static void badStack(int i) {
        String str;
        if (i < 0) {
            str = "Stack underflow: " + i;
        } else {
            str = "Too big stack: " + i;
        }
        throw new IllegalStateException(str);
    }

    private static String bytecodeStr(int i) {
        return "";
    }

    private static String classDescriptorToInternalName(String str) {
        return str.substring(1, str.length() - 1);
    }

    public static String classNameToSignature(String str) {
        int length = str.length();
        int i = length + 1;
        int i2 = i + 1;
        char[] cArr = new char[i2];
        cArr[0] = (char) 76;
        cArr[i] = (char) 59;
        str.getChars(0, length, cArr, 1);
        for (int i3 = 1; i3 != i; i3++) {
            if (cArr[i3] == '.') {
                cArr[i3] = (char) 47;
            }
        }
        return new String(cArr, 0, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] createInitialLocals() {
        int i;
        int[] iArr = new int[this.itsMaxLocals];
        if ((this.itsCurrentMethod.getFlags() & 8) == 0) {
            if ("<init>".equals(this.itsCurrentMethod.getName())) {
                iArr[0] = 6;
            } else {
                iArr[0] = TypeInfo.OBJECT(this.itsThisClassIndex);
            }
            i = 1;
        } else {
            i = 0;
        }
        String type = this.itsCurrentMethod.getType();
        int indexOf = type.indexOf(40);
        int indexOf2 = type.indexOf(41);
        if (indexOf != 0 || indexOf2 < 0) {
            throw new IllegalArgumentException("bad method type");
        }
        int i2 = indexOf + 1;
        StringBuilder sb = new StringBuilder();
        while (i2 < indexOf2) {
            switch (type.charAt(i2)) {
                case 'B':
                case 'C':
                case 'D':
                case 'F':
                case 'I':
                case 'J':
                case 'S':
                case 'Z':
                    sb.append(type.charAt(i2));
                    i2++;
                    break;
                case 'L':
                    int indexOf3 = type.indexOf(59, i2) + 1;
                    sb.append(type.substring(i2, indexOf3));
                    i2 = indexOf3;
                    break;
                case '[':
                    sb.append('[');
                    i2++;
                    continue;
            }
            int fromType = TypeInfo.fromType(descriptorToInternalName(sb.toString()), this.itsConstantPool);
            int i3 = i + 1;
            iArr[i] = fromType;
            i = i3;
            if (TypeInfo.isTwoWords(fromType)) {
                i = i3 + 1;
            }
            sb.setLength(0);
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String descriptorToInternalName(String str) {
        switch (str.charAt(0)) {
            case 'B':
            case 'C':
            case 'D':
            case 'F':
            case 'I':
            case 'J':
            case 'S':
            case 'V':
            case 'Z':
            case '[':
                return str;
            case 'L':
                return classDescriptorToInternalName(str);
            default:
                throw new IllegalArgumentException("bad descriptor:" + str);
        }
    }

    private void finalizeSuperBlockStarts() {
        if (GenerateStackMap) {
            for (int i = 0; i < this.itsExceptionTableTop; i++) {
                addSuperBlockStart((short) getLabelPC(this.itsExceptionTable[i].itsHandlerLabel));
            }
            Arrays.sort(this.itsSuperBlockStarts, 0, this.itsSuperBlockStartsTop);
            int i2 = this.itsSuperBlockStarts[0];
            int i3 = 1;
            for (int i4 = 1; i4 < this.itsSuperBlockStartsTop; i4++) {
                int i5 = this.itsSuperBlockStarts[i4];
                i2 = i2;
                i3 = i3;
                if (i2 != i5) {
                    if (i3 != i4) {
                        this.itsSuperBlockStarts[i3] = i5;
                    }
                    i3++;
                    i2 = i5;
                }
            }
            this.itsSuperBlockStartsTop = i3;
            if (this.itsSuperBlockStarts[i3 - 1] == this.itsCodeBufferTop) {
                this.itsSuperBlockStartsTop--;
            }
        }
    }

    private void fixLabelGotos() {
        byte[] bArr = this.itsCodeBuffer;
        for (int i = 0; i < this.itsFixupTableTop; i++) {
            long j = this.itsFixupTable[i];
            int i2 = (int) (j >> 32);
            int i3 = (int) j;
            int i4 = this.itsLabelTable[i2];
            if (i4 == -1) {
                throw new RuntimeException();
            }
            addSuperBlockStart(i4);
            int i5 = i3 - 1;
            this.itsJumpFroms.put(i4, i5);
            int i6 = i4 - i5;
            if (((short) i6) != i6) {
                throw new ClassFileFormatException("Program too complex: too big jump offset");
            }
            bArr[i3] = (byte) (i6 >> 8);
            bArr[i3 + 1] = (byte) i6;
        }
        this.itsFixupTableTop = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSlashedForm(String str) {
        return str.replace('.', '/');
    }

    private int getWriteSize() {
        if (this.itsSourceFileNameIndex != 0) {
            this.itsConstantPool.addUtf8("SourceFile");
        }
        int writeSize = 8 + this.itsConstantPool.getWriteSize() + 2 + 2 + 2 + 2 + (this.itsInterfaces.size() * 2) + 2;
        for (int i = 0; i < this.itsFields.size(); i++) {
            writeSize += ((ClassFileField) this.itsFields.get(i)).getWriteSize();
        }
        int i2 = writeSize + 2;
        for (int i3 = 0; i3 < this.itsMethods.size(); i3++) {
            i2 += ((ClassFileMethod) this.itsMethods.get(i3)).getWriteSize();
        }
        return this.itsSourceFileNameIndex != 0 ? i2 + 2 + 2 + 4 + 2 : i2 + 2;
    }

    static int opcodeCount(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 177:
                return 0;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case 168:
            case 169:
            case 178:
            case 179:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
                return 1;
            case 132:
                return 2;
            case 170:
            case 171:
                return -1;
            default:
                switch (i) {
                    case 187:
                    case 188:
                    case 189:
                    case 192:
                    case 193:
                    case ByteCode.IFNULL /* 198 */:
                    case ByteCode.IFNONNULL /* 199 */:
                    case 200:
                    case 201:
                        return 1;
                    case 190:
                    case 191:
                    case 194:
                    case 195:
                    case 196:
                    case 202:
                        return 0;
                    case 197:
                        return 2;
                    default:
                        switch (i) {
                            case 254:
                            case 255:
                                return 0;
                            default:
                                throw new IllegalArgumentException("Bad opcode: " + i);
                        }
                }
        }
    }

    static int opcodeLength(int i, boolean z) {
        int i2 = 2;
        int i3 = 5;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
                return 1;
            case 16:
            case 18:
                return 2;
            case 17:
            case 19:
            case 20:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case 168:
                return 3;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 169:
                if (z) {
                    i2 = 3;
                }
                return i2;
            case 132:
                if (!z) {
                    i3 = 3;
                }
                return i3;
            default:
                switch (i) {
                    case 172:
                    case 173:
                    case 174:
                    case 175:
                    case 176:
                    case 177:
                        return 1;
                    case 178:
                    case 179:
                    case 180:
                    case 181:
                    case 182:
                    case 183:
                    case 184:
                        return 3;
                    case 185:
                        return 5;
                    default:
                        switch (i) {
                            case 187:
                            case 189:
                            case 192:
                            case 193:
                            case ByteCode.IFNULL /* 198 */:
                            case ByteCode.IFNONNULL /* 199 */:
                                return 3;
                            case 188:
                                return 2;
                            case 190:
                            case 191:
                            case 194:
                            case 195:
                            case 196:
                            case 202:
                                return 1;
                            case 197:
                                return 4;
                            case 200:
                            case 201:
                                return 5;
                            default:
                                switch (i) {
                                    case 254:
                                    case 255:
                                        return 1;
                                    default:
                                        throw new IllegalArgumentException("Bad opcode: " + i);
                                }
                        }
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int putInt16(int i, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
        return i2 + 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int putInt32(int i, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
        return i2 + 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int putInt64(long j, byte[] bArr, int i) {
        return putInt32((int) j, bArr, putInt32((int) (j >>> 32), bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int sizeOfParameters(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.sizeOfParameters(java.lang.String):int");
    }

    static int stackChange(int i) {
        switch (i) {
            case 0:
            case 47:
            case 49:
            case 95:
            case 116:
            case 117:
            case 118:
            case 119:
            case 132:
            case 134:
            case 138:
            case 139:
            case 143:
            case 145:
            case 146:
            case 147:
            case 167:
            case 169:
            case 177:
            case 178:
            case 179:
            case 184:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 34:
            case 35:
            case 36:
            case 37:
            case 42:
            case 43:
            case 44:
            case 45:
            case 89:
            case 90:
            case 91:
            case 133:
            case 135:
            case 140:
            case 141:
            case 168:
                return 1;
            case 9:
            case 10:
            case 14:
            case 15:
            case 20:
            case 22:
            case 24:
            case 30:
            case 31:
            case 32:
            case 33:
            case 38:
            case 39:
            case 40:
            case 41:
            case 92:
            case 93:
            case 94:
                return 2;
            case 46:
            case 48:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 56:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 67:
            case 68:
            case 69:
            case 70:
            case 75:
            case 76:
            case 77:
            case 78:
            case 87:
            case 96:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 108:
            case 110:
            case 112:
            case 114:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 128:
            case 130:
            case 136:
            case 137:
            case 142:
            case 144:
            case 149:
            case 150:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 170:
            case 171:
            case 172:
            case 174:
            case 176:
            case 180:
            case 181:
            case 182:
            case 183:
            case 185:
                return -1;
            case 55:
            case 57:
            case 63:
            case 64:
            case 65:
            case 66:
            case 71:
            case 72:
            case 73:
            case 74:
            case 88:
            case 97:
            case 99:
            case 101:
            case 103:
            case 105:
            case 107:
            case 109:
            case 111:
            case 113:
            case 115:
            case 127:
            case 129:
            case 131:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 173:
            case 175:
                return -2;
            case 79:
            case 81:
            case 83:
            case 84:
            case 85:
            case 86:
            case 148:
            case 151:
            case 152:
                return -3;
            case 80:
            case 82:
                return -4;
            default:
                switch (i) {
                    case 187:
                    case 197:
                    case 201:
                        return 1;
                    case 188:
                    case 189:
                    case 190:
                    case 192:
                    case 193:
                    case 196:
                    case 200:
                    case 202:
                        return 0;
                    case 191:
                    case 194:
                    case 195:
                    case ByteCode.IFNULL /* 198 */:
                    case ByteCode.IFNONNULL /* 199 */:
                        return -1;
                    default:
                        switch (i) {
                            case 254:
                            case 255:
                                return 0;
                            default:
                                throw new IllegalArgumentException("Bad opcode: " + i);
                        }
                }
        }
    }

    private void xop(int i, int i2, int i3) {
        switch (i3) {
            case 0:
                add(i);
                return;
            case 1:
                add(i + 1);
                return;
            case 2:
                add(i + 2);
                return;
            case 3:
                add(i + 3);
                return;
            default:
                add(i2, i3);
                return;
        }
    }

    public int acquireLabel() {
        int i = this.itsLabelTableTop;
        if (this.itsLabelTable == null || i == this.itsLabelTable.length) {
            if (this.itsLabelTable == null) {
                this.itsLabelTable = new int[32];
            } else {
                int[] iArr = new int[this.itsLabelTable.length * 2];
                System.arraycopy(this.itsLabelTable, 0, iArr, 0, i);
                this.itsLabelTable = iArr;
            }
        }
        this.itsLabelTableTop = i + 1;
        this.itsLabelTable[i] = -1;
        return i | Integer.MIN_VALUE;
    }

    public void add(int i) {
        if (opcodeCount(i) != 0) {
            throw new IllegalArgumentException("Unexpected operands");
        }
        int stackChange = this.itsStackTop + stackChange(i);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
        }
        addToCodeBuffer(i);
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
        if (i == 191) {
            addSuperBlockStart(this.itsCodeBufferTop);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void add(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.add(int, int):void");
    }

    public void add(int i, int i2, int i3) {
        int stackChange = this.itsStackTop + stackChange(i);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
        }
        if (i == 132) {
            if (i2 < 0 || i2 >= 65536) {
                throw new ClassFileFormatException("out of range variable");
            } else if (i3 < 0 || i3 >= 65536) {
                throw new ClassFileFormatException("out of range increment");
            } else if (i2 > 255 || i3 < -128 || i3 > 127) {
                addToCodeBuffer(196);
                addToCodeBuffer(132);
                addToCodeInt16(i2);
                addToCodeInt16(i3);
            } else {
                addToCodeBuffer(132);
                addToCodeBuffer(i2);
                addToCodeBuffer(i3);
            }
        } else if (i != 197) {
            throw new IllegalArgumentException("Unexpected opcode for 2 operands");
        } else if (i2 < 0 || i2 >= 65536) {
            throw new IllegalArgumentException("out of range index");
        } else if (i3 < 0 || i3 >= 256) {
            throw new IllegalArgumentException("out of range dimensions");
        } else {
            addToCodeBuffer(197);
            addToCodeInt16(i2);
            addToCodeBuffer(i3);
        }
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void add(int i, String str) {
        int stackChange = this.itsStackTop + stackChange(i);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
        }
        if (!(i == 187 || i == 189)) {
            switch (i) {
                case 192:
                case 193:
                    break;
                default:
                    throw new IllegalArgumentException("bad opcode for class reference");
            }
        }
        short addClass = this.itsConstantPool.addClass(str);
        addToCodeBuffer(i);
        addToCodeInt16(addClass);
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void add(int i, String str, String str2, String str3) {
        int i2;
        int stackChange = this.itsStackTop + stackChange(i);
        char charAt = str3.charAt(0);
        int i3 = (charAt == 'J' || charAt == 'D') ? 2 : 1;
        switch (i) {
            case 178:
            case 180:
                i2 = stackChange + i3;
                break;
            case 179:
            case 181:
                i2 = stackChange - i3;
                break;
            default:
                throw new IllegalArgumentException("bad opcode for field reference");
        }
        if (i2 < 0 || 32767 < i2) {
            badStack(i2);
        }
        short addFieldRef = this.itsConstantPool.addFieldRef(str, str2, str3);
        addToCodeBuffer(i);
        addToCodeInt16(addFieldRef);
        short s = (short) i2;
        this.itsStackTop = s;
        if (i2 > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void addALoad(int i) {
        xop(42, 25, i);
    }

    public void addAStore(int i) {
        xop(75, 58, i);
    }

    public void addDLoad(int i) {
        xop(38, 24, i);
    }

    public void addDStore(int i) {
        xop(71, 57, i);
    }

    public void addExceptionHandler(int i, int i2, int i3, String str) {
        if ((i & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad startLabel");
        } else if ((i2 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad endLabel");
        } else if ((i3 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad handlerLabel");
        } else {
            ExceptionTableEntry exceptionTableEntry = new ExceptionTableEntry(i, i2, i3, str == null ? (short) 0 : this.itsConstantPool.addClass(str));
            int i4 = this.itsExceptionTableTop;
            if (i4 == 0) {
                this.itsExceptionTable = new ExceptionTableEntry[4];
            } else if (i4 == this.itsExceptionTable.length) {
                ExceptionTableEntry[] exceptionTableEntryArr = new ExceptionTableEntry[i4 * 2];
                System.arraycopy(this.itsExceptionTable, 0, exceptionTableEntryArr, 0, i4);
                this.itsExceptionTable = exceptionTableEntryArr;
            }
            this.itsExceptionTable[i4] = exceptionTableEntry;
            this.itsExceptionTableTop = i4 + 1;
        }
    }

    public void addFLoad(int i) {
        xop(34, 23, i);
    }

    public void addFStore(int i) {
        xop(67, 56, i);
    }

    public void addField(String str, String str2, short s) {
        this.itsFields.add(new ClassFileField(this.itsConstantPool.addUtf8(str), this.itsConstantPool.addUtf8(str2), s));
    }

    public void addField(String str, String str2, short s, double d) {
        ClassFileField classFileField = new ClassFileField(this.itsConstantPool.addUtf8(str), this.itsConstantPool.addUtf8(str2), s);
        classFileField.setAttributes(this.itsConstantPool.addUtf8("ConstantValue"), (short) 0, (short) 2, this.itsConstantPool.addConstant(d));
        this.itsFields.add(classFileField);
    }

    public void addField(String str, String str2, short s, int i) {
        ClassFileField classFileField = new ClassFileField(this.itsConstantPool.addUtf8(str), this.itsConstantPool.addUtf8(str2), s);
        classFileField.setAttributes(this.itsConstantPool.addUtf8("ConstantValue"), (short) 0, (short) 0, this.itsConstantPool.addConstant(i));
        this.itsFields.add(classFileField);
    }

    public void addField(String str, String str2, short s, long j) {
        ClassFileField classFileField = new ClassFileField(this.itsConstantPool.addUtf8(str), this.itsConstantPool.addUtf8(str2), s);
        classFileField.setAttributes(this.itsConstantPool.addUtf8("ConstantValue"), (short) 0, (short) 2, this.itsConstantPool.addConstant(j));
        this.itsFields.add(classFileField);
    }

    public void addILoad(int i) {
        xop(26, 21, i);
    }

    public void addIStore(int i) {
        xop(59, 54, i);
    }

    public void addInterface(String str) {
        this.itsInterfaces.add(Short.valueOf(this.itsConstantPool.addClass(str)));
    }

    public void addInvoke(int i, String str, String str2, String str3) {
        int sizeOfParameters = sizeOfParameters(str3);
        int stackChange = this.itsStackTop + ((short) sizeOfParameters) + stackChange(i);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
        }
        switch (i) {
            case 182:
            case 183:
            case 184:
            case 185:
                addToCodeBuffer(i);
                if (i == 185) {
                    addToCodeInt16(this.itsConstantPool.addInterfaceMethodRef(str, str2, str3));
                    addToCodeBuffer((sizeOfParameters >>> 16) + 1);
                    addToCodeBuffer(0);
                } else {
                    addToCodeInt16(this.itsConstantPool.addMethodRef(str, str2, str3));
                }
                short s = (short) stackChange;
                this.itsStackTop = s;
                if (stackChange > this.itsMaxStack) {
                    this.itsMaxStack = s;
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException("bad opcode for method reference");
        }
    }

    public void addLLoad(int i) {
        xop(30, 22, i);
    }

    public void addLStore(int i) {
        xop(63, 55, i);
    }

    public void addLineNumberEntry(short s) {
        if (this.itsCurrentMethod == null) {
            throw new IllegalArgumentException("No method to stop");
        }
        int i = this.itsLineNumberTableTop;
        if (i == 0) {
            this.itsLineNumberTable = new int[16];
        } else if (i == this.itsLineNumberTable.length) {
            int[] iArr = new int[i * 2];
            System.arraycopy(this.itsLineNumberTable, 0, iArr, 0, i);
            this.itsLineNumberTable = iArr;
        }
        this.itsLineNumberTable[i] = (this.itsCodeBufferTop << 16) + s;
        this.itsLineNumberTableTop = i + 1;
    }

    public void addLoadConstant(double d) {
        add(20, this.itsConstantPool.addConstant(d));
    }

    public void addLoadConstant(float f) {
        add(18, this.itsConstantPool.addConstant(f));
    }

    public void addLoadConstant(int i) {
        switch (i) {
            case 0:
                add(3);
                return;
            case 1:
                add(4);
                return;
            case 2:
                add(5);
                return;
            case 3:
                add(6);
                return;
            case 4:
                add(7);
                return;
            case 5:
                add(8);
                return;
            default:
                add(18, this.itsConstantPool.addConstant(i));
                return;
        }
    }

    public void addLoadConstant(long j) {
        add(20, this.itsConstantPool.addConstant(j));
    }

    public void addLoadConstant(String str) {
        add(18, this.itsConstantPool.addConstant(str));
    }

    public void addLoadThis() {
        add(42);
    }

    public void addPush(double d) {
        if (d == 0.0d) {
            add(14);
            if (1.0d / d < 0.0d) {
                add(119);
            }
        } else if (d == 1.0d || d == -1.0d) {
            add(15);
            if (d < 0.0d) {
                add(119);
            }
        } else {
            addLoadConstant(d);
        }
    }

    public void addPush(int i) {
        byte b = (byte) i;
        if (b != i) {
            short s = (short) i;
            if (s == i) {
                add(17, s);
            } else {
                addLoadConstant(i);
            }
        } else if (i == -1) {
            add(2);
        } else if (i < 0 || i > 5) {
            add(16, b);
        } else {
            add((byte) (i + 3));
        }
    }

    public void addPush(long j) {
        int i = (int) j;
        if (i == j) {
            addPush(i);
            add(133);
            return;
        }
        addLoadConstant(j);
    }

    public void addPush(String str) {
        int length = str.length();
        int i = 0;
        int utfEncodingLimit = this.itsConstantPool.getUtfEncodingLimit(str, 0, length);
        if (utfEncodingLimit == length) {
            addLoadConstant(str);
            return;
        }
        add(187, "java/lang/StringBuilder");
        add(89);
        addPush(length);
        addInvoke(183, "java/lang/StringBuilder", "<init>", "(I)V");
        while (true) {
            add(89);
            addLoadConstant(str.substring(i, utfEncodingLimit));
            addInvoke(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;");
            add(87);
            if (utfEncodingLimit == length) {
                addInvoke(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
                return;
            } else {
                utfEncodingLimit = this.itsConstantPool.getUtfEncodingLimit(str, utfEncodingLimit, length);
                i = utfEncodingLimit;
            }
        }
    }

    public void addPush(boolean z) {
        add(z ? 4 : 3);
    }

    public int addTableSwitch(int i, int i2) {
        if (i > i2) {
            throw new ClassFileFormatException("Bad bounds: " + i + ' ' + i2);
        }
        int stackChange = this.itsStackTop + stackChange(170);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
        }
        int i3 = (this.itsCodeBufferTop ^ (-1)) & 3;
        int addReservedCodeSpace = addReservedCodeSpace(i3 + 1 + (((i2 - i) + 1 + 3) * 4));
        int i4 = addReservedCodeSpace + 1;
        this.itsCodeBuffer[addReservedCodeSpace] = (byte) (-86);
        while (i3 != 0) {
            this.itsCodeBuffer[i4] = (byte) 0;
            i3--;
            i4++;
        }
        putInt32(i2, this.itsCodeBuffer, putInt32(i, this.itsCodeBuffer, i4 + 4));
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
        return addReservedCodeSpace;
    }

    public void addVariableDescriptor(String str, String str2, int i, int i2) {
        short addUtf8 = this.itsConstantPool.addUtf8(str);
        short addUtf82 = this.itsConstantPool.addUtf8(str2);
        if (this.itsVarDescriptors == null) {
            this.itsVarDescriptors = new ObjArray();
        }
        this.itsVarDescriptors.add(new int[]{addUtf8, addUtf82, i, i2});
    }

    public void adjustStackTop(int i) {
        int i2 = this.itsStackTop + i;
        if (i2 < 0 || 32767 < i2) {
            badStack(i2);
        }
        short s = (short) i2;
        this.itsStackTop = s;
        if (i2 > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char[] getCharBuffer(int i) {
        if (i > this.tmpCharBuffer.length) {
            int length = this.tmpCharBuffer.length * 2;
            if (i <= length) {
                i = length;
            }
            this.tmpCharBuffer = new char[i];
        }
        return this.tmpCharBuffer;
    }

    public final String getClassName() {
        return this.generatedClassName;
    }

    public int getCurrentCodeOffset() {
        return this.itsCodeBufferTop;
    }

    public int getLabelPC(int i) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i2 = i & Integer.MAX_VALUE;
        if (i2 < this.itsLabelTableTop) {
            return this.itsLabelTable[i2];
        }
        throw new IllegalArgumentException("Bad label");
    }

    public short getStackTop() {
        return this.itsStackTop;
    }

    public boolean isUnderStringSizeLimit(String str) {
        return this.itsConstantPool.isUnderUtfEncodingLimit(str);
    }

    public void markHandler(int i) {
        this.itsStackTop = (short) 1;
        markLabel(i);
    }

    public void markLabel(int i) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i2 = i & Integer.MAX_VALUE;
        if (i2 > this.itsLabelTableTop) {
            throw new IllegalArgumentException("Bad label");
        } else if (this.itsLabelTable[i2] != -1) {
            throw new IllegalStateException("Can only mark label once");
        } else {
            this.itsLabelTable[i2] = this.itsCodeBufferTop;
        }
    }

    public void markLabel(int i, short s) {
        markLabel(i);
        this.itsStackTop = s;
    }

    public final void markTableSwitchCase(int i, int i2) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(this.itsCodeBufferTop, i);
        setTableSwitchJump(i, i2, this.itsCodeBufferTop);
    }

    public final void markTableSwitchCase(int i, int i2, int i3) {
        if (i3 < 0 || i3 > this.itsMaxStack) {
            throw new IllegalArgumentException("Bad stack index: " + i3);
        }
        this.itsStackTop = (short) i3;
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(this.itsCodeBufferTop, i);
        setTableSwitchJump(i, i2, this.itsCodeBufferTop);
    }

    public final void markTableSwitchDefault(int i) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(this.itsCodeBufferTop, i);
        setTableSwitchJump(i, -1, this.itsCodeBufferTop);
    }

    public void setFlags(short s) {
        this.itsFlags = s;
    }

    public void setStackTop(short s) {
        this.itsStackTop = s;
    }

    public void setTableSwitchJump(int i, int i2, int i3) {
        if (i3 < 0 || i3 > this.itsCodeBufferTop) {
            throw new IllegalArgumentException("Bad jump target: " + i3);
        } else if (i2 < -1) {
            throw new IllegalArgumentException("Bad case index: " + i2);
        } else {
            int i4 = (i ^ (-1)) & 3;
            int i5 = i2 < 0 ? i + 1 + i4 : i + 1 + i4 + ((i2 + 3) * 4);
            if (i < 0 || i > ((this.itsCodeBufferTop - 16) - i4) - 1) {
                throw new IllegalArgumentException(i + " is outside a possible range of tableswitch in already generated code");
            } else if ((this.itsCodeBuffer[i] & 255) != 170) {
                throw new IllegalArgumentException(i + " is not offset of tableswitch statement");
            } else if (i5 < 0 || i5 + 4 > this.itsCodeBufferTop) {
                throw new ClassFileFormatException("Too big case index: " + i2);
            } else {
                putInt32(i3 - i, this.itsCodeBuffer, i5);
            }
        }
    }

    public void startMethod(String str, String str2, short s) {
        this.itsCurrentMethod = new ClassFileMethod(str, this.itsConstantPool.addUtf8(str), str2, this.itsConstantPool.addUtf8(str2), s);
        this.itsJumpFroms = new UintMap();
        this.itsMethods.add(this.itsCurrentMethod);
        addSuperBlockStart(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void stopMethod(short r13) {
        /*
            Method dump skipped, instructions count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.stopMethod(short):void");
    }

    public byte[] toByteArray() {
        int writeSize = getWriteSize();
        byte[] bArr = new byte[writeSize];
        short addUtf8 = this.itsSourceFileNameIndex != 0 ? this.itsConstantPool.addUtf8("SourceFile") : (short) 0;
        int putInt16 = putInt16(this.itsInterfaces.size(), bArr, putInt16(this.itsSuperClassIndex, bArr, putInt16(this.itsThisClassIndex, bArr, putInt16(this.itsFlags, bArr, this.itsConstantPool.write(bArr, putInt16(MajorVersion, bArr, putInt16(MinorVersion, bArr, putInt32(FileHeaderConstant, bArr, 0))))))));
        for (int i = 0; i < this.itsInterfaces.size(); i++) {
            putInt16 = putInt16(((Short) this.itsInterfaces.get(i)).shortValue(), bArr, putInt16);
        }
        int putInt162 = putInt16(this.itsFields.size(), bArr, putInt16);
        for (int i2 = 0; i2 < this.itsFields.size(); i2++) {
            putInt162 = ((ClassFileField) this.itsFields.get(i2)).write(bArr, putInt162);
        }
        int putInt163 = putInt16(this.itsMethods.size(), bArr, putInt162);
        for (int i3 = 0; i3 < this.itsMethods.size(); i3++) {
            putInt163 = ((ClassFileMethod) this.itsMethods.get(i3)).write(bArr, putInt163);
        }
        if ((this.itsSourceFileNameIndex != 0 ? putInt16(this.itsSourceFileNameIndex, bArr, putInt32(2, bArr, putInt16(addUtf8, bArr, putInt16(1, bArr, putInt163)))) : putInt16(0, bArr, putInt163)) == writeSize) {
            return bArr;
        }
        throw new RuntimeException();
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }
}
