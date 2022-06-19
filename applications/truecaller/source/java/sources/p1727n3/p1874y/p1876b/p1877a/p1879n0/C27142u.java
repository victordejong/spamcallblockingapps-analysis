package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.C27079e0;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.n0.u */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u.class */
public final class C27142u implements AbstractC27131o {

    /* renamed from: A */
    public long f75900A;

    /* renamed from: E */
    public ByteBuffer f75904E;

    /* renamed from: F */
    public ByteBuffer f75905F;

    /* renamed from: G */
    public byte[] f75906G;

    /* renamed from: H */
    public int f75907H;

    /* renamed from: J */
    public boolean f75909J;

    /* renamed from: K */
    public boolean f75910K;

    /* renamed from: L */
    public boolean f75911L;

    /* renamed from: O */
    public boolean f75914O;

    /* renamed from: P */
    public long f75915P;

    /* renamed from: a */
    public final C27115d f75916a;

    /* renamed from: b */
    public final AbstractC27144b f75917b;

    /* renamed from: c */
    public final t f75918c;

    /* renamed from: d */
    public final c0 f75919d;

    /* renamed from: e */
    public final AbstractC27121g[] f75920e;

    /* renamed from: j */
    public AbstractC27131o.AbstractC27134c f75925j;

    /* renamed from: k */
    public C27145c f75926k;

    /* renamed from: l */
    public C27145c f75927l;

    /* renamed from: m */
    public AudioTrack f75928m;

    /* renamed from: o */
    public C27079e0 f75930o;

    /* renamed from: q */
    public long f75932q;

    /* renamed from: r */
    public long f75933r;

    /* renamed from: s */
    public ByteBuffer f75934s;

    /* renamed from: t */
    public int f75935t;

    /* renamed from: u */
    public long f75936u;

    /* renamed from: v */
    public long f75937v;

    /* renamed from: w */
    public long f75938w;

    /* renamed from: x */
    public long f75939x;

    /* renamed from: y */
    public int f75940y;

    /* renamed from: g */
    public final ConditionVariable f75922g = new ConditionVariable(true);

    /* renamed from: h */
    public final C27138q f75923h = new C27138q(new C27148f(null));

    /* renamed from: f */
    public final AbstractC27121g[] f75921f = {new w()};

    /* renamed from: B */
    public float f75901B = 1.0f;

    /* renamed from: z */
    public int f75941z = 0;

    /* renamed from: n */
    public C27113c f75929n = C27113c.f75819e;

    /* renamed from: M */
    public int f75912M = 0;

    /* renamed from: N */
    public C27140r f75913N = new C27140r(0, 0.0f);

    /* renamed from: p */
    public C27079e0 f75931p = C27079e0.f75693e;

    /* renamed from: I */
    public int f75908I = -1;

    /* renamed from: C */
    public AbstractC27121g[] f75902C = new AbstractC27121g[0];

    /* renamed from: D */
    public ByteBuffer[] f75903D = new ByteBuffer[0];

    /* renamed from: i */
    public final ArrayDeque<C27147e> f75924i = new ArrayDeque<>();

    /* renamed from: n3.y.b.a.n0.u$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$a.class */
    public class C27143a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f75942a;

