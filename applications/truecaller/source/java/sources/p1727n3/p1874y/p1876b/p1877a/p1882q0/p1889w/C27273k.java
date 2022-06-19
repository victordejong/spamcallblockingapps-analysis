package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.k */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/k.class */
public final class C27273k implements AbstractC27272j {

    /* renamed from: q */
    public static final double[] f76596q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    public String f76597a;

    /* renamed from: b */
    public AbstractC27190p f76598b;

    /* renamed from: c */
    public boolean f76599c;

    /* renamed from: d */
    public long f76600d;

    /* renamed from: e */
    public final C27266d0 f76601e;

    /* renamed from: f */
    public final C27434m f76602f;

    /* renamed from: g */
    public final boolean[] f76603g = new boolean[4];

    /* renamed from: h */
    public final C27274a f76604h = new C27274a(128);

    /* renamed from: i */
    public final C27284q f76605i;

    /* renamed from: j */
    public long f76606j;

    /* renamed from: k */
    public boolean f76607k;

    /* renamed from: l */
    public long f76608l;

    /* renamed from: m */
    public long f76609m;

    /* renamed from: n */
    public long f76610n;

    /* renamed from: o */
    public boolean f76611o;

    /* renamed from: p */
    public boolean f76612p;

    /* renamed from: n3.y.b.a.q0.w.k$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/k$a.class */
    public static final class C27274a {

        /* renamed from: e */
        public static final byte[] f76613e = {0, 0, 1};

        /* renamed from: a */
        public boolean f76614a;

        /* renamed from: b */
        public int f76615b;

        /* renamed from: c */
        public int f76616c;

        /* renamed from: d */
        public byte[] f76617d;

        public C27274a(int i) {
            this.f76617d = new byte[i];
        }

        /* renamed from: a */
        public void m635a(byte[] bArr, int i, int i2) {
            if (!this.f76614a) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f76617d;
            int length = bArr2.length;
            int i4 = this.f76615b;
            if (length < i4 + i3) {
                this.f76617d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f76617d, this.f76615b, i3);
            this.f76615b += i3;
        }
    }

    public C27273k(C27266d0 c27266d0) {
        this.f76601e = c27266d0;
        if (c27266d0 != null) {
            this.f76605i = new C27284q(178, 128);
            this.f76602f = new C27434m();
            return;
        }
        this.f76605i = null;
        this.f76602f = null;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        C27430k.m356a(this.f76603g);
        C27274a c27274a = this.f76604h;
        c27274a.f76614a = false;
        c27274a.f76615b = 0;
        c27274a.f76616c = 0;
        if (this.f76601e != null) {
            this.f76605i.m622c();
        }
        this.f76606j = 0L;
        this.f76607k = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        this.f76608l = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f0  */
    /* JADX WARN: Type inference failed for: r0v170, types: [double] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo626d(p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m r14) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27273k.mo626d(n3.y.b.a.x0.m):void");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        this.f76597a = c27264d.m646b();
        this.f76598b = abstractC27180h.m750i(c27264d.m645c(), 2);
        C27266d0 c27266d0 = this.f76601e;
        if (c27266d0 != null) {
            for (int i = 0; i < c27266d0.f76542b.length; i++) {
                c27264d.m647a();
                AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 3);
                Format format = c27266d0.f76541a.get(i);
                String str = format.f960i;
                boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
                String valueOf = String.valueOf(str);
                MediaSessionCompat.m43208q(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
                m750i.mo740c(Format.m42836r(c27264d.m646b(), str, null, -1, format.f954c, format.f948A, format.f949B, null, RecyclerView.FOREVER_NS, format.f962k));
                c27266d0.f76542b[i] = m750i;
            }
        }
    }
}
