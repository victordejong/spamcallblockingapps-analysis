package org.spongycastle.crypto.digests;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.engines.ThreefishEngine;
import org.spongycastle.crypto.params.SkeinParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SkeinEngine.class */
public class SkeinEngine implements Memoable {
    private static final Hashtable INITIAL_STATES = new Hashtable();
    private static final int PARAM_TYPE_CONFIG = 4;
    private static final int PARAM_TYPE_KEY = 0;
    private static final int PARAM_TYPE_MESSAGE = 48;
    private static final int PARAM_TYPE_OUTPUT = 63;
    public static final int SKEIN_1024 = 1024;
    public static final int SKEIN_256 = 256;
    public static final int SKEIN_512 = 512;
    long[] chain;
    private long[] initialState;
    private byte[] key;
    private final int outputSizeBytes;
    private Parameter[] postMessageParameters;
    private Parameter[] preMessageParameters;
    private final byte[] singleByte;
    final ThreefishEngine threefish;
    private final UBI ubi;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SkeinEngine$Configuration.class */
    public static class Configuration {
        private byte[] bytes = new byte[32];

        public Configuration(long j) {
            this.bytes[0] = (byte) 83;
            this.bytes[1] = (byte) 72;
            this.bytes[2] = (byte) 65;
            this.bytes[3] = (byte) 51;
            this.bytes[4] = (byte) 1;
            this.bytes[5] = (byte) 0;
            ThreefishEngine.wordToBytes(j, this.bytes, 8);
        }

        public byte[] getBytes() {
            return this.bytes;
        }
    }

    /* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SkeinEngine$Parameter.class */
    public static class Parameter {
        private int type;
        private byte[] value;

        public Parameter(int i, byte[] bArr) {
            this.type = i;
            this.value = bArr;
        }

        public int getType() {
            return this.type;
        }

        public byte[] getValue() {
            return this.value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SkeinEngine$UBI.class */
    public class UBI {
        private byte[] currentBlock;
        private int currentOffset;
        private long[] message;
        private final UbiTweak tweak = new UbiTweak();

        public UBI(int i) {
            this.currentBlock = new byte[i];
            this.message = new long[this.currentBlock.length / 8];
        }

        private void processBlock(long[] jArr) {
            SkeinEngine.this.threefish.init(true, SkeinEngine.this.chain, this.tweak.getWords());
            for (int i = 0; i < this.message.length; i++) {
                this.message[i] = ThreefishEngine.bytesToWord(this.currentBlock, i * 8);
            }
            SkeinEngine.this.threefish.processBlock(this.message, jArr);
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] ^ this.message[i2];
            }
        }

        public void doFinal(long[] jArr) {
            for (int i = this.currentOffset; i < this.currentBlock.length; i++) {
                this.currentBlock[i] = (byte) 0;
            }
            this.tweak.setFinal(true);
            processBlock(jArr);
        }

        public void reset(int i) {
            this.tweak.reset();
            this.tweak.setType(i);
            this.currentOffset = 0;
        }

        public void reset(UBI ubi) {
            this.currentBlock = Arrays.clone(ubi.currentBlock, this.currentBlock);
            this.currentOffset = ubi.currentOffset;
            this.message = Arrays.clone(ubi.message, this.message);
            this.tweak.reset(ubi.tweak);
        }