        public C27143a(AudioTrack audioTrack) {
            C27142u.this = r4;
            this.f75942a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f75942a.flush();
                this.f75942a.release();
            } finally {
                C27142u.this.f75922g.open();
            }
        }
    }

    /* renamed from: n3.y.b.a.n0.u$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$b.class */
    public interface AbstractC27144b {
        /* renamed from: a */
        long mo792a();

        /* renamed from: b */
        long mo791b(long j);

        /* renamed from: c */
        C27079e0 mo790c(C27079e0 c27079e0);
    }

    /* renamed from: n3.y.b.a.n0.u$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$c.class */
    public static final class C27145c {

        /* renamed from: a */
        public final boolean f75944a;

        /* renamed from: b */
        public final int f75945b;

        /* renamed from: c */
        public final int f75946c;

        /* renamed from: d */
        public final int f75947d;

        /* renamed from: e */
        public final int f75948e;

        /* renamed from: f */
        public final int f75949f;

        /* renamed from: g */
        public final int f75950g;

        /* renamed from: h */
        public final int f75951h;

        /* renamed from: i */
        public final boolean f75952i;

        /* renamed from: j */
        public final boolean f75953j;

        /* renamed from: k */
        public final AbstractC27121g[] f75954k;

        public C27145c(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AbstractC27121g[] abstractC27121gArr) {
            int i8;
            int i9;
            this.f75944a = z;
            this.f75945b = i;
            this.f75946c = i2;
            this.f75947d = i3;
            this.f75948e = i4;
            this.f75949f = i5;
            this.f75950g = i6;
            if (i7 != 0) {
                i8 = i7;
            } else if (z) {
                int minBufferSize = AudioTrack.getMinBufferSize(i4, i5, i6);
                MediaSessionCompat.m43184y(minBufferSize != -2);
                long j = i4;
                i8 = C27445x.m280g(minBufferSize * 4, ((int) ((250000 * j) / 1000000)) * i3, (int) Math.max(minBufferSize, ((j * 750000) / 1000000) * i3));
            } else {
                if (i6 != 5) {
                    if (i6 != 6) {
                        if (i6 == 7) {
                            i9 = 192000;
                        } else if (i6 == 8) {
                            i9 = 2250000;
                        } else if (i6 == 14) {
                            i9 = 3062500;
                        } else if (i6 == 17) {
                            i9 = 336000;
                        } else if (i6 != 18) {
                            throw new IllegalArgumentException();
                        }
                    }
                    i9 = 768000;
                } else {
                    i9 = 80000;
                }
                i8 = (int) (((i6 == 5 ? i9 * 2 : i9) * 250000) / 1000000);
            }
            this.f75951h = i8;
            this.f75952i = z2;
            this.f75953j = z3;
            this.f75954k = abstractC27121gArr;
        }

        /* renamed from: a */
        public boolean m794a(C27145c c27145c) {
            return c27145c.f75950g == this.f75950g && c27145c.f75948e == this.f75948e && c27145c.f75949f == this.f75949f;
        }

        /* renamed from: b */
        public long m793b(long j) {
            return (j * 1000000) / this.f75948e;
        }
    }

    /* renamed from: n3.y.b.a.n0.u$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$d.class */
    public static class C27146d implements AbstractC27144b {

        /* renamed from: a */
        public final AbstractC27121g[] f75955a;

        /* renamed from: b */
        public final z f75956b;

        /* renamed from: c */
        public final C27112b0 f75957c;

        public C27146d(AbstractC27121g... abstractC27121gArr) {
            AbstractC27121g[] abstractC27121gArr2 = new AbstractC27121g[abstractC27121gArr.length + 2];
            this.f75955a = abstractC27121gArr2;
            System.arraycopy(abstractC27121gArr, 0, abstractC27121gArr2, 0, abstractC27121gArr.length);
            AbstractC27121g zVar = new z();
            this.f75956b = zVar;
            C27112b0 c27112b0 = new C27112b0();
            this.f75957c = c27112b0;
            abstractC27121gArr2[abstractC27121gArr.length] = zVar;
            abstractC27121gArr2[abstractC27121gArr.length + 1] = c27112b0;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.AbstractC27144b
        /* renamed from: a */
        public long mo792a() {
            return this.f75956b.p;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.AbstractC27144b
        /* renamed from: b */
        public long mo791b(long j) {
            char c;
            C27112b0 c27112b0 = this.f75957c;
            long j2 = c27112b0.f75817n;
            if (j2 >= 1024) {
                int i = c27112b0.f75809f;
                int i2 = c27112b0.f75806c;
                c = i == i2 ? C27445x.m261z(j, c27112b0.f75816m, j2) : C27445x.m261z(j, c27112b0.f75816m * i, j2 * i2);
            } else {
                c = (long) (c27112b0.f75807d * j);
            }
            return c;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.AbstractC27144b
        /* renamed from: c */
        public C27079e0 mo790c(C27079e0 c27079e0) {
            z zVar = this.f75956b;
            zVar.i = c27079e0.f75696c;
            zVar.flush();
            C27112b0 c27112b0 = this.f75957c;
            float f = c27079e0.f75694a;
            Objects.requireNonNull(c27112b0);
            float m281f = C27445x.m281f(f, 0.1f, 8.0f);
            if (c27112b0.f75807d != m281f) {
                c27112b0.f75807d = m281f;
                c27112b0.f75811h = true;
            }
            c27112b0.flush();
            C27112b0 c27112b02 = this.f75957c;
            float f2 = c27079e0.f75695b;
            Objects.requireNonNull(c27112b02);
            float m281f2 = C27445x.m281f(f2, 0.1f, 8.0f);
            if (c27112b02.f75808e != m281f2) {
                c27112b02.f75808e = m281f2;
                c27112b02.f75811h = true;
            }
            c27112b02.flush();
            return new C27079e0(m281f, m281f2, c27079e0.f75696c);
        }
    }

    /* renamed from: n3.y.b.a.n0.u$e */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$e.class */
    public static final class C27147e {

        /* renamed from: a */
        public final C27079e0 f75958a;

        /* renamed from: b */
        public final long f75959b;

        /* renamed from: c */
        public final long f75960c;

        public C27147e(C27079e0 c27079e0, long j, long j2, C27143a c27143a) {
            this.f75958a = c27079e0;
            this.f75959b = j;
            this.f75960c = j2;
        }
    }

    /* renamed from: n3.y.b.a.n0.u$f */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/u$f.class */
    public final class C27148f implements C27138q.AbstractC27139a {
        public C27148f(C27143a c27143a) {
            C27142u.this = r4;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q.AbstractC27139a
        /* renamed from: a */
        public void mo789a(long j, long j2, long j3, long j4) {
            C27142u c27142u = C27142u.this;
            C27145c c27145c = c27142u.f75927l;
            if (c27145c.f75944a) {
                long j5 = c27142u.f75936u / c27145c.f75945b;
            }
            c27142u.m805g();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q.AbstractC27139a
        /* renamed from: b */
        public void mo788b(long j, long j2, long j3, long j4) {
            C27142u c27142u = C27142u.this;
            C27145c c27145c = c27142u.f75927l;
            if (c27145c.f75944a) {
                long j5 = c27142u.f75936u / c27145c.f75945b;
            }
            c27142u.m805g();
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q.AbstractC27139a
        /* renamed from: c */
        public void mo787c(int i, long j) {
            if (C27142u.this.f75925j != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                C27142u c27142u = C27142u.this;
                long j2 = c27142u.f75915P;
                x$b x_b = (x$b) c27142u.f75925j;
                AbstractC27129n.C27130a c27130a = x_b.f75965a.A0;
                if (c27130a.f75855b != null) {
                    c27130a.f75854a.post(new Runnable(c27130a, i, j, elapsedRealtime - j2) { // from class: n3.y.b.a.n0.k

                        /* renamed from: a */
                        public final AbstractC27129n.C27130a f75846a;

                        /* renamed from: b */
                        public final int f75847b;

                        /* renamed from: c */
                        public final long f75848c;

                        /* renamed from: d */
                        public final long f75849d;

                        {
                            this.f75846a = c27130a;
                            this.f75847b = i;
                            this.f75848c = j;
                            this.f75849d = j3;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            AbstractC27129n.C27130a c27130a2 = this.f75846a;
                            c27130a2.f75855b.mo832h(this.f75847b, this.f75848c, this.f75849d);
                        }
                    });
                }
                Objects.requireNonNull(x_b.f75965a);
            }
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.C27138q.AbstractC27139a
        /* renamed from: d */
        public void mo786d(long j) {
        }
    }

    public C27142u(C27115d c27115d, AbstractC27121g[] abstractC27121gArr) {
        C27146d c27146d = new C27146d(abstractC27121gArr);
        this.f75916a = c27115d;
        this.f75917b = c27146d;
        AbstractC27141s tVar = new t();
        this.f75918c = tVar;
        AbstractC27141s c0Var = new c0();
        this.f75919d = c0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new y(), tVar, c0Var);
        Collections.addAll(arrayList, c27146d.f75955a);
        this.f75920e = (AbstractC27121g[]) arrayList.toArray(new AbstractC27121g[0]);
    }

    /* renamed from: a */
    public final void m811a(C27079e0 c27079e0, long j) {
        this.f75924i.add(new C27147e(this.f75927l.f75953j ? this.f75917b.mo790c(c27079e0) : C27079e0.f75693e, Math.max(0L, j), this.f75927l.m793b(m805g()), null));
        AbstractC27121g[] abstractC27121gArr = this.f75927l.f75954k;
        ArrayList arrayList = new ArrayList();
        for (AbstractC27121g abstractC27121g : abstractC27121gArr) {
            if (abstractC27121g.mo837b()) {
                arrayList.add(abstractC27121g);
            } else {
                abstractC27121g.flush();
            }
        }
        int size = arrayList.size();
        this.f75902C = (AbstractC27121g[]) arrayList.toArray(new AbstractC27121g[size]);
        this.f75903D = new ByteBuffer[size];
        m807e();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f8  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m810b(int r15, int r16, int r17, int r18, int[] r19, int r20, int r21) throws p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o.C27132a {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.m810b(int, int, int, int, int[], int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m809c() throws p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o.C27135d {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f75908I
            r1 = -1
            if (r0 != r1) goto L27
            r0 = r5
            n3.y.b.a.n0.u$c r0 = r0.f75927l
            boolean r0 = r0.f75952i
            if (r0 == 0) goto L17
            r0 = 0
            r6 = r0
            goto L1d
        L17:
            r0 = r5
            n3.y.b.a.n0.g[] r0 = r0.f75902C
            int r0 = r0.length
            r6 = r0
        L1d:
            r0 = r5
            r1 = r6
            r0.f75908I = r1
        L22:
            r0 = 1
            r6 = r0
            goto L29
        L27:
            r0 = 0
            r6 = r0
        L29:
            r0 = r5
            int r0 = r0.f75908I
            r7 = r0
            r0 = r5
            n3.y.b.a.n0.g[] r0 = r0.f75902C
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L66
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L47
            r0 = r8
            r0.mo820e()
        L47:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m799m(r1)
            r0 = r8
            boolean r0 = r0.mo821c()
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            r1 = r5
            int r1 = r1.f75908I
            r2 = 1
            int r1 = r1 + r2
            r0.f75908I = r1
            goto L22
        L66:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f75905F
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m795q(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f75905F
            if (r0 == 0) goto L80
            r0 = 0
            return r0
        L80:
            r0 = r5
            r1 = -1
            r0.f75908I = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.m809c():boolean");
    }

    /* renamed from: d */
    public void m808d() {
        if (m802j()) {
            this.f75936u = 0L;
            this.f75937v = 0L;
            this.f75938w = 0L;
            this.f75939x = 0L;
            this.f75940y = 0;
            C27079e0 c27079e0 = this.f75930o;
            if (c27079e0 != null) {
                this.f75931p = c27079e0;
                this.f75930o = null;
            } else if (!this.f75924i.isEmpty()) {
                this.f75931p = this.f75924i.getLast().f75958a;
            }
            this.f75924i.clear();
            this.f75932q = 0L;
            this.f75933r = 0L;
            this.f75919d.p = 0L;
            m807e();
            this.f75904E = null;
            this.f75905F = null;
            this.f75910K = false;
            this.f75909J = false;
            this.f75908I = -1;
            this.f75934s = null;
            this.f75935t = 0;
            this.f75941z = 0;
            AudioTrack audioTrack = this.f75923h.f75869c;
            Objects.requireNonNull(audioTrack);
            if (audioTrack.getPlayState() == 3) {
                this.f75928m.pause();
            }
            AudioTrack audioTrack2 = this.f75928m;
            this.f75928m = null;
            C27145c c27145c = this.f75926k;
            if (c27145c != null) {
                this.f75927l = c27145c;
                this.f75926k = null;
            }
            C27138q c27138q = this.f75923h;
            c27138q.f75876j = 0L;
            c27138q.f75887u = 0;
            c27138q.f75886t = 0;
            c27138q.f75877k = 0L;
            c27138q.f75869c = null;
            c27138q.f75872f = null;
            this.f75922g.close();
            new C27143a(audioTrack2).start();
        }
    }

    /* renamed from: e */
    public final void m807e() {
        int i = 0;
        while (true) {
            AbstractC27121g[] abstractC27121gArr = this.f75902C;
            if (i < abstractC27121gArr.length) {
                AbstractC27121g abstractC27121g = abstractC27121gArr[i];
                abstractC27121g.flush();
                this.f75903D[i] = abstractC27121g.mo819f();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    public C27079e0 m806f() {
        C27079e0 c27079e0 = this.f75930o;
        if (c27079e0 == null) {
            c27079e0 = !this.f75924i.isEmpty() ? this.f75924i.getLast().f75958a : this.f75931p;
        }
        return c27079e0;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: g */
    public final long m805g() {
        C27145c c27145c = this.f75927l;
        return c27145c.f75944a ? this.f75938w / c27145c.f75947d : this.f75939x;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0354, code lost:
        if (r0.m824b() == 0) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:158:0x05e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03ae  */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v316, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:217:0x0768 -> B:68:0x02f7). Please submit an issue!!! */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m804h(java.nio.ByteBuffer r11, long r12) throws p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o.C27133b, p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o.C27135d {
        /*
            Method dump skipped, instructions count: 1900
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.m804h(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: i */
    public boolean m803i() {
        return m802j() && this.f75923h.m823c(m805g());
    }

    /* renamed from: j */
    public final boolean m802j() {
        return this.f75928m != null;
    }

    /* renamed from: k */
    public void m801k() {
        this.f75911L = true;
        if (m802j()) {
            C27136p c27136p = this.f75923h.f75872f;
            Objects.requireNonNull(c27136p);
            c27136p.m827a();
            this.f75928m.play();
        }
    }

    /* renamed from: l */
    public final void m800l() {
        if (!this.f75910K) {
            this.f75910K = true;
            C27138q c27138q = this.f75923h;
            long m805g = m805g();
            c27138q.f75890x = c27138q.m824b();
            c27138q.f75888v = SystemClock.elapsedRealtime() * 1000;
            c27138q.f75891y = m805g;
            this.f75928m.stop();
            this.f75935t = 0;
        }
    }

    /* renamed from: m */
    public final void m799m(long j) throws AbstractC27131o.C27135d {
        ByteBuffer byteBuffer;
        int length = this.f75902C.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f75903D[i - 1];
            } else {
                byteBuffer = this.f75904E;
                if (byteBuffer == null) {
                    byteBuffer = AbstractC27121g.f75837a;
                }
            }
            if (i == length) {
                m795q(byteBuffer, j);
            } else {
                AbstractC27121g abstractC27121g = this.f75902C[i];
                abstractC27121g.mo836d(byteBuffer);
                ByteBuffer mo819f = abstractC27121g.mo819f();
                this.f75903D[i] = mo819f;
                if (mo819f.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: n */
    public void m798n() {
        m808d();
        for (AbstractC27121g abstractC27121g : this.f75920e) {
            abstractC27121g.reset();
        }
        for (AbstractC27121g abstractC27121g2 : this.f75921f) {
            abstractC27121g2.reset();
        }
        this.f75912M = 0;
        this.f75911L = false;
    }

    /* renamed from: o */
    public final void m797o() {
        if (!m802j()) {
            return;
        }
        if (C27445x.f77229a >= 21) {
            this.f75928m.setVolume(this.f75901B);
            return;
        }
        AudioTrack audioTrack = this.f75928m;
        float f = this.f75901B;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: p */
    public boolean m796p(int i, int i2) {
        boolean z;
        if (C27445x.m268s(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = C27445x.f77229a >= 21;
            }
            return z2;
        }
        C27115d c27115d = this.f75916a;
        if (c27115d != null) {
            if (Arrays.binarySearch(c27115d.f75826a, i2) >= 0) {
                z = true;
                if (i != -1) {
                    if (i <= this.f75916a.f75827b) {
                        z = true;
                    }
                }
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x01bd, code lost:
        if (r0 < r0) goto L54;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m795q(java.nio.ByteBuffer r10, long r11) throws p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27131o.C27135d {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u.m795q(java.nio.ByteBuffer, long):void");
    }
}
