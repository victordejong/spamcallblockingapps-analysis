package kotlin.p009io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin._Assertions;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u0001:\u0003$%&B\u001b\b\u0010\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b!\u0010\"B\u008b\u0001\b\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0011\u0018\u00010\n\u00128\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b!\u0010#J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u00020��2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0012\u001a\u00020��2\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0014\u001a\u00020��2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00110\n¢\u0006\u0004\b\u0014\u0010\u000eR\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\b\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0018R$\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0019RH\u0010\u0012\u001a4\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001eR$\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0011\u0018\u00010\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006'"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "", "Ljava/io/File;", "iterator", "()Ljava/util/Iterator;", "", "depth", "maxDepth", "(I)Lkotlin/io/FileTreeWalk;", "Lkotlin/Function1;", "", "function", "onEnter", "(Lkotlin/Function1;)Lkotlin/io/FileTreeWalk;", "Lkotlin/Function2;", "Ljava/io/IOException;", "", "onFail", "(Lkotlin/Function2;)Lkotlin/io/FileTreeWalk;", "onLeave", "Lkotlin/io/FileWalkDirection;", "direction", "Lkotlin/io/FileWalkDirection;", "I", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "f", "e", "Lkotlin/Function2;", "start", "Ljava/io/File;", "<init>", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.FileTreeWalk */
/* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk.class */
public final class FileTreeWalk implements Sequence<File> {

    /* renamed from: a */
    private final File f20679a;

    /* renamed from: b */
    private final FileWalkDirection f20680b;

    /* renamed from: c */
    private final Function1<File, Boolean> f20681c;

    /* renamed from: d */
    private final Function1<File, Unit> f20682d;

    /* renamed from: e */
    private final Function2<File, IOException, Unit> f20683e;

