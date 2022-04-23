package p081h.p203i.p316b.p320d;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import p081h.p203i.p316b.p317a.AbstractC9296h;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p318b.AbstractC9358z;
import p081h.p203i.p316b.p319c.AbstractC9359a;
/* renamed from: h.i.b.d.h */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/h.class */
public final class C9372h {

    /* renamed from: h.i.b.d.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/h$a.class */
    public static final class C9373a extends AbstractC9358z<File> {
        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    }

    /* renamed from: h.i.b.d.h$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/h$b.class */
    public static final class C9374b implements AbstractC9359a<File> {
    }

    /* renamed from: h.i.b.d.h$c */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/h$c.class */
    public static final class C9375c extends AbstractC9360a {

        /* renamed from: a */
        public final File f21411a;

        public C9375c(File file) {
            C9301k.m15478a(file);
            this.f21411a = file;
        }

        public /* synthetic */ C9375c(File file, C9371g gVar) {
            this(file);
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9360a
        /* renamed from: a */
        public FileInputStream mo15348a() throws IOException {
            return new FileInputStream(this.f21411a);
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9360a
        /* renamed from: b */
        public byte[] mo15347b() throws IOException {
            C9367f a = C9367f.m15356a();
            try {
                FileInputStream a2 = mo15348a();
                a.m15355a((C9367f) a2);
                FileInputStream fileInputStream = a2;
                return C9362b.m15365a(fileInputStream, fileInputStream.getChannel().size());
            } catch (Throwable th) {
                try {
                    a.m15354a(th);
                    throw null;
                } finally {
                    a.close();
                }
            }
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9360a
        /* renamed from: c */
        public AbstractC9296h<Long> mo15346c() {
            return this.f21411a.isFile() ? AbstractC9296h.m15486a(Long.valueOf(this.f21411a.length())) : AbstractC9296h.m15485c();
        }

        public String toString() {
            return "Files.asByteSource(" + this.f21411a + ")";
        }
    }

    static {
        new C9373a();
        new C9374b();
    }

    /* renamed from: a */
    public static AbstractC9360a m15350a(File file) {
        return new C9375c(file, null);
    }

    /* renamed from: b */
    public static byte[] m15349b(File file) throws IOException {
        return m15350a(file).mo15347b();
    }
}
