package kotlin.io;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.g.h;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlin.x;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0089\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\b\u00128\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\bJ \u0010\f\u001a\u00020��2\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020��2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R@\u0010\f\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lkotlin/io/FileTreeWalk;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", EventConstants.START, "direction", "Lkotlin/io/FileWalkDirection;", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V", "onEnter", "Lkotlin/Function1;", "", "onLeave", "", "onFail", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "f", "Ljava/io/IOException;", "e", "maxDepth", "", "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "iterator", "", "depth", "function", "DirectoryState", "FileTreeWalkIterator", "WalkState", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/io/c.class */
public final class c implements h<File> {

    /* renamed from: a  reason: collision with root package name */
    private final File f36757a;

    /* renamed from: b  reason: collision with root package name */
    private final e f36758b;

    /* renamed from: c  reason: collision with root package name */
    private final Function1<File, Boolean> f36759c;

    /* renamed from: d  reason: collision with root package name */
    private final Function1<File, v> f36760d;
    private final Function2<File, IOException, v> e;
    private final int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\"\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$a.class */
    public static abstract class a extends AbstractC0613c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File rootDir) {
            super(rootDir);
            p.d(rootDir, "rootDir");
            if (x.f38657a) {
                boolean isDirectory = rootDir.isDirectory();
                if (x.f38657a && !isDirectory) {
                    throw new AssertionError("rootDir must be verified to be directory beforehand.");
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "Ljava/util/ArrayDeque;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b.class */
    final class b extends kotlin.a.b<File> {

        /* renamed from: b  reason: collision with root package name */
        private final ArrayDeque<AbstractC0613c> f36762b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "failed", "", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "step", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$a.class */
        public final class a extends a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f36763a;

            /* renamed from: c  reason: collision with root package name */
            private boolean f36764c;

            /* renamed from: d  reason: collision with root package name */
            private File[] f36765d;
            private int e;
            private boolean f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, File rootDir) {
                super(rootDir);
                p.d(rootDir, "rootDir");
                this.f36763a = bVar;
            }

            @Override // kotlin.io.c.AbstractC0613c
            public final File a() {
                if (!this.f && this.f36765d == null) {
                    Function1 function1 = c.this.f36759c;
                    if (function1 != null && !((Boolean) function1.invoke(this.f36771b)).booleanValue()) {
                        return null;
                    }
                    File[] listFiles = this.f36771b.listFiles();
                    this.f36765d = listFiles;
                    if (listFiles == null) {
                        Function2 function2 = c.this.e;
                        if (function2 != null) {
                            function2.invoke(this.f36771b, new AccessDeniedException(this.f36771b, null, "Cannot list files in a directory", 2, null));
                        }
                        this.f = true;
                    }
                }
                File[] fileArr = this.f36765d;
                if (fileArr != null) {
                    int i = this.e;
                    p.a(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.f36765d;
                        p.a(fileArr2);
                        int i2 = this.e;
                        this.e = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (!this.f36764c) {
                    this.f36764c = true;
                    return this.f36771b;
                }
                Function1 function12 = c.this.f36760d;
                if (function12 == null) {
                    return null;
                }
                function12.invoke(this.f36771b);
                return null;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootFile", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "visited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.io.c$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$b.class */
        final class C0611b extends AbstractC0613c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f36766a;

            /* renamed from: c  reason: collision with root package name */
            private boolean f36767c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0611b(b bVar, File rootFile) {
                super(rootFile);
                p.d(rootFile, "rootFile");
                this.f36766a = bVar;
                if (x.f38657a) {
                    boolean isFile = rootFile.isFile();
                    if (x.f38657a && !isFile) {
                        throw new AssertionError("rootFile must be verified to be file beforehand.");
                    }
                }
            }

            @Override // kotlin.io.c.AbstractC0613c
            public final File a() {
                if (this.f36767c) {
                    return null;
                }
                this.f36767c = true;
                return this.f36771b;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.io.c$b$c  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/io/c$b$c.class */
        public final class C0612c extends a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f36768a;

            /* renamed from: c  reason: collision with root package name */
            private boolean f36769c;

            /* renamed from: d  reason: collision with root package name */
            private File[] f36770d;
            private int e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0612c(b bVar, File rootDir) {
                super(rootDir);
                p.d(rootDir, "rootDir");
                this.f36768a = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x00bd, code lost:
                if (r0.length == 0) goto L_0x00c0;
             */
            @Override // kotlin.io.c.AbstractC0613c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.io.File a() {
                /*
                    Method dump skipped, instructions count: 245
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.c.b.C0612c.a():java.io.File");
            }
        }

        public b() {
            ArrayDeque<AbstractC0613c> arrayDeque = new ArrayDeque<>();
            this.f36762b = arrayDeque;
            if (c.this.f36757a.isDirectory()) {
                arrayDeque.push(a(c.this.f36757a));
            } else if (c.this.f36757a.isFile()) {
                arrayDeque.push(new C0611b(this, c.this.f36757a));
            } else {
                b();
            }
        }

        private final a a(File file) {
            int i = d.f36772a[c.this.f36758b.ordinal()];
            if (i == 1) {
                return new C0612c(this, file);
            }
            if (i == 2) {
                return new a(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }

        @Override // kotlin.a.b
        public final void a() {
            File file;
            while (true) {
                AbstractC0613c peek = this.f36762b.peek();
                if (peek != null) {
                    file = peek.a();
                    if (file != null) {
                        if (p.a(file, peek.f36771b) || !file.isDirectory() || this.f36762b.size() >= c.this.f) {
                            break;
                        }
                        this.f36762b.push(a(file));
                    } else {
                        this.f36762b.pop();
                    }
                } else {
                    file = null;
                    break;
                }
            }
            if (file != null) {
                a((b) file);
            } else {
                b();
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\"\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$WalkState;", "", "root", "Ljava/io/File;", "(Ljava/io/File;)V", "getRoot", "()Ljava/io/File;", "step", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.io.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/io/c$c.class */
    static abstract class AbstractC0613c {

        /* renamed from: b  reason: collision with root package name */
        final File f36771b;

        public AbstractC0613c(File root) {
            p.d(root, "root");
            this.f36771b = root;
        }

        public abstract File a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(File start, e direction) {
        this(start, direction, null, null, null, 0, 32, null);
        p.d(start, "start");
        p.d(direction, "direction");
    }

    public /* synthetic */ c(File file, e eVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i & 2) != 0 ? e.TOP_DOWN : eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c(File file, e eVar, Function1<? super File, Boolean> function1, Function1<? super File, v> function12, Function2<? super File, ? super IOException, v> function2, int i) {
        this.f36757a = file;
        this.f36758b = eVar;
        this.f36759c = function1;
        this.f36760d = function12;
        this.e = function2;
        this.f = i;
    }

    /* synthetic */ c(File file, e eVar, Function1 function1, Function1 function12, Function2 function2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i2 & 2) != 0 ? e.TOP_DOWN : eVar, function1, function12, function2, (i2 & 32) != 0 ? Integer.MAX_VALUE : i);
    }

    @Override // kotlin.g.h
    public final Iterator<File> a() {
        return new b();
    }
}