    /* renamed from: f */
    private final int f20684f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\"\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "kotlin/io/FileTreeWalk$WalkState", "Ljava/io/File;", "rootDir", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlin.io.FileTreeWalk$DirectoryState */
    /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$DirectoryState.class */
    public static abstract class DirectoryState extends WalkState {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DirectoryState(@NotNull File rootDir) {
            super(rootDir);
            Intrinsics.m1830e(rootDir, "rootDir");
            if (_Assertions.f20450a) {
                boolean isDirectory = rootDir.isDirectory();
                if (_Assertions.f20450a && !isDirectory) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0004\u0018��2\u00020\u0001:\u0003\u0012\u0013\u0014B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0082\u0010¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "", "computeNext", "()V", "Ljava/io/File;", "root", "Lkotlin/io/FileTreeWalk$DirectoryState;", "directoryState", "(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;", "gotoNext", "()Ljava/io/File;", "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "state", "Ljava/util/ArrayDeque;", "<init>", "(Lkotlin/io/FileTreeWalk;)V", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlin.io.FileTreeWalk$FileTreeWalkIterator */
    /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$FileTreeWalkIterator.class */
    private final class FileTreeWalkIterator extends AbstractIterator<File> {

        /* renamed from: h */
        private final ArrayDeque<WalkState> f20685h = new ArrayDeque<>();

        /* JADX INFO: Access modifiers changed from: private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0082\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0007¨\u0006\u0012"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "kotlin/io/FileTreeWalk$DirectoryState", "Ljava/io/File;", "step", "()Ljava/io/File;", "", "failed", "Z", "", "fileIndex", "I", "", "fileList", "[Ljava/io/File;", "rootVisited", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: kotlin.io.FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState */
        /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState.class */
        public final class BottomUpDirectoryState extends DirectoryState {

            /* renamed from: b */
            private boolean f20687b;

            /* renamed from: c */
            private File[] f20688c;

            /* renamed from: d */
            private int f20689d;

            /* renamed from: e */
            private boolean f20690e;

            /* renamed from: f */
            final /* synthetic */ FileTreeWalkIterator f20691f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public BottomUpDirectoryState(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.m1830e(rootDir, "rootDir");
                this.f20691f = fileTreeWalkIterator;
            }

            @Override // kotlin.p009io.FileTreeWalk.WalkState
            @Nullable
            /* renamed from: b */
            public File mo1875b() {
                if (!this.f20690e && this.f20688c == null) {
                    Function1 function1 = FileTreeWalk.this.f20681c;
                    if (function1 != null && !((Boolean) function1.invoke(m1876a())).booleanValue()) {
                        return null;
                    }
                    File[] listFiles = m1876a().listFiles();
                    this.f20688c = listFiles;
                    if (listFiles == null) {
                        Function2 function2 = FileTreeWalk.this.f20683e;
                        if (function2 != null) {
                            Unit unit = (Unit) function2.mo422o(m1876a(), new AccessDeniedException(m1876a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f20690e = true;
                    }
                }
                File[] fileArr = this.f20688c;
                if (fileArr != null) {
                    int i = this.f20689d;
                    Intrinsics.m1832c(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.f20688c;
                        Intrinsics.m1832c(fileArr2);
                        int i2 = this.f20689d;
                        this.f20689d = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (!this.f20687b) {
                    this.f20687b = true;
                    return m1876a();
                }
                Function1 function12 = FileTreeWalk.this.f20682d;
                if (function12 == null) {
                    return null;
                }
                Unit unit2 = (Unit) function12.invoke(m1876a());
                return null;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0082\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "kotlin/io/FileTreeWalk$WalkState", "Ljava/io/File;", "step", "()Ljava/io/File;", "", "visited", "Z", "rootFile", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: kotlin.io.FileTreeWalk$FileTreeWalkIterator$SingleFileState */
        /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState.class */
        private final class SingleFileState extends WalkState {

            /* renamed from: b */
            private boolean f20692b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SingleFileState(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootFile) {
                super(rootFile);
                Intrinsics.m1830e(rootFile, "rootFile");
                if (_Assertions.f20450a) {
                    boolean isFile = rootFile.isFile();
                    if (_Assertions.f20450a && !isFile) {
                        throw new AssertionError("rootFile must be verified to be file beforehand.");
                    }
                }
            }

            @Override // kotlin.p009io.FileTreeWalk.WalkState
            @Nullable
            /* renamed from: b */
            public File mo1875b() {
                if (this.f20692b) {
                    return null;
                }
                this.f20692b = true;
                return m1876a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0082\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "kotlin/io/FileTreeWalk$DirectoryState", "Ljava/io/File;", "step", "()Ljava/io/File;", "", "fileIndex", "I", "", "fileList", "[Ljava/io/File;", "", "rootVisited", "Z", "rootDir", "<init>", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: kotlin.io.FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState */
        /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState.class */
        public final class TopDownDirectoryState extends DirectoryState {

            /* renamed from: b */
            private boolean f20693b;

            /* renamed from: c */
            private File[] f20694c;

            /* renamed from: d */
            private int f20695d;

            /* renamed from: e */
            final /* synthetic */ FileTreeWalkIterator f20696e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TopDownDirectoryState(@NotNull FileTreeWalkIterator fileTreeWalkIterator, File rootDir) {
                super(rootDir);
                Intrinsics.m1830e(rootDir, "rootDir");
                this.f20696e = fileTreeWalkIterator;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x00c3, code lost:
                if (r0.length == 0) goto L_0x00c6;
             */
            @Override // kotlin.p009io.FileTreeWalk.WalkState
            @org.jetbrains.annotations.Nullable
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.io.File mo1875b() {
                /*
                    Method dump skipped, instructions count: 254
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.p009io.FileTreeWalk.FileTreeWalkIterator.TopDownDirectoryState.mo1875b():java.io.File");
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* renamed from: kotlin.io.FileTreeWalk$FileTreeWalkIterator$WhenMappings */
        /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$FileTreeWalkIterator$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a */
            public static final /* synthetic */ int[] f20697a;

            static {
                int[] iArr = new int[FileWalkDirection.values().length];
                f20697a = iArr;
                iArr[FileWalkDirection.TOP_DOWN.ordinal()] = 1;
                f20697a[FileWalkDirection.BOTTOM_UP.ordinal()] = 2;
            }
        }

        public FileTreeWalkIterator() {
            if (FileTreeWalk.this.f20679a.isDirectory()) {
                this.f20685h.push(m1878f(FileTreeWalk.this.f20679a));
            } else if (FileTreeWalk.this.f20679a.isFile()) {
                this.f20685h.push(new SingleFileState(this, FileTreeWalk.this.f20679a));
            } else {
                m2376b();
            }
        }

        /* renamed from: f */
        private final DirectoryState m1878f(File file) {
            DirectoryState directoryState;
            int i = WhenMappings.f20697a[FileTreeWalk.this.f20680b.ordinal()];
            if (i == 1) {
                directoryState = new TopDownDirectoryState(this, file);
            } else if (i == 2) {
                directoryState = new BottomUpDirectoryState(this, file);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return directoryState;
        }

        /* renamed from: g */
        private final File m1877g() {
            File b;
            while (true) {
                WalkState peek = this.f20685h.peek();
                if (peek == null) {
                    return null;
                }
                b = peek.mo1875b();
                if (b == null) {
                    this.f20685h.pop();
                } else if (Intrinsics.m1834a(b, peek.m1876a()) || !b.isDirectory() || this.f20685h.size() >= FileTreeWalk.this.f20684f) {
                    break;
                } else {
                    this.f20685h.push(m1878f(b));
                }
            }
            return b;
        }

        @Override // kotlin.collections.AbstractIterator
        /* renamed from: a */
        protected void mo1672a() {
            File g = m1877g();
            if (g != null) {
                m2375c(g);
            } else {
                m2376b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\"\u0018��B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\u0002\u001a\u0004\u0018\u00010\u0001H&¢\u0006\u0004\b\u0002\u0010\u0003R\u0019\u0010\u0004\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0003¨\u0006\t"}, d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "Ljava/io/File;", "step", "()Ljava/io/File;", "root", "Ljava/io/File;", "getRoot", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlin.io.FileTreeWalk$WalkState */
    /* loaded from: classes2-dex2jar.jar:kotlin/io/FileTreeWalk$WalkState.class */
    public static abstract class WalkState {
        @NotNull

        /* renamed from: a */
        private final File f20698a;

        public WalkState(@NotNull File root) {
            Intrinsics.m1830e(root, "root");
            this.f20698a = root;
        }

        @NotNull
        /* renamed from: a */
        public final File m1876a() {
            return this.f20698a;
        }

        @Nullable
        /* renamed from: b */
        public abstract File mo1875b();
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<File> iterator() {
        return new FileTreeWalkIterator();
    }
}
