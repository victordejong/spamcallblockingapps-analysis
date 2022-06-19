package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24216m;
import p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24225p;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24239w;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t.class */
public final class C24230t implements AbstractC24218n {

    /* renamed from: A */
    public long f67076A;

    /* renamed from: E */
    public ByteBuffer f67080E;

    /* renamed from: F */
    public ByteBuffer f67081F;

    /* renamed from: G */
    public byte[] f67082G;

    /* renamed from: H */
    public int f67083H;

    /* renamed from: J */
    public boolean f67085J;

    /* renamed from: K */
    public boolean f67086K;

    /* renamed from: L */
    public boolean f67087L;

    /* renamed from: O */
    public boolean f67090O;

    /* renamed from: P */
    public long f67091P;

    /* renamed from: a */
    public final C24211j f67092a;

    /* renamed from: b */
    public final AbstractC24232b f67093b;

    /* renamed from: c */
    public final C24229s f67094c;

    /* renamed from: d */
    public final C24200b0 f67095d;

    /* renamed from: e */
    public final AbstractC24213l[] f67096e;

    /* renamed from: j */
    public AbstractC24218n.AbstractC24221c f67101j;

    /* renamed from: k */
    public C24233c f67102k;

    /* renamed from: l */
    public C24233c f67103l;

    /* renamed from: m */
    public AudioTrack f67104m;

    /* renamed from: o */
    public C24652o0 f67106o;

    /* renamed from: q */
    public long f67108q;

    /* renamed from: r */
    public long f67109r;

    /* renamed from: s */
    public ByteBuffer f67110s;

    /* renamed from: t */
    public int f67111t;

    /* renamed from: u */
    public long f67112u;

    /* renamed from: v */
    public long f67113v;

    /* renamed from: w */
    public long f67114w;

    /* renamed from: x */
    public long f67115x;

    /* renamed from: y */
    public int f67116y;

    /* renamed from: g */
    public final ConditionVariable f67098g = new ConditionVariable(true);

    /* renamed from: h */
    public final C24225p f67099h = new C24225p(new C24236f(null));

    /* renamed from: f */
    public final AbstractC24213l[] f67097f = {new C24238v()};

    /* renamed from: B */
    public float f67077B = 1.0f;

    /* renamed from: z */
    public int f67117z = 0;

    /* renamed from: n */
    public C24209i f67105n = C24209i.f67011f;

    /* renamed from: M */
    public int f67088M = 0;

    /* renamed from: N */
    public C24227q f67089N = new C24227q(0, 0.0f);

    /* renamed from: p */
    public C24652o0 f67107p = C24652o0.f69035e;

    /* renamed from: I */
    public int f67084I = -1;

    /* renamed from: C */
    public AbstractC24213l[] f67078C = new AbstractC24213l[0];

    /* renamed from: D */
    public ByteBuffer[] f67079D = new ByteBuffer[0];

    /* renamed from: i */
    public final ArrayDeque<C24235e> f67100i = new ArrayDeque<>();

    /* renamed from: e.m.a.c.c1.t$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$a.class */
    public class C24231a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f67118a;

