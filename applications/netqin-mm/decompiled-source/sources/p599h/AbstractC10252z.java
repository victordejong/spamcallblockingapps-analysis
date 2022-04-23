package p599h;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import p599h.p600d0.C10109c;
import p610i.AbstractC10263d;
import p610i.AbstractC10281q;
import p610i.C10270k;
/* renamed from: h.z */
/* loaded from: classes2-dex2jar.jar:h/z.class */
public abstract class AbstractC10252z {

    /* renamed from: h.z$a */
    /* loaded from: classes2-dex2jar.jar:h/z$a.class */
    public class C10253a extends AbstractC10252z {

        /* renamed from: a */
        public final /* synthetic */ C10240u f37869a;

        /* renamed from: b */
        public final /* synthetic */ int f37870b;

        /* renamed from: c */
        public final /* synthetic */ byte[] f37871c;

        /* renamed from: d */
        public final /* synthetic */ int f37872d;

        public C10253a(C10240u uVar, int i, byte[] bArr, int i2) {
            this.f37869a = uVar;
            this.f37870b = i;
            this.f37871c = bArr;
            this.f37872d = i2;
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: a */
        public long mo799a() {
            return this.f37870b;
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: a */
        public void mo798a(AbstractC10263d dVar) throws IOException {
            dVar.write(this.f37871c, this.f37872d, this.f37870b);
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: b */
        public C10240u mo797b() {
            return this.f37869a;
        }
    }

    /* renamed from: h.z$b */
    /* loaded from: classes2-dex2jar.jar:h/z$b.class */
    public class C10254b extends AbstractC10252z {

        /* renamed from: a */
        public final /* synthetic */ C10240u f37873a;

        /* renamed from: b */
        public final /* synthetic */ File f37874b;

        public C10254b(C10240u uVar, File file) {
            this.f37873a = uVar;
            this.f37874b = file;
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: a */
        public long mo799a() {
            return this.f37874b.length();
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: a */
        public void mo798a(AbstractC10263d dVar) throws IOException {
            AbstractC10281q qVar = null;
            try {
                qVar = C10270k.m743c(this.f37874b);
                qVar = qVar;
                dVar.mo739a(qVar);
            } finally {
                C10109c.m1463a(qVar);
            }
        }

        @Override // p599h.AbstractC10252z
        /* renamed from: b */
        public C10240u mo797b() {
            return this.f37873a;
        }
    }

    /* renamed from: a */
    public static AbstractC10252z m803a(C10240u uVar, File file) {
        if (file != null) {
            return new C10254b(uVar, file);
        }
        throw new NullPointerException("file == null");
    }

    /* renamed from: a */
    public static AbstractC10252z m802a(C10240u uVar, String str) {
        Charset charset = C10109c.f37322i;
        C10240u uVar2 = uVar;
        if (uVar != null) {
            Charset a = uVar.m896a();
            charset = a;
            uVar2 = uVar;
            if (a == null) {
                charset = C10109c.f37322i;
                uVar2 = C10240u.m892b(uVar + "; charset=utf-8");
            }
        }
        return m801a(uVar2, str.getBytes(charset));
    }

    /* renamed from: a */
    public static AbstractC10252z m801a(C10240u uVar, byte[] bArr) {
        return m800a(uVar, bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC10252z m800a(C10240u uVar, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            C10109c.m1467a(bArr.length, i, i2);
            return new C10253a(uVar, i2, bArr, i);
        }
        throw new NullPointerException("content == null");
    }

    /* renamed from: a */
    public abstract long mo799a() throws IOException;

    /* renamed from: a */
    public abstract void mo798a(AbstractC10263d dVar) throws IOException;

    /* renamed from: b */
    public abstract C10240u mo797b();
}