        public void update(byte[] bArr, int i, int i2, long[] jArr) {
            int i3 = 0;
            while (i2 > i3) {
                if (this.currentOffset == this.currentBlock.length) {
                    processBlock(jArr);
                    this.tweak.setFirst(false);
                    this.currentOffset = 0;
                }
                int min = Math.min(i2 - i3, this.currentBlock.length - this.currentOffset);
                System.arraycopy(bArr, i + i3, this.currentBlock, this.currentOffset, min);
                i3 += min;
                this.currentOffset += min;
                this.tweak.advancePosition(min);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SkeinEngine$UbiTweak.class */
    public static class UbiTweak {
        private static final long LOW_RANGE = 9223372034707292160L;
        private static final long T1_FINAL = Long.MIN_VALUE;
        private static final long T1_FIRST = 4611686018427387904L;
        private boolean extendedPosition;
        private long[] tweak = new long[2];

        public UbiTweak() {
            reset();
        }

        public void advancePosition(int i) {
            if (this.extendedPosition) {
                long[] jArr = new long[3];
                jArr[0] = this.tweak[0] & BodyPartID.bodyIdMax;
                jArr[1] = (this.tweak[0] >>> 32) & BodyPartID.bodyIdMax;
                jArr[2] = this.tweak[1] & BodyPartID.bodyIdMax;
                long j = i;
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    long j2 = j + jArr[i2];
                    jArr[i2] = j2;
                    j = j2 >>> 32;
                }
                this.tweak[0] = ((jArr[1] & BodyPartID.bodyIdMax) << 32) | (jArr[0] & BodyPartID.bodyIdMax);
                this.tweak[1] = (this.tweak[1] & (-4294967296L)) | (jArr[2] & BodyPartID.bodyIdMax);
                return;
            }
            long j3 = this.tweak[0] + i;
            this.tweak[0] = j3;
            if (j3 > LOW_RANGE) {
                this.extendedPosition = true;
            }
        }

        public int getType() {
            return (int) ((this.tweak[1] >>> 56) & 63);
        }

        public long[] getWords() {
            return this.tweak;
        }

        public boolean isFinal() {
            boolean z = true;
            if ((this.tweak[1] & Long.MIN_VALUE) == 0) {
                z = false;
            }
            return z;
        }

        public boolean isFirst() {
            boolean z = true;
            if ((this.tweak[1] & T1_FIRST) == 0) {
                z = false;
            }
            return z;
        }

        public void reset() {
            this.tweak[0] = 0;
            this.tweak[1] = 0;
            this.extendedPosition = false;
            setFirst(true);
        }

        public void reset(UbiTweak ubiTweak) {
            this.tweak = Arrays.clone(ubiTweak.tweak, this.tweak);
            this.extendedPosition = ubiTweak.extendedPosition;
        }

        public void setFinal(boolean z) {
            if (z) {
                long[] jArr = this.tweak;
                jArr[1] = jArr[1] | Long.MIN_VALUE;
                return;
            }
            long[] jArr2 = this.tweak;
            jArr2[1] = jArr2[1] & Long.MAX_VALUE;
        }

        public void setFirst(boolean z) {
            if (z) {
                long[] jArr = this.tweak;
                jArr[1] = jArr[1] | T1_FIRST;
                return;
            }
            long[] jArr2 = this.tweak;
            jArr2[1] = jArr2[1] & (-4611686018427387905L);
        }

        public void setType(int i) {
            this.tweak[1] = (this.tweak[1] & (-274877906944L)) | ((i & 63) << 56);
        }

        public String toString() {
            return getType() + " first: " + isFirst() + ", final: " + isFinal();
        }
    }

    static {
        initialState(256, 128, new long[]{-2228972824489528736L, -8629553674646093540L, 1155188648486244218L, -3677226592081559102L});
        initialState(256, 160, new long[]{1450197650740764312L, 3081844928540042640L, -3136097061834271170L, 3301952811952417661L});
        initialState(256, 224, new long[]{-4176654842910610933L, -8688192972455077604L, -7364642305011795836L, 4056579644589979102L});
        initialState(256, 256, new long[]{-243853671043386295L, 3443677322885453875L, -5531612722399640561L, 7662005193972177513L});
        initialState(512, 128, new long[]{-6288014694233956526L, 2204638249859346602L, 3502419045458743507L, -4829063503441264548L, 983504137758028059L, 1880512238245786339L, -6715892782214108542L, 7602827311880509485L});
        initialState(512, 160, new long[]{2934123928682216849L, -4399710721982728305L, 1684584802963255058L, 5744138295201861711L, 2444857010922934358L, -2807833639722848072L, -5121587834665610502L, 118355523173251694L});
        initialState(512, 224, new long[]{-3688341020067007964L, -3772225436291745297L, -8300862168937575580L, 4146387520469897396L, 1106145742801415120L, 7455425944880474941L, -7351063101234211863L, -7048981346965512457L});
        initialState(512, 384, new long[]{-6631894876634615969L, -5692838220127733084L, -7099962856338682626L, -2911352911530754598L, 2000907093792408677L, 9140007292425499655L, 6093301768906360022L, 2769176472213098488L});
        initialState(512, 512, new long[]{5261240102383538638L, 978932832955457283L, -8083517948103779378L, -7339365279355032399L, 6752626034097301424L, -1531723821829733388L, -7417126464950782685L, -5901786942805128141L});
    }

    public SkeinEngine(int i, int i2) {
        this.singleByte = new byte[1];
        if (i2 % 8 != 0) {
            throw new IllegalArgumentException("Output size must be a multiple of 8 bits. :" + i2);
        }
        this.outputSizeBytes = i2 / 8;
        this.threefish = new ThreefishEngine(i);
        this.ubi = new UBI(this.threefish.getBlockSize());
    }

    public SkeinEngine(SkeinEngine skeinEngine) {
        this(skeinEngine.getBlockSize() * 8, skeinEngine.getOutputSize() * 8);
        copyIn(skeinEngine);
    }

    private void checkInitialised() {
        if (this.ubi == null) {
            throw new IllegalArgumentException("Skein engine is not initialised.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
        if (r7.length != r6.length) goto L_0x0013;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.spongycastle.crypto.digests.SkeinEngine.Parameter[] clone(org.spongycastle.crypto.digests.SkeinEngine.Parameter[] r6, org.spongycastle.crypto.digests.SkeinEngine.Parameter[] r7) {
        /*
            r0 = r6
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r7
            if (r0 == 0) goto L_0x0013
            r0 = r7
            r8 = r0
            r0 = r7
            int r0 = r0.length
            r1 = r6
            int r1 = r1.length
            if (r0 == r1) goto L_0x0019
        L_0x0013:
            r0 = r6
            int r0 = r0.length
            org.spongycastle.crypto.digests.SkeinEngine$Parameter[] r0 = new org.spongycastle.crypto.digests.SkeinEngine.Parameter[r0]
            r8 = r0
        L_0x0019:
            r0 = r6
            r1 = 0
            r2 = r8
            r3 = 0
            r4 = r8
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.digests.SkeinEngine.clone(org.spongycastle.crypto.digests.SkeinEngine$Parameter[], org.spongycastle.crypto.digests.SkeinEngine$Parameter[]):org.spongycastle.crypto.digests.SkeinEngine$Parameter[]");
    }

    private void copyIn(SkeinEngine skeinEngine) {
        this.ubi.reset(skeinEngine.ubi);
        this.chain = Arrays.clone(skeinEngine.chain, this.chain);
        this.initialState = Arrays.clone(skeinEngine.initialState, this.initialState);
        this.key = Arrays.clone(skeinEngine.key, this.key);
        this.preMessageParameters = clone(skeinEngine.preMessageParameters, this.preMessageParameters);
        this.postMessageParameters = clone(skeinEngine.postMessageParameters, this.postMessageParameters);
    }

    private void createInitialState() {
        long[] jArr = (long[]) INITIAL_STATES.get(variantIdentifier(getBlockSize(), getOutputSize()));
        if (this.key != null || jArr == null) {
            this.chain = new long[getBlockSize() / 8];
            if (this.key != null) {
                ubiComplete(0, this.key);
            }
            ubiComplete(4, new Configuration(this.outputSizeBytes * 8).getBytes());
        } else {
            this.chain = Arrays.clone(jArr);
        }
        if (this.preMessageParameters != null) {
            for (int i = 0; i < this.preMessageParameters.length; i++) {
                Parameter parameter = this.preMessageParameters[i];
                ubiComplete(parameter.getType(), parameter.getValue());
            }
        }
        this.initialState = Arrays.clone(this.chain);
    }

    private void initParams(Hashtable hashtable) {
        Enumeration keys = hashtable.keys();
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            byte[] bArr = (byte[]) hashtable.get(num);
            if (num.intValue() == 0) {
                this.key = bArr;
            } else if (num.intValue() < 48) {
                vector.addElement(new Parameter(num.intValue(), bArr));
            } else {
                vector2.addElement(new Parameter(num.intValue(), bArr));
            }
        }
        this.preMessageParameters = new Parameter[vector.size()];
        vector.copyInto(this.preMessageParameters);
        sort(this.preMessageParameters);
        this.postMessageParameters = new Parameter[vector2.size()];
        vector2.copyInto(this.postMessageParameters);
        sort(this.postMessageParameters);
    }

    private static void initialState(int i, int i2, long[] jArr) {
        INITIAL_STATES.put(variantIdentifier(i / 8, i2 / 8), jArr);
    }

    private void output(long j, byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[8];
        ThreefishEngine.wordToBytes(j, bArr2, 0);
        long[] jArr = new long[this.chain.length];
        ubiInit(63);
        this.ubi.update(bArr2, 0, bArr2.length, jArr);
        this.ubi.doFinal(jArr);
        int i3 = ((i2 + 8) - 1) / 8;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * 8;
            int min = Math.min(8, i2 - i5);
            if (min == 8) {
                ThreefishEngine.wordToBytes(jArr[i4], bArr, i5 + i);
            } else {
                ThreefishEngine.wordToBytes(jArr[i4], bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i5 + i, min);
            }
        }
    }

    private static void sort(Parameter[] parameterArr) {
        if (parameterArr != null) {
            for (int i = 1; i < parameterArr.length; i++) {
                Parameter parameter = parameterArr[i];
                int i2 = i;
                while (i2 > 0) {
                    int type = parameter.getType();
                    int i3 = i2 - 1;
                    if (type < parameterArr[i3].getType()) {
                        parameterArr[i2] = parameterArr[i3];
                        i2 = i3;
                    }
                }
                parameterArr[i2] = parameter;
            }
        }
    }

    private void ubiComplete(int i, byte[] bArr) {
        ubiInit(i);
        this.ubi.update(bArr, 0, bArr.length, this.chain);
        ubiFinal();
    }

    private void ubiFinal() {
        this.ubi.doFinal(this.chain);
    }

    private void ubiInit(int i) {
        this.ubi.reset(i);
    }

    private static Integer variantIdentifier(int i, int i2) {
        return new Integer(i | (i2 << 16));
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new SkeinEngine(this);
    }

    public int doFinal(byte[] bArr, int i) {
        checkInitialised();
        if (bArr.length < this.outputSizeBytes + i) {
            throw new OutputLengthException("Output buffer is too short to hold output");
        }
        ubiFinal();
        if (this.postMessageParameters != null) {
            for (int i2 = 0; i2 < this.postMessageParameters.length; i2++) {
                Parameter parameter = this.postMessageParameters[i2];
                ubiComplete(parameter.getType(), parameter.getValue());
            }
        }
        int blockSize = getBlockSize();
        int i3 = ((this.outputSizeBytes + blockSize) - 1) / blockSize;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * blockSize;
            output(i4, bArr, i + i5, Math.min(blockSize, this.outputSizeBytes - i5));
        }
        reset();
        return this.outputSizeBytes;
    }

    public int getBlockSize() {
        return this.threefish.getBlockSize();
    }

    public int getOutputSize() {
        return this.outputSizeBytes;
    }

    public void init(SkeinParameters skeinParameters) {
        this.chain = null;
        this.key = null;
        this.preMessageParameters = null;
        this.postMessageParameters = null;
        if (skeinParameters != null) {
            if (skeinParameters.getKey().length < 16) {
                throw new IllegalArgumentException("Skein key must be at least 128 bits.");
            }
            initParams(skeinParameters.getParameters());
        }
        createInitialState();
        ubiInit(48);
    }

    public void reset() {
        System.arraycopy(this.initialState, 0, this.chain, 0, this.chain.length);
        ubiInit(48);
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        SkeinEngine skeinEngine = (SkeinEngine) memoable;
        if (getBlockSize() == skeinEngine.getBlockSize() && this.outputSizeBytes == skeinEngine.outputSizeBytes) {
            copyIn(skeinEngine);
            return;
        }
        throw new IllegalArgumentException("Incompatible parameters in provided SkeinEngine.");
    }

    public void update(byte b) {
        this.singleByte[0] = b;
        update(this.singleByte, 0, 1);
    }

    public void update(byte[] bArr, int i, int i2) {
        checkInitialised();
        this.ubi.update(bArr, i, i2, this.chain);
    }
}