        public C24231a(AudioTrack audioTrack) {
            C24230t.this = r4;
            this.f67118a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f67118a.flush();
                this.f67118a.release();
            } finally {
                C24230t.this.f67098g.open();
            }
        }
    }

    /* renamed from: e.m.a.c.c1.t$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$b.class */
    public interface AbstractC24232b {
        /* renamed from: a */
        long mo5413a();

        /* renamed from: b */
        long mo5412b(long j);

        /* renamed from: c */
        C24652o0 mo5411c(C24652o0 c24652o0);
    }

    /* renamed from: e.m.a.c.c1.t$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$c.class */
    public static final class C24233c {

        /* renamed from: a */
        public final boolean f67120a;

        /* renamed from: b */
        public final int f67121b;

        /* renamed from: c */
        public final int f67122c;

        /* renamed from: d */
        public final int f67123d;

        /* renamed from: e */
        public final int f67124e;

        /* renamed from: f */
        public final int f67125f;

        /* renamed from: g */
        public final int f67126g;

        /* renamed from: h */
        public final int f67127h;

        /* renamed from: i */
        public final boolean f67128i;

        /* renamed from: j */
        public final boolean f67129j;

        /* renamed from: k */
        public final AbstractC24213l[] f67130k;

        public C24233c(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AbstractC24213l[] abstractC24213lArr) {
            int i8;
            int i9;
            this.f67120a = z;
            this.f67121b = i;
            this.f67122c = i2;
            this.f67123d = i3;
            this.f67124e = i4;
            this.f67125f = i5;
            this.f67126g = i6;
            if (i7 != 0) {
                i8 = i7;
            } else if (z) {
                int minBufferSize = AudioTrack.getMinBufferSize(i4, i5, i6);
                C26232y.m2286x(minBufferSize != -2);
                long j = i4;
                i8 = C24773d0.m4618f(minBufferSize * 4, ((int) ((250000 * j) / 1000000)) * i3, (int) Math.max(minBufferSize, ((j * 750000) / 1000000) * i3));
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
            this.f67127h = i8;
            this.f67128i = z2;
            this.f67129j = z3;
            this.f67130k = abstractC24213lArr;
        }

        /* renamed from: a */
        public long m5414a(long j) {
            return (j * 1000000) / this.f67124e;
        }
    }

    /* renamed from: e.m.a.c.c1.t$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$d.class */
    public static class C24234d implements AbstractC24232b {

        /* renamed from: a */
        public final AbstractC24213l[] f67131a;

        /* renamed from: b */
        public final C24243y f67132b;

        /* renamed from: c */
        public final C24198a0 f67133c;

        public C24234d(AbstractC24213l... abstractC24213lArr) {
            AbstractC24213l[] abstractC24213lArr2 = new AbstractC24213l[abstractC24213lArr.length + 2];
            this.f67131a = abstractC24213lArr2;
            System.arraycopy(abstractC24213lArr, 0, abstractC24213lArr2, 0, abstractC24213lArr.length);
            C24243y c24243y = new C24243y();
            this.f67132b = c24243y;
            C24198a0 c24198a0 = new C24198a0();
            this.f67133c = c24198a0;
            abstractC24213lArr2[abstractC24213lArr.length] = c24243y;
            abstractC24213lArr2[abstractC24213lArr.length + 1] = c24198a0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.AbstractC24232b
        /* renamed from: a */
        public long mo5413a() {
            return this.f67132b.f67166q;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.AbstractC24232b
        /* renamed from: b */
        public long mo5412b(long j) {
            char c;
            C24198a0 c24198a0 = this.f67133c;
            long j2 = c24198a0.f66978o;
            if (j2 >= 1024) {
                int i = c24198a0.f66971h.f67023a;
                int i2 = c24198a0.f66970g.f67023a;
                c = i == i2 ? C24773d0.m4598z(j, c24198a0.f66977n, j2) : C24773d0.m4598z(j, c24198a0.f66977n * i, j2 * i2);
            } else {
                c = (long) (c24198a0.f66966c * j);
            }
            return c;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.AbstractC24232b
        /* renamed from: c */
        public C24652o0 mo5411c(C24652o0 c24652o0) {
            this.f67132b.f67159j = c24652o0.f69038c;
            C24198a0 c24198a0 = this.f67133c;
            float f = c24652o0.f69036a;
            Objects.requireNonNull(c24198a0);
            float m4619e = C24773d0.m4619e(f, 0.1f, 8.0f);
            if (c24198a0.f66966c != m4619e) {
                c24198a0.f66966c = m4619e;
                c24198a0.f66972i = true;
            }
            C24198a0 c24198a02 = this.f67133c;
            float f2 = c24652o0.f69037b;
            Objects.requireNonNull(c24198a02);
            float m4619e2 = C24773d0.m4619e(f2, 0.1f, 8.0f);
            if (c24198a02.f66967d != m4619e2) {
                c24198a02.f66967d = m4619e2;
                c24198a02.f66972i = true;
            }
            return new C24652o0(m4619e, m4619e2, c24652o0.f69038c);
        }
    }

    /* renamed from: e.m.a.c.c1.t$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$e.class */
    public static final class C24235e {

        /* renamed from: a */
        public final C24652o0 f67134a;

        /* renamed from: b */
        public final long f67135b;

        /* renamed from: c */
        public final long f67136c;

        public C24235e(C24652o0 c24652o0, long j, long j2, C24231a c24231a) {
            this.f67134a = c24652o0;
            this.f67135b = j;
            this.f67136c = j2;
        }
    }

    /* renamed from: e.m.a.c.c1.t$f */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/t$f.class */
    public final class C24236f implements C24225p.AbstractC24226a {
        public C24236f(C24231a c24231a) {
            C24230t.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24225p.AbstractC24226a
        /* renamed from: a */
        public void mo5410a(long j, long j2, long j3, long j4) {
            C24230t c24230t = C24230t.this;
            C24233c c24233c = c24230t.f67103l;
            if (c24233c.f67120a) {
                long j5 = c24230t.f67112u / c24233c.f67121b;
            }
            c24230t.m5425g();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24225p.AbstractC24226a
        /* renamed from: b */
        public void mo5409b(long j, long j2, long j3, long j4) {
            C24230t c24230t = C24230t.this;
            C24233c c24233c = c24230t.f67103l;
            if (c24233c.f67120a) {
                long j5 = c24230t.f67112u / c24233c.f67121b;
            }
            c24230t.m5425g();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24225p.AbstractC24226a
        /* renamed from: c */
        public void mo5408c(final int i, final long j) {
            if (C24230t.this.f67101j != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                C24230t c24230t = C24230t.this;
                long j2 = c24230t.f67091P;
                C24239w.C24241b c24241b = (C24239w.C24241b) c24230t.f67101j;
                final AbstractC24216m.C24217a c24217a = C24239w.this.f67143F0;
                Handler handler = c24217a.f67027a;
                if (handler != null) {
                    final long j3 = elapsedRealtime - j2;
                    handler.post(new Runnable() { // from class: e.m.a.c.c1.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC24216m.C24217a c24217a2 = AbstractC24216m.C24217a.this;
                            int i2 = i;
                            long j4 = j;
                            long j5 = j3;
                            AbstractC24216m abstractC24216m = c24217a2.f67028b;
                            int i3 = C24773d0.f69427a;
                            abstractC24216m.mo5446h(i2, j4, j5);
                        }
                    });
                }
                Objects.requireNonNull(C24239w.this);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1598c1.C24225p.AbstractC24226a
        /* renamed from: d */
        public void mo5407d(long j) {
        }
    }

    public C24230t(C24211j c24211j, AbstractC24213l[] abstractC24213lArr) {
        C24234d c24234d = new C24234d(abstractC24213lArr);
        this.f67092a = c24211j;
        this.f67093b = c24234d;
        C24229s c24229s = new C24229s();
        this.f67094c = c24229s;
        C24200b0 c24200b0 = new C24200b0();
        this.f67095d = c24200b0;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C24242x(), c24229s, c24200b0);
        Collections.addAll(arrayList, c24234d.f67131a);
        this.f67096e = (AbstractC24213l[]) arrayList.toArray(new AbstractC24213l[0]);
    }

    /* renamed from: a */
    public final void m5431a(C24652o0 c24652o0, long j) {
        this.f67100i.add(new C24235e(this.f67103l.f67129j ? this.f67093b.mo5411c(c24652o0) : C24652o0.f69035e, Math.max(0L, j), this.f67103l.m5414a(m5425g()), null));
        AbstractC24213l[] abstractC24213lArr = this.f67103l.f67130k;
        ArrayList arrayList = new ArrayList();
        for (AbstractC24213l abstractC24213l : abstractC24213lArr) {
            if (abstractC24213l.mo5402b()) {
                arrayList.add(abstractC24213l);
            } else {
                abstractC24213l.flush();
            }
        }
        int size = arrayList.size();
        this.f67078C = (AbstractC24213l[]) arrayList.toArray(new AbstractC24213l[size]);
        this.f67079D = new ByteBuffer[size];
        m5427e();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01d0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x023b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5430b(int r15, int r16, int r17, int r18, int[] r19, int r20, int r21) throws p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24219a {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.m5430b(int, int, int, int, int[], int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5429c() throws p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24222d {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f67084I
            r1 = -1
            if (r0 != r1) goto L27
            r0 = r5
            e.m.a.c.c1.t$c r0 = r0.f67103l
            boolean r0 = r0.f67128i
            if (r0 == 0) goto L17
            r0 = 0
            r6 = r0
            goto L1d
        L17:
            r0 = r5
            e.m.a.c.c1.l[] r0 = r0.f67078C
            int r0 = r0.length
            r6 = r0
        L1d:
            r0 = r5
            r1 = r6
            r0.f67084I = r1
        L22:
            r0 = 1
            r6 = r0
            goto L29
        L27:
            r0 = 0
            r6 = r0
        L29:
            r0 = r5
            int r0 = r0.f67084I
            r7 = r0
            r0 = r5
            e.m.a.c.c1.l[] r0 = r0.f67078C
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
            r0.mo5434e()
        L47:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m5419m(r1)
            r0 = r8
            boolean r0 = r0.mo5435c()
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            r1 = r5
            int r1 = r1.f67084I
            r2 = 1
            int r1 = r1 + r2
            r0.f67084I = r1
            goto L22
        L66:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f67081F
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m5415q(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f67081F
            if (r0 == 0) goto L80
            r0 = 0
            return r0
        L80:
            r0 = r5
            r1 = -1
            r0.f67084I = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.m5429c():boolean");
    }

    /* renamed from: d */
    public void m5428d() {
        if (m5422j()) {
            this.f67112u = 0L;
            this.f67113v = 0L;
            this.f67114w = 0L;
            this.f67115x = 0L;
            this.f67116y = 0;
            C24652o0 c24652o0 = this.f67106o;
            if (c24652o0 != null) {
                this.f67107p = c24652o0;
                this.f67106o = null;
            } else if (!this.f67100i.isEmpty()) {
                this.f67107p = this.f67100i.getLast().f67134a;
            }
            this.f67100i.clear();
            this.f67108q = 0L;
            this.f67109r = 0L;
            this.f67095d.f66990o = 0L;
            m5427e();
            this.f67080E = null;
            this.f67081F = null;
            this.f67086K = false;
            this.f67085J = false;
            this.f67084I = -1;
            this.f67110s = null;
            this.f67111t = 0;
            this.f67117z = 0;
            AudioTrack audioTrack = this.f67099h.f67042c;
            Objects.requireNonNull(audioTrack);
            if (audioTrack.getPlayState() == 3) {
                this.f67104m.pause();
            }
            AudioTrack audioTrack2 = this.f67104m;
            this.f67104m = null;
            C24233c c24233c = this.f67102k;
            if (c24233c != null) {
                this.f67103l = c24233c;
                this.f67102k = null;
            }
            C24225p c24225p = this.f67099h;
            c24225p.f67049j = 0L;
            c24225p.f67060u = 0;
            c24225p.f67059t = 0;
            c24225p.f67050k = 0L;
            c24225p.f67042c = null;
            c24225p.f67045f = null;
            this.f67098g.close();
            new C24231a(audioTrack2).start();
        }
    }

    /* renamed from: e */
    public final void m5427e() {
        int i = 0;
        while (true) {
            AbstractC24213l[] abstractC24213lArr = this.f67078C;
            if (i < abstractC24213lArr.length) {
                AbstractC24213l abstractC24213l = abstractC24213lArr[i];
                abstractC24213l.flush();
                this.f67079D[i] = abstractC24213l.mo5433f();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: f */
    public C24652o0 m5426f() {
        C24652o0 c24652o0 = this.f67106o;
        if (c24652o0 == null) {
            c24652o0 = !this.f67100i.isEmpty() ? this.f67100i.getLast().f67134a : this.f67107p;
        }
        return c24652o0;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: g */
    public final long m5425g() {
        C24233c c24233c = this.f67103l;
        return c24233c.f67120a ? this.f67114w / c24233c.f67123d : this.f67115x;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0386, code lost:
        if (r0.m5438b() == 0) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03de A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v351, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:242:0x084a -> B:76:0x0329). Please submit an issue!!! */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5424h(java.nio.ByteBuffer r11, long r12) throws p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24220b, p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24222d {
        /*
            Method dump skipped, instructions count: 2126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.m5424h(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: i */
    public boolean m5423i() {
        return m5422j() && this.f67099h.m5437c(m5425g());
    }

    /* renamed from: j */
    public final boolean m5422j() {
        return this.f67104m != null;
    }

    /* renamed from: k */
    public void m5421k() {
        this.f67087L = true;
        if (m5422j()) {
            C24223o c24223o = this.f67099h.f67045f;
            Objects.requireNonNull(c24223o);
            c24223o.m5441a();
            this.f67104m.play();
        }
    }

    /* renamed from: l */
    public final void m5420l() {
        if (!this.f67086K) {
            this.f67086K = true;
            C24225p c24225p = this.f67099h;
            long m5425g = m5425g();
            c24225p.f67063x = c24225p.m5438b();
            c24225p.f67061v = SystemClock.elapsedRealtime() * 1000;
            c24225p.f67064y = m5425g;
            this.f67104m.stop();
            this.f67111t = 0;
        }
    }

    /* renamed from: m */
    public final void m5419m(long j) throws AbstractC24218n.C24222d {
        ByteBuffer byteBuffer;
        int length = this.f67078C.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f67079D[i - 1];
            } else {
                byteBuffer = this.f67080E;
                if (byteBuffer == null) {
                    byteBuffer = AbstractC24213l.f67021a;
                }
            }
            if (i == length) {
                m5415q(byteBuffer, j);
            } else {
                AbstractC24213l abstractC24213l = this.f67078C[i];
                abstractC24213l.mo5401d(byteBuffer);
                ByteBuffer mo5433f = abstractC24213l.mo5433f();
                this.f67079D[i] = mo5433f;
                if (mo5433f.hasRemaining()) {
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
    public void m5418n() {
        m5428d();
        for (AbstractC24213l abstractC24213l : this.f67096e) {
            abstractC24213l.reset();
        }
        for (AbstractC24213l abstractC24213l2 : this.f67097f) {
            abstractC24213l2.reset();
        }
        this.f67088M = 0;
        this.f67087L = false;
    }

    /* renamed from: o */
    public final void m5417o() {
        if (!m5422j()) {
            return;
        }
        if (C24773d0.f69427a >= 21) {
            this.f67104m.setVolume(this.f67077B);
            return;
        }
        AudioTrack audioTrack = this.f67104m;
        float f = this.f67077B;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: p */
    public boolean m5416p(int i, int i2) {
        boolean z;
        if (C24773d0.m4603u(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = C24773d0.f69427a >= 21;
            }
            return z2;
        }
        C24211j c24211j = this.f67092a;
        if (c24211j != null) {
            if (Arrays.binarySearch(c24211j.f67019a, i2) >= 0) {
                z = true;
                if (i != -1) {
                    if (i <= this.f67092a.f67020b) {
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
    public final void m5415q(java.nio.ByteBuffer r10, long r11) throws p193e.p1577m.p1578a.p1596c.p1598c1.AbstractC24218n.C24222d {
        /*
            Method dump skipped, instructions count: 582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1598c1.C24230t.m5415q(java.nio.ByteBuffer, long):void");
    }
}
