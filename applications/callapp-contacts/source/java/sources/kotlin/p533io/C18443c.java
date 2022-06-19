package kotlin.p533io;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.C20128v;
import kotlin.C20130x;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18262b;
import kotlin.p531g.AbstractC18378h;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u00128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bJ \u0010\f\u001a\u00020��2\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R@\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, m4298d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", EventConstants.START, "direction", "Lkotlin/io/FileWalkDirection;", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "onEnter", "Lkotlin/Function1;", "", "onLeave", "", "onFail", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "f", "Ljava/io/IOException;", "e", "maxDepth", "", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "iterator", "", "depth", "function", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.io.c */
/* loaded from: classes5-dex2jar.jar:kotlin/io/c.class */
public final class C18443c implements AbstractC18378h<File> {

    /* renamed from: a */
    private final File f63561a;

    /* renamed from: b */
    private final EnumC18451e f63562b;

    /* renamed from: c */
    private final Function1<File, Boolean> f63563c;

    /* renamed from: d */
    private final Function1<File, C20128v> f63564d;

    /* renamed from: e */
    private final Function2<File, IOException, C20128v> f63565e;

    /* renamed from: f */
    private final int f63566f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\"\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.io.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$a.class */
    public static abstract class AbstractC18444a extends AbstractC18449c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC18444a(File rootDir) {
            super(rootDir);
            C18524p.m3840d(rootDir, "rootDir");
            if (C20130x.f66532a) {
                boolean isDirectory = rootDir.isDirectory();
                if (C20130x.f66532a && !isDirectory) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.io.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b.class */
    public final class C18445b extends AbstractC18262b<File> {

        /* renamed from: b */
        private final ArrayDeque<AbstractC18449c> f63568b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "failed", "", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "step", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.io.c$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$a.class */
        public final class C18446a extends AbstractC18444a {

            /* renamed from: a */
            final /* synthetic */ C18445b f63569a;

            /* renamed from: c */
            private boolean f63570c;

            /* renamed from: d */
            private File[] f63571d;

            /* renamed from: e */
            private int f63572e;

            /* renamed from: f */
            private boolean f63573f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18446a(C18445b c18445b, File rootDir) {
                super(rootDir);
                C18524p.m3840d(rootDir, "rootDir");
                this.f63569a = c18445b;
            }

            @Override // kotlin.p533io.C18443c.AbstractC18449c
            /* renamed from: a */
            public final File mo3899a() {
                if (!this.f63573f && this.f63571d == null) {
                    Function1 function1 = C18443c.this.f63563c;
                    if (function1 != null && !((Boolean) function1.invoke(this.f63580b)).booleanValue()) {
                        return null;
                    }
                    File[] listFiles = this.f63580b.listFiles();
                    this.f63571d = listFiles;
                    if (listFiles == null) {
                        Function2 function2 = C18443c.this.f63565e;
                        if (function2 != null) {
                            function2.invoke(this.f63580b, new AccessDeniedException(this.f63580b, null, "Cannot list files in a directory", 2, null));
                        }
                        this.f63573f = true;
                    }
                }
                File[] fileArr = this.f63571d;
                if (fileArr != null) {
                    int i = this.f63572e;
                    C18524p.m3851a(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.f63571d;
                        C18524p.m3851a(fileArr2);
                        int i2 = this.f63572e;
                        this.f63572e = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (!this.f63570c) {
                    this.f63570c = true;
                    return this.f63580b;
                }
                Function1 function12 = C18443c.this.f63564d;
                if (function12 == null) {
                    return null;
                }
                function12.invoke(this.f63580b);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootFile", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "visited", "", "step", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.io.c$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$b.class */
        public final class C18447b extends AbstractC18449c {

            /* renamed from: a */
            final /* synthetic */ C18445b f63574a;

            /* renamed from: c */
            private boolean f63575c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18447b(C18445b c18445b, File rootFile) {
                super(rootFile);
                C18524p.m3840d(rootFile, "rootFile");
                this.f63574a = c18445b;
                if (C20130x.f66532a) {
                    boolean isFile = rootFile.isFile();
                    if (C20130x.f66532a && !isFile) {
                        throw new AssertionError("rootFile must be verified to be file beforehand.");
                    }
                }
            }

            @Override // kotlin.p533io.C18443c.AbstractC18449c
            /* renamed from: a */
            public final File mo3899a() {
                if (this.f63575c) {
                    return null;
                }
                this.f63575c = true;
                return this.f63580b;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "", "step", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.io.c$b$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$c.class */
        public final class C18448c extends AbstractC18444a {

            /* renamed from: a */
            final /* synthetic */ C18445b f63576a;

            /* renamed from: c */
            private boolean f63577c;

            /* renamed from: d */
            private File[] f63578d;

            /* renamed from: e */
            private int f63579e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18448c(C18445b c18445b, File rootDir) {
                super(rootDir);
                C18524p.m3840d(rootDir, "rootDir");
                this.f63576a = c18445b;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x00bd, code lost:
                if (r0.length == 0) goto L30;
             */
            @Override // kotlin.p533io.C18443c.AbstractC18449c
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.io.File mo3899a() {
                /*
                    Method dump skipped, instructions count: 245
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.p533io.C18443c.C18445b.C18448c.mo3899a():java.io.File");
            }
        }

        public C18445b() {
            C18443c.this = r7;
            ArrayDeque<AbstractC18449c> arrayDeque = new ArrayDeque<>();
            this.f63568b = arrayDeque;
            if (r7.f63561a.isDirectory()) {
                arrayDeque.push(m3900a(r7.f63561a));
            } else if (r7.f63561a.isFile()) {
                arrayDeque.push(new C18447b(this, r7.f63561a));
            } else {
                m4234b();
            }
        }

        /* renamed from: a */
        private final AbstractC18444a m3900a(File file) {
            int i = C18450d.f63581a[C18443c.this.f63562b.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                return new C18446a(this, file);
            }
            return new C18448c(this, file);
        }

        @Override // kotlin.p518a.AbstractC18262b
        /* renamed from: a */
        public final void mo3901a() {
            File file;
            while (true) {
                AbstractC18449c peek = this.f63568b.peek();
                if (peek != null) {
                    file = peek.mo3899a();
                    if (file != null) {
                        if (C18524p.m3850a(file, peek.f63580b) || !file.isDirectory() || this.f63568b.size() >= C18443c.this.f63566f) {
                            break;
                        }
                        this.f63568b.push(m3900a(file));
                    } else {
                        this.f63568b.pop();
                    }
                } else {
                    file = null;
                    break;
                }
            }
            if (file != null) {
                m4235a((C18445b) file);
            } else {
                m4234b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\"\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, m4298d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "", "root", "Ljava/io/File;", "(Ljava/io/File;)V", "getRoot", "()Ljava/io/File;", "step", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.io.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$c.class */
    public static abstract class AbstractC18449c {

        /* renamed from: b */
        final File f63580b;

        public AbstractC18449c(File root) {
            C18524p.m3840d(root, "root");
            this.f63580b = root;
        }

        /* renamed from: a */
        public abstract File mo3899a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18443c(File start, EnumC18451e direction) {
        this(start, direction, null, null, null, 0, 32, null);
        C18524p.m3840d(start, "start");
        C18524p.m3840d(direction, "direction");
    }

    public /* synthetic */ C18443c(File file, EnumC18451e enumC18451e, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? EnumC18451e.TOP_DOWN : enumC18451e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C18443c(File file, EnumC18451e enumC18451e, Function1<? super File, Boolean> function1, Function1<? super File, C20128v> function12, Function2<? super File, ? super IOException, C20128v> function2, int i) {
        this.f63561a = file;
        this.f63562b = enumC18451e;
        this.f63563c = function1;
        this.f63564d = function12;
        this.f63565e = function2;
        this.f63566f = i;
    }

    /* synthetic */ C18443c(File file, EnumC18451e enumC18451e, Function1 function1, Function1 function12, Function2 function2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i2 & 2) != 0 ? EnumC18451e.TOP_DOWN : enumC18451e, function1, function12, function2, (i2 & 32) != 0 ? Integer.MAX_VALUE : i);
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<File> mo3908a() {
        return new C18445b();
    }
}
