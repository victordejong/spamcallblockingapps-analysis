package p012b.p076s.p078b.p079a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.C1226e;
import p012b.p076s.p078b.p079a.C1230f0;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1174i;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1161a0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1673l;
import p012b.p076s.p078b.p079a.p110y0.C1675m;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.u */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u.class */
public final class C1509u implements Handler.Callback, AbstractC1631p.AbstractC1632a, AbstractC1673l.AbstractC1674a, AbstractC1634r.AbstractC1636b, C1226e.AbstractC1227a, C1230f0.AbstractC1231a {

    /* renamed from: A */
    public boolean f6172A;

    /* renamed from: B */
    public boolean f6173B;

    /* renamed from: C */
    public int f6174C;

    /* renamed from: D */
    public C1514e f6175D;

    /* renamed from: E */
    public long f6176E;

    /* renamed from: F */
    public int f6177F;

    /* renamed from: a */
    public final AbstractC1236h0[] f6178a;

    /* renamed from: b */
    public final AbstractC1238i0[] f6179b;

    /* renamed from: c */
    public final AbstractC1673l f6180c;

    /* renamed from: d */
    public final C1675m f6181d;

    /* renamed from: e */
    public final AbstractC1645x f6182e;

    /* renamed from: f */
    public final AbstractC1679c f6183f;

    /* renamed from: g */
    public final AbstractC1174i f6184g;

    /* renamed from: h */
    public final HandlerThread f6185h;

    /* renamed from: i */
    public final Handler f6186i;

    /* renamed from: j */
    public final AbstractC1252n0.C1255c f6187j;

    /* renamed from: k */
    public final AbstractC1252n0.C1254b f6188k;

    /* renamed from: l */
    public final long f6189l;

    /* renamed from: m */
    public final boolean f6190m;

    /* renamed from: n */
    public final C1226e f6191n;

    /* renamed from: p */
    public final ArrayList<C1512c> f6193p;

    /* renamed from: q */
    public final AbstractC1162b f6194q;

    /* renamed from: t */
    public C1198b0 f6197t;

    /* renamed from: u */
    public AbstractC1634r f6198u;

    /* renamed from: v */
    public AbstractC1236h0[] f6199v;

    /* renamed from: w */
    public boolean f6200w;

    /* renamed from: x */
    public boolean f6201x;

    /* renamed from: y */
    public boolean f6202y;

    /* renamed from: z */
    public int f6203z;

    /* renamed from: r */
    public final C1159a0 f6195r = new C1159a0();

    /* renamed from: s */
    public C1244l0 f6196s = C1244l0.f4943g;

    /* renamed from: o */
    public final C1513d f6192o = new C1513d();

    /* renamed from: b.s.b.a.u$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u$b.class */
    public static final class C1511b {

        /* renamed from: a */
        public final AbstractC1634r f6204a;

        /* renamed from: b */
        public final AbstractC1252n0 f6205b;

        /* renamed from: c */
        public final Object f6206c;

        public C1511b(AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
            this.f6204a = rVar;
            this.f6205b = n0Var;
            this.f6206c = obj;
        }
    }

    /* renamed from: b.s.b.a.u$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u$c.class */
    public static final class C1512c implements Comparable<C1512c> {

        /* renamed from: a */
        public final C1230f0 f6207a;

        /* renamed from: b */
        public int f6208b;

        /* renamed from: c */
        public long f6209c;

        /* renamed from: d */
        public Object f6210d;

        public C1512c(C1230f0 f0Var) {
            this.f6207a = f0Var;
        }

        /* renamed from: a */
        public int compareTo(C1512c cVar) {
            int i = 1;
            if ((this.f6210d == null) != (cVar.f6210d == null)) {
                if (this.f6210d != null) {
                    i = -1;
                }
                return i;
            } else if (this.f6210d == null) {
                return 0;
            } else {
                int i2 = this.f6208b - cVar.f6208b;
                return i2 != 0 ? i2 : C1167d0.m34491a(this.f6209c, cVar.f6209c);
            }
        }

        /* renamed from: a */
        public void m33006a(int i, long j, Object obj) {
            this.f6208b = i;
            this.f6209c = j;
            this.f6210d = obj;
        }
    }

    /* renamed from: b.s.b.a.u$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u$d.class */
    public static final class C1513d {

        /* renamed from: a */
        public C1198b0 f6211a;

        /* renamed from: b */
        public int f6212b;

        /* renamed from: c */
        public boolean f6213c;

        /* renamed from: d */
        public int f6214d;

        public C1513d() {
        }

        /* renamed from: a */
        public void m33004a(int i) {
            this.f6212b += i;
        }

        /* renamed from: a */
        public boolean m33003a(C1198b0 b0Var) {
            return b0Var != this.f6211a || this.f6212b > 0 || this.f6213c;
        }

        /* renamed from: b */
        public void m33001b(int i) {
            boolean z = true;
            if (!this.f6213c || this.f6214d == 4) {
                this.f6213c = true;
                this.f6214d = i;
                return;
            }
            if (i != 4) {
                z = false;
            }
            C1160a.m34520a(z);
        }

        /* renamed from: b */
        public void m33000b(C1198b0 b0Var) {
            this.f6211a = b0Var;
            this.f6212b = 0;
            this.f6213c = false;
        }
    }

    /* renamed from: b.s.b.a.u$e */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/u$e.class */
    public static final class C1514e {

        /* renamed from: a */
        public final AbstractC1252n0 f6215a;

        /* renamed from: b */
        public final int f6216b;

        /* renamed from: c */
        public final long f6217c;

        public C1514e(AbstractC1252n0 n0Var, int i, long j) {
            this.f6215a = n0Var;
            this.f6216b = i;
            this.f6217c = j;
        }
    }

    public C1509u(AbstractC1236h0[] h0VarArr, AbstractC1673l lVar, C1675m mVar, AbstractC1645x xVar, AbstractC1679c cVar, boolean z, int i, boolean z2, Handler handler, AbstractC1162b bVar) {
        this.f6178a = h0VarArr;
        this.f6180c = lVar;
        this.f6181d = mVar;
        this.f6182e = xVar;
        this.f6183f = cVar;
        this.f6201x = z;
        this.f6203z = i;
        this.f6172A = z2;
        this.f6186i = handler;
        this.f6194q = bVar;
        this.f6189l = xVar.mo32493c();
        this.f6190m = xVar.mo32494b();
        this.f6197t = C1198b0.m34277a(-9223372036854775807L, mVar);
        this.f6179b = new AbstractC1238i0[h0VarArr.length];
        for (int i2 = 0; i2 < h0VarArr.length; i2++) {
            h0VarArr[i2].mo34154a(i2);
            this.f6179b[i2] = h0VarArr[i2].mo34145k();
        }
        this.f6191n = new C1226e(this, bVar);
        this.f6193p = new ArrayList<>();
        this.f6199v = new AbstractC1236h0[0];
        this.f6187j = new AbstractC1252n0.C1255c();
        this.f6188k = new AbstractC1252n0.C1254b();
        lVar.m32404a(this, cVar);
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f6185h = handlerThread;
        handlerThread.start();
        this.f6184g = bVar.mo34312a(this.f6185h.getLooper(), this);
    }

    /* renamed from: a */
    public static Format[] m33059a(AbstractC1668i iVar) {
        int length = iVar != null ? iVar.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = iVar.mo32423a(i);
        }
        return formatArr;
    }

    /* renamed from: a */
    public final long m33074a(long j) {
        C1652y d = this.f6195r.m34529d();
        return d == null ? 0L : j - d.m32468c(this.f6176E);
    }

    /* renamed from: a */
    public final long m33062a(AbstractC1634r.C1635a aVar, long j) throws ExoPlaybackException {
        return m33061a(aVar, j, this.f6195r.m34528e() != this.f6195r.m34527f());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [b.s.b.a.u] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* renamed from: a */
    public final long m33061a(AbstractC1634r.C1635a aVar, long j, boolean z) throws ExoPlaybackException {
        char c;
        m33009s();
        this.f6202y = false;
        m33050b(2);
        C1652y e = this.f6195r.m34528e();
        C1652y yVar = e;
        while (true) {
            if (yVar == null) {
                break;
            }
            if (aVar.equals(yVar.f6797f.f6860a) && yVar.f6795d) {
                this.f6195r.m34544a(yVar);
                break;
            }
            yVar = this.f6195r.m34555a();
        }
        if (e != yVar || z) {
            for (AbstractC1236h0 h0Var : this.f6199v) {
                m33069a(h0Var);
            }
            this.f6199v = new AbstractC1236h0[0];
            e = null;
        }
        if (yVar != null) {
            m33058a(e);
            char c2 = j;
            if (yVar.f6796e) {
                long c3 = yVar.f6792a.mo32513c(j);
                yVar.f6792a.mo32518a(c3 - this.f6189l, this.f6190m);
                c2 = c3;
            }
            m33049b(c2);
            m33020h();
            c = c2;
        } else {
            this.f6195r.m34536a(true);
            this.f6197t = this.f6197t.m34276a(TrackGroupArray.f1858d, this.f6181d);
            m33049b(j);
            c = j;
        }
        m33056a(false);
        this.f6184g.mo34309a(2);
        return c;
    }

    /* renamed from: a */
    public final Pair<Object, Long> m33067a(AbstractC1252n0 n0Var, int i, long j) {
        return n0Var.m34043a(this.f6187j, this.f6188k, i, j);
    }

    /* renamed from: a */
    public final Pair<Object, Long> m33063a(C1514e eVar, boolean z) {
        int a;
        AbstractC1252n0 n0Var = this.f6197t.f4782a;
        AbstractC1252n0 n0Var2 = eVar.f6215a;
        if (n0Var.m34040c()) {
            return null;
        }
        AbstractC1252n0 n0Var3 = n0Var2;
        if (n0Var2.m34040c()) {
            n0Var3 = n0Var;
        }
        try {
            Pair<Object, Long> a2 = n0Var3.m34043a(this.f6187j, this.f6188k, eVar.f6216b, eVar.f6217c);
            if (n0Var != n0Var3 && (a = n0Var.mo32715a(a2.first)) == -1) {
                if (!z || m33057a(a2.first, n0Var3, n0Var) == null) {
                    return null;
                }
                return m33067a(n0Var, n0Var.m34047a(a, this.f6188k).f5015c, -9223372036854775807L);
            }
            return a2;
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Object m33057a(Object obj, AbstractC1252n0 n0Var, AbstractC1252n0 n0Var2) {
        int a = n0Var.mo32715a(obj);
        int a2 = n0Var.mo32719a();
        int i = -1;
        for (int i2 = 0; i2 < a2 && i == -1; i2++) {
            a = n0Var.m34046a(a, this.f6188k, this.f6187j, this.f6203z, this.f6172A);
            if (a == -1) {
                break;
            }
            i = n0Var2.mo32715a(n0Var.mo32718a(a));
        }
        return i == -1 ? null : n0Var2.mo32718a(i);
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1673l.AbstractC1674a
    /* renamed from: a */
    public void mo32400a() {
        this.f6184g.mo34309a(11);
    }

    /* renamed from: a */
    public final void m33077a(float f) {
        AbstractC1668i[] a;
        for (C1652y c = this.f6195r.m34530c(); c != null && c.f6795d; c = c.m32467d()) {
            for (AbstractC1668i iVar : c.m32461i().f6858c.m32408a()) {
                if (iVar != null) {
                    iVar.mo32424a(f);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33076a(int i) throws ExoPlaybackException {
        this.f6203z = i;
        if (!this.f6195r.m34554a(i)) {
            m33040b(true);
        }
        m33056a(false);
    }

    /* renamed from: a */
    public final void m33075a(int i, boolean z, int i2) throws ExoPlaybackException {
        C1652y e = this.f6195r.m34528e();
        AbstractC1236h0 h0Var = this.f6178a[i];
        this.f6199v[i2] = h0Var;
        if (h0Var.mo34150d() == 0) {
            C1675m i3 = e.m32461i();
            C1240j0 j0Var = i3.f6857b[i];
            Format[] a = m33059a(i3.f6858c.m32407a(i));
            boolean z2 = this.f6201x && this.f6197t.f4787f == 3;
            h0Var.mo34152a(j0Var, a, e.f6794c[i], this.f6176E, !z && z2, e.m32464f());
            this.f6191n.m34184b(h0Var);
            if (z2) {
                h0Var.start();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[LOOP:0: B:13:0x006d->B:23:0x00a8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0152 A[EDGE_INSN: B:79:0x0152->B:95:0x0152 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0067 -> B:13:0x006d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00df -> B:28:0x00e5). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33073a(long r6, long r8) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1509u.m33073a(long, long):void");
    }

    /* renamed from: a */
    public final void m33072a(TrackGroupArray trackGroupArray, C1675m mVar) {
        this.f6182e.mo32495a(this.f6178a, trackGroupArray, mVar.f6858c);
    }

    @Override // p012b.p076s.p078b.p079a.C1226e.AbstractC1227a
    /* renamed from: a */
    public void mo33071a(C1221c0 c0Var) {
        this.f6184g.mo34305a(17, c0Var).sendToTarget();
    }

    @Override // p012b.p076s.p078b.p079a.C1230f0.AbstractC1231a
    /* renamed from: a */
    public void mo33070a(C1230f0 f0Var) {
        synchronized (this) {
            if (this.f6200w) {
                C1175j.m34414d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                f0Var.m34169a(false);
                return;
            }
            this.f6184g.mo34305a(15, f0Var).sendToTarget();
        }
    }

    /* renamed from: a */
    public final void m33069a(AbstractC1236h0 h0Var) throws ExoPlaybackException {
        this.f6191n.m34186a(h0Var);
        m33045b(h0Var);
        h0Var.mo34149f();
    }

    /* renamed from: a */
    public void m33068a(C1244l0 l0Var) {
        this.f6184g.mo34305a(5, l0Var).sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [b.s.b.a.a0] */
    /* JADX WARN: Type inference failed for: r10v0, types: [b.s.b.a.u] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r17v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r1v13, types: [b.s.b.a.b0] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33066a(p012b.p076s.p078b.p079a.C1509u.C1511b r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1509u.m33066a(b.s.b.a.u$b):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b2 A[Catch: all -> 0x018b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x018b, blocks: (B:14:0x0098, B:16:0x009f, B:21:0x00b2, B:22:0x00c2, B:24:0x00d0, B:28:0x00e3, B:31:0x00ff, B:33:0x0112, B:39:0x0141, B:44:0x0164), top: B:56:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c2 A[Catch: all -> 0x018b, TRY_ENTER, TryCatch #0 {all -> 0x018b, blocks: (B:14:0x0098, B:16:0x009f, B:21:0x00b2, B:22:0x00c2, B:24:0x00d0, B:28:0x00e3, B:31:0x00ff, B:33:0x0112, B:39:0x0141, B:44:0x0164), top: B:56:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [b.s.b.a.w0.p] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [b.s.b.a.a0] */
    /* JADX WARN: Type inference failed for: r10v0, types: [b.s.b.a.u] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r1v3, types: [b.s.b.a.b0] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33064a(p012b.p076s.p078b.p079a.C1509u.C1514e r11) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1509u.m33064a(b.s.b.a.u$e):void");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p.AbstractC1632a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32509a(AbstractC1631p pVar) {
        this.f6184g.mo34305a(9, pVar).sendToTarget();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r.AbstractC1636b
    /* renamed from: a */
    public void mo32499a(AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
        this.f6184g.mo34305a(8, new C1511b(rVar, n0Var, obj)).sendToTarget();
    }

    /* renamed from: a */
    public void m33060a(AbstractC1634r rVar, boolean z, boolean z2) {
        this.f6184g.mo34307a(0, z ? 1 : 0, z2 ? 1 : 0, rVar).sendToTarget();
    }

    /* renamed from: a */
    public final void m33058a(C1652y yVar) throws ExoPlaybackException {
        C1652y e = this.f6195r.m34528e();
        if (e != null && yVar != e) {
            boolean[] zArr = new boolean[this.f6178a.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                AbstractC1236h0[] h0VarArr = this.f6178a;
                if (i < h0VarArr.length) {
                    AbstractC1236h0 h0Var = h0VarArr[i];
                    zArr[i] = h0Var.mo34150d() != 0;
                    i2 = i2;
                    if (e.m32461i().m32399a(i)) {
                        i2++;
                    }
                    if (zArr[i] && (!e.m32461i().m32399a(i) || (h0Var.mo34142p() && h0Var.mo34148h() == yVar.f6794c[i]))) {
                        m33069a(h0Var);
                    }
                    i++;
                } else {
                    this.f6197t = this.f6197t.m34276a(e.m32462h(), e.m32461i());
                    m33052a(zArr, i2);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33056a(boolean z) {
        C1652y d = this.f6195r.m34529d();
        AbstractC1634r.C1635a aVar = d == null ? this.f6197t.f4784c : d.f6797f.f6860a;
        boolean z2 = !this.f6197t.f4791j.equals(aVar);
        if (z2) {
            this.f6197t = this.f6197t.m34274a(aVar);
        }
        C1198b0 b0Var = this.f6197t;
        b0Var.f4792k = d == null ? b0Var.f4794m : d.m32469c();
        this.f6197t.f4793l = m33028e();
        if ((z2 || z) && d != null && d.f6795d) {
            m33072a(d.m32462h(), d.m32461i());
        }
    }

    /* renamed from: a */
    public final void m33055a(boolean z, AtomicBoolean atomicBoolean) {
        AbstractC1236h0[] h0VarArr;
        if (this.f6173B != z) {
            this.f6173B = z;
            if (!z) {
                for (AbstractC1236h0 h0Var : this.f6178a) {
                    if (h0Var.mo34150d() == 0) {
                        h0Var.mo34156a();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* renamed from: a */
    public final void m33054a(boolean z, boolean z2, boolean z3) {
        m33053a(z || !this.f6173B, true, z2, z2);
        this.f6192o.m33004a(this.f6174C + (z3 ? 1 : 0));
        this.f6174C = 0;
        this.f6182e.mo32498a();
        m33050b(1);
    }

    /* renamed from: a */
    public final void m33053a(boolean z, boolean z2, boolean z3, boolean z4) {
        AbstractC1634r rVar;
        this.f6184g.mo34304b(2);
        this.f6202y = false;
        this.f6191n.m34182d();
        this.f6176E = 0L;
        for (AbstractC1236h0 h0Var : this.f6199v) {
            try {
                m33069a(h0Var);
            } catch (ExoPlaybackException | RuntimeException e) {
                C1175j.m34419a("ExoPlayerImplInternal", "Disable failed.", e);
            }
        }
        if (z) {
            for (AbstractC1236h0 h0Var2 : this.f6178a) {
                try {
                    h0Var2.mo34156a();
                } catch (RuntimeException e2) {
                    C1175j.m34419a("ExoPlayerImplInternal", "Reset failed.", e2);
                }
            }
        }
        this.f6199v = new AbstractC1236h0[0];
        if (z3) {
            this.f6175D = null;
        } else if (z4) {
            if (this.f6175D == null && !this.f6197t.f4782a.m34040c()) {
                C1198b0 b0Var = this.f6197t;
                b0Var.f4782a.mo32960a(b0Var.f4784c.f6755a, this.f6188k);
                this.f6175D = new C1514e(AbstractC1252n0.f5012a, this.f6188k.f5015c, this.f6197t.f4794m + this.f6188k.m34025e());
            }
            z3 = true;
        }
        this.f6195r.m34536a(!z3);
        m33034c(false);
        if (z4) {
            this.f6195r.m34549a(AbstractC1252n0.f5012a);
            Iterator<C1512c> it = this.f6193p.iterator();
            while (it.hasNext()) {
                it.next().f6207a.m34169a(false);
            }
            this.f6193p.clear();
            this.f6177F = 0;
        }
        AbstractC1634r.C1635a a = z3 ? this.f6197t.m34271a(this.f6172A, this.f6187j) : this.f6197t.f4784c;
        long j = z3 ? -9223372036854775807L : this.f6197t.f4794m;
        long j2 = z3 ? -9223372036854775807L : this.f6197t.f4786e;
        AbstractC1252n0 n0Var = z4 ? AbstractC1252n0.f5012a : this.f6197t.f4782a;
        Object obj = z4 ? null : this.f6197t.f4783b;
        C1198b0 b0Var2 = this.f6197t;
        this.f6197t = new C1198b0(n0Var, obj, a, j, j2, b0Var2.f4787f, false, z4 ? TrackGroupArray.f1858d : b0Var2.f4789h, z4 ? this.f6181d : this.f6197t.f4790i, a, j, 0L, j);
        if (z2 && (rVar = this.f6198u) != null) {
            rVar.mo32504a(this);
            this.f6198u = null;
        }
    }

    /* renamed from: a */
    public final void m33052a(boolean[] zArr, int i) throws ExoPlaybackException {
        this.f6199v = new AbstractC1236h0[i];
        C1675m i2 = this.f6195r.m34528e().m32461i();
        for (int i3 = 0; i3 < this.f6178a.length; i3++) {
            if (!i2.m32399a(i3)) {
                this.f6178a[i3].mo34156a();
            }
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f6178a.length; i5++) {
            i4 = i4;
            if (i2.m32399a(i5)) {
                m33075a(i5, zArr[i5], i4);
                i4++;
            }
        }
    }

    /* renamed from: a */
    public final boolean m33065a(C1512c cVar) {
        Object obj = cVar.f6210d;
        if (obj == null) {
            Pair<Object, Long> a = m33063a(new C1514e(cVar.f6207a.m34163g(), cVar.f6207a.m34161i(), C1220c.m34196a(cVar.f6207a.m34165e())), false);
            if (a == null) {
                return false;
            }
            cVar.m33006a(this.f6197t.f4782a.mo32715a(a.first), ((Long) a.second).longValue(), a.first);
            return true;
        }
        int a2 = this.f6197t.f4782a.mo32715a(obj);
        if (a2 == -1) {
            return false;
        }
        cVar.f6208b = a2;
        return true;
    }

    /* renamed from: b */
    public final void m33051b() throws ExoPlaybackException, IOException {
        AbstractC1236h0[] h0VarArr;
        int i;
        long b = this.f6194q.mo34311b();
        m33008t();
        if (!this.f6195r.m34526g()) {
            m33018j();
            m33048b(b, 10L);
            return;
        }
        C1652y e = this.f6195r.m34528e();
        C1161a0.m34515a("doSomeWork");
        m33007u();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        e.f6792a.mo32518a(this.f6197t.f4794m - this.f6189l, this.f6190m);
        boolean z = true;
        boolean z2 = true;
        for (AbstractC1236h0 h0Var : this.f6199v) {
            h0Var.mo32131a(this.f6176E, elapsedRealtime * 1000);
            z2 = z2 && h0Var.mo32123c();
            boolean z3 = h0Var.mo32126b() || h0Var.mo32123c() || m33036c(h0Var);
            if (!z3) {
                h0Var.mo34144n();
            }
            z = z && z3;
        }
        if (!z) {
            m33018j();
        }
        long j = e.f6797f.f6864e;
        if (z2 && ((j == -9223372036854775807L || j <= this.f6197t.f4794m) && e.f6797f.f6866g)) {
            m33050b(4);
            m33009s();
        } else if (this.f6197t.f4787f == 2 && m33021g(z)) {
            m33050b(3);
            if (this.f6201x) {
                m33010r();
            }
        } else if (this.f6197t.f4787f == 3 && (this.f6199v.length != 0 ? !z : !m33022g())) {
            this.f6202y = this.f6201x;
            m33050b(2);
            m33009s();
        }
        if (this.f6197t.f4787f == 2) {
            for (AbstractC1236h0 h0Var2 : this.f6199v) {
                h0Var2.mo34144n();
            }
        }
        if ((this.f6201x && this.f6197t.f4787f == 3) || (i = this.f6197t.f4787f) == 2) {
            m33048b(b, 10L);
        } else if (this.f6199v.length == 0 || i == 4) {
            this.f6184g.mo34304b(2);
        } else {
            m33048b(b, 1000L);
        }
        C1161a0.m34516a();
    }

    /* renamed from: b */
    public final void m33050b(int i) {
        C1198b0 b0Var = this.f6197t;
        if (b0Var.f4787f != i) {
            this.f6197t = b0Var.m34278a(i);
        }
    }

    /* renamed from: b */
    public final void m33049b(long j) throws ExoPlaybackException {
        if (this.f6195r.m34526g()) {
            j = this.f6195r.m34528e().m32466d(j);
        }
        this.f6176E = j;
        this.f6191n.m34187a(j);
        for (AbstractC1236h0 h0Var : this.f6199v) {
            h0Var.mo34153a(this.f6176E);
        }
        m33015m();
    }

    /* renamed from: b */
    public final void m33048b(long j, long j2) {
        this.f6184g.mo34304b(2);
        this.f6184g.mo34306a(2, j + j2);
    }

    /* renamed from: b */
    public final void m33047b(C1221c0 c0Var) throws ExoPlaybackException {
        AbstractC1236h0[] h0VarArr;
        this.f6186i.obtainMessage(1, c0Var).sendToTarget();
        m33077a(c0Var.f4896a);
        for (AbstractC1236h0 h0Var : this.f6178a) {
            if (h0Var != null) {
                h0Var.mo34155a(c0Var.f4896a);
            }
        }
    }

    /* renamed from: b */
    public final void m33046b(C1230f0 f0Var) throws ExoPlaybackException {
        if (!f0Var.m34160j()) {
            try {
                f0Var.m34164f().mo33829a(f0Var.m34162h(), f0Var.m34166d());
            } finally {
                f0Var.m34169a(true);
            }
        }
    }

    /* renamed from: b */
    public final void m33045b(AbstractC1236h0 h0Var) throws ExoPlaybackException {
        if (h0Var.mo34150d() == 2) {
            h0Var.stop();
        }
    }

    /* renamed from: b */
    public final void m33044b(C1244l0 l0Var) {
        this.f6196s = l0Var;
    }

    /* renamed from: b */
    public void m33043b(AbstractC1252n0 n0Var, int i, long j) {
        this.f6184g.mo34305a(3, new C1514e(n0Var, i, j)).sendToTarget();
    }

    /* renamed from: b */
    public final void m33042b(AbstractC1631p pVar) {
        if (this.f6195r.m34548a(pVar)) {
            this.f6195r.m34553a(this.f6176E);
            m33020h();
        }
    }

    /* renamed from: b */
    public final void m33041b(AbstractC1634r rVar, boolean z, boolean z2) {
        this.f6174C++;
        m33053a(false, true, z, z2);
        this.f6182e.onPrepared();
        this.f6198u = rVar;
        m33050b(2);
        rVar.mo32503a(this, this.f6183f.mo32372a());
        this.f6184g.mo34309a(2);
    }

    /* renamed from: b */
    public final void m33040b(boolean z) throws ExoPlaybackException {
        AbstractC1634r.C1635a aVar = this.f6195r.m34528e().f6797f.f6860a;
        long a = m33061a(aVar, this.f6197t.f4794m, true);
        if (a != this.f6197t.f4794m) {
            C1198b0 b0Var = this.f6197t;
            this.f6197t = b0Var.m34273a(aVar, a, b0Var.f4786e, m33028e());
            if (z) {
                this.f6192o.m33001b(4);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m33039c() {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.a0 r0 = r0.f6195r
            b.s.b.a.y r0 = r0.m34527f()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r6
            long r0 = r0.m32464f()
            r7 = r0
            r0 = 0
            r9 = r0
        L_0x0016:
            r0 = r5
            b.s.b.a.h0[] r0 = r0.f6178a
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 >= r1) goto L_0x007c
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r9
            r0 = r0[r1]
            int r0 = r0.mo34150d()
            if (r0 == 0) goto L_0x0073
            r0 = r5
            b.s.b.a.h0[] r0 = r0.f6178a
            r1 = r9
            r0 = r0[r1]
            b.s.b.a.w0.h0 r0 = r0.mo34148h()
            r1 = r6
            b.s.b.a.w0.h0[] r1 = r1.f6794c
            r2 = r9
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0050
            r0 = r7
            r11 = r0
            goto L_0x0073
        L_0x0050:
            r0 = r5
            b.s.b.a.h0[] r0 = r0.f6178a
            r1 = r9
            r0 = r0[r1]
            long r0 = r0.mo34143o()
            r11 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006b
            r0 = -9223372036854775808
            return r0
        L_0x006b:
            r0 = r11
            r1 = r7
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
        L_0x0073:
            int r9 = r9 + 1
            r0 = r11
            r7 = r0
            goto L_0x0016
        L_0x007c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1509u.m33039c():long");
    }

    /* renamed from: c */
    public void m33038c(C1221c0 c0Var) {
        this.f6184g.mo34305a(4, c0Var).sendToTarget();
    }

    /* renamed from: c */
    public final /* synthetic */ void m33037c(C1230f0 f0Var) {
        try {
            m33046b(f0Var);
        } catch (ExoPlaybackException e) {
            C1175j.m34419a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public final void m33035c(AbstractC1631p pVar) throws ExoPlaybackException {
        if (this.f6195r.m34548a(pVar)) {
            C1652y d = this.f6195r.m34529d();
            d.m32481a(this.f6191n.mo33807g().f4896a, this.f6197t.f4782a);
            m33072a(d.m32462h(), d.m32461i());
            if (!this.f6195r.m34526g()) {
                m33049b(this.f6195r.m34555a().f6797f.f6861b);
                m33058a((C1652y) null);
            }
            m33020h();
        }
    }

    /* renamed from: c */
    public final void m33034c(boolean z) {
        C1198b0 b0Var = this.f6197t;
        if (b0Var.f4788g != z) {
            this.f6197t = b0Var.m34272a(z);
        }
    }

    /* renamed from: c */
    public final boolean m33036c(AbstractC1236h0 h0Var) {
        C1652y d = this.f6195r.m34527f().m32467d();
        return d != null && d.f6795d && h0Var.mo34147i();
    }

    /* renamed from: d */
    public Looper m33033d() {
        return this.f6185h.getLooper();
    }

    /* renamed from: d */
    public final void m33032d(C1221c0 c0Var) {
        this.f6191n.mo33822a(c0Var);
    }

    /* renamed from: d */
    public final void m33031d(C1230f0 f0Var) throws ExoPlaybackException {
        if (f0Var.m34165e() == -9223372036854775807L) {
            m33027e(f0Var);
        } else if (this.f6198u == null || this.f6174C > 0) {
            this.f6193p.add(new C1512c(f0Var));
        } else {
            C1512c cVar = new C1512c(f0Var);
            if (m33065a(cVar)) {
                this.f6193p.add(cVar);
                Collections.sort(this.f6193p);
                return;
            }
            f0Var.m34169a(false);
        }
    }

    /* renamed from: d */
    public void mo32686a(AbstractC1631p pVar) {
        this.f6184g.mo34305a(10, pVar).sendToTarget();
    }

    /* renamed from: d */
    public void m33029d(boolean z) {
        this.f6184g.mo34308a(1, z ? 1 : 0, 0).sendToTarget();
    }

    /* renamed from: e */
    public final long m33028e() {
        return m33074a(this.f6197t.f4792k);
    }

    /* renamed from: e */
    public final void m33027e(C1230f0 f0Var) throws ExoPlaybackException {
        if (f0Var.m34167c().getLooper() == this.f6184g.mo34310a()) {
            m33046b(f0Var);
            int i = this.f6197t.f4787f;
            if (i == 3 || i == 2) {
                this.f6184g.mo34309a(2);
                return;
            }
            return;
        }
        this.f6184g.mo34305a(16, f0Var).sendToTarget();
    }

    /* renamed from: e */
    public final void m33026e(boolean z) throws ExoPlaybackException {
        this.f6202y = false;
        this.f6201x = z;
        if (!z) {
            m33009s();
            m33007u();
            return;
        }
        int i = this.f6197t.f4787f;
        if (i == 3) {
            m33010r();
            this.f6184g.mo34309a(2);
        } else if (i == 2) {
            this.f6184g.mo34309a(2);
        }
    }

    /* renamed from: f */
    public final void m33025f() {
        m33050b(4);
        m33053a(false, false, true, false);
    }

    /* renamed from: f */
    public final void m33024f(final C1230f0 f0Var) {
        f0Var.m34167c().post(new Runnable(this, f0Var) { // from class: b.s.b.a.t

            /* renamed from: a */
            public final C1509u f6158a;

            /* renamed from: b */
            public final C1230f0 f6159b;

            {
                this.f6158a = this;
                this.f6159b = f0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f6158a.m33037c(this.f6159b);
            }
        });
    }

    /* renamed from: f */
    public final void m33023f(boolean z) throws ExoPlaybackException {
        this.f6172A = z;
        if (!this.f6195r.m34531b(z)) {
            m33040b(true);
        }
        m33056a(false);
    }

    /* renamed from: g */
    public final boolean m33022g() {
        C1652y e = this.f6195r.m34528e();
        C1652y d = e.m32467d();
        long j = e.f6797f.f6864e;
        return j == -9223372036854775807L || this.f6197t.f4794m < j || (d != null && (d.f6795d || d.f6797f.f6860a.m32501a()));
    }

    /* renamed from: g */
    public final boolean m33021g(boolean z) {
        if (this.f6199v.length == 0) {
            return m33022g();
        }
        boolean z2 = false;
        if (!z) {
            return false;
        }
        if (!this.f6197t.f4788g) {
            return true;
        }
        C1652y d = this.f6195r.m34529d();
        if ((d.m32460j() && d.f6797f.f6866g) || this.f6182e.mo32496a(m33028e(), this.f6191n.mo33807g().f4896a, this.f6202y)) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: h */
    public final void m33020h() {
        C1652y d = this.f6195r.m34529d();
        long e = d.m32465e();
        if (e == Long.MIN_VALUE) {
            m33034c(false);
            return;
        }
        boolean a = this.f6182e.mo32497a(m33074a(e), this.f6191n.mo33807g().f4896a);
        m33034c(a);
        if (a) {
            d.m32480a(this.f6176E);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01b2  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1509u.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: i */
    public final void m33019i() {
        if (this.f6192o.m33003a(this.f6197t)) {
            this.f6186i.obtainMessage(0, this.f6192o.f6212b, this.f6192o.f6213c ? this.f6192o.f6214d : -1, this.f6197t).sendToTarget();
            this.f6192o.m33000b(this.f6197t);
        }
    }

    /* renamed from: j */
    public final void m33018j() throws IOException {
        C1652y d = this.f6195r.m34529d();
        C1652y f = this.f6195r.m34527f();
        if (!(d == null || d.f6795d)) {
            if (f == null || f.m32467d() == d) {
                for (AbstractC1236h0 h0Var : this.f6199v) {
                    if (!h0Var.mo34147i()) {
                        return;
                    }
                }
                d.f6792a.mo32512d();
            }
        }
    }

    /* renamed from: k */
    public final void m33017k() throws IOException {
        if (this.f6195r.m34529d() != null) {
            for (AbstractC1236h0 h0Var : this.f6199v) {
                if (!h0Var.mo34147i()) {
                    return;
                }
            }
        }
        this.f6198u.mo32502b();
    }

    /* renamed from: l */
    public final void m33016l() throws IOException {
        this.f6195r.m34553a(this.f6176E);
        if (this.f6195r.m34525h()) {
            C1676z a = this.f6195r.m34551a(this.f6176E, this.f6197t);
            if (a == null) {
                m33017k();
                return;
            }
            this.f6195r.m34535a(this.f6179b, this.f6180c, this.f6182e.mo32491e(), this.f6198u, a).mo32517a(this, a.f6861b);
            m33034c(true);
            m33056a(false);
        }
    }

    /* renamed from: m */
    public final void m33015m() {
        AbstractC1668i[] a;
        for (C1652y c = this.f6195r.m34530c(); c != null; c = c.m32467d()) {
            C1675m i = c.m32461i();
            if (i != null) {
                for (AbstractC1668i iVar : i.f6858c.m32408a()) {
                    if (iVar != null) {
                        iVar.mo32414e();
                    }
                }
            }
        }
    }

    /* renamed from: n */
    public void m33014n() {
        synchronized (this) {
            if (!this.f6200w) {
                this.f6184g.mo34309a(7);
                boolean z = false;
                while (!this.f6200w) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    /* renamed from: o */
    public final void m33013o() {
        m33053a(true, true, true, true);
        this.f6182e.mo32492d();
        m33050b(1);
        this.f6185h.quit();
        synchronized (this) {
            this.f6200w = true;
            notifyAll();
        }
    }

    /* renamed from: p */
    public final void m33012p() throws ExoPlaybackException {
        if (this.f6195r.m34526g()) {
            float f = this.f6191n.mo33807g().f4896a;
            C1652y f2 = this.f6195r.m34527f();
            boolean z = true;
            for (C1652y e = this.f6195r.m34528e(); e != null && e.f6795d; e = e.m32467d()) {
                C1675m b = e.m32472b(f, this.f6197t.f4782a);
                if (b != null) {
                    if (z) {
                        C1652y e2 = this.f6195r.m34528e();
                        boolean a = this.f6195r.m34544a(e2);
                        boolean[] zArr = new boolean[this.f6178a.length];
                        long a2 = e2.m32476a(b, this.f6197t.f4794m, a, zArr);
                        C1198b0 b0Var = this.f6197t;
                        if (!(b0Var.f4787f == 4 || a2 == b0Var.f4794m)) {
                            C1198b0 b0Var2 = this.f6197t;
                            this.f6197t = b0Var2.m34273a(b0Var2.f4784c, a2, b0Var2.f4786e, m33028e());
                            this.f6192o.m33001b(4);
                            m33049b(a2);
                        }
                        boolean[] zArr2 = new boolean[this.f6178a.length];
                        int i = 0;
                        int i2 = 0;
                        while (true) {
                            AbstractC1236h0[] h0VarArr = this.f6178a;
                            if (i >= h0VarArr.length) {
                                break;
                            }
                            AbstractC1236h0 h0Var = h0VarArr[i];
                            zArr2[i] = h0Var.mo34150d() != 0;
                            AbstractC1563h0 h0Var2 = e2.f6794c[i];
                            i2 = i2;
                            if (h0Var2 != null) {
                                i2++;
                            }
                            if (zArr2[i]) {
                                if (h0Var2 != h0Var.mo34148h()) {
                                    m33069a(h0Var);
                                } else if (zArr[i]) {
                                    h0Var.mo34153a(this.f6176E);
                                }
                            }
                            i++;
                        }
                        this.f6197t = this.f6197t.m34276a(e2.m32462h(), e2.m32461i());
                        m33052a(zArr2, i2);
                    } else {
                        this.f6195r.m34544a(e);
                        if (e.f6795d) {
                            e.m32477a(b, Math.max(e.f6797f.f6861b, e.m32468c(this.f6176E)), false);
                        }
                    }
                    m33056a(true);
                    if (this.f6197t.f4787f != 4) {
                        m33020h();
                        m33007u();
                        this.f6184g.mo34309a(2);
                        return;
                    }
                    return;
                }
                if (e == f2) {
                    z = false;
                }
            }
        }
    }

    /* renamed from: q */
    public final void m33011q() {
        for (int size = this.f6193p.size() - 1; size >= 0; size--) {
            if (!m33065a(this.f6193p.get(size))) {
                this.f6193p.get(size).f6207a.m34169a(false);
                this.f6193p.remove(size);
            }
        }
        Collections.sort(this.f6193p);
    }

    /* renamed from: r */
    public final void m33010r() throws ExoPlaybackException {
        this.f6202y = false;
        this.f6191n.m34183c();
        for (AbstractC1236h0 h0Var : this.f6199v) {
            h0Var.start();
        }
    }

    /* renamed from: s */
    public final void m33009s() throws ExoPlaybackException {
        this.f6191n.m34182d();
        for (AbstractC1236h0 h0Var : this.f6199v) {
            m33045b(h0Var);
        }
    }

    /* renamed from: t */
    public final void m33008t() throws ExoPlaybackException, IOException {
        AbstractC1634r rVar = this.f6198u;
        if (rVar != null) {
            if (this.f6174C > 0) {
                rVar.mo32502b();
                return;
            }
            m33016l();
            C1652y d = this.f6195r.m34529d();
            int i = 0;
            if (d == null || d.m32460j()) {
                m33034c(false);
            } else if (!this.f6197t.f4788g) {
                m33020h();
            }
            if (this.f6195r.m34526g()) {
                C1652y e = this.f6195r.m34528e();
                C1652y f = this.f6195r.m34527f();
                boolean z = false;
                while (this.f6201x && e != f && this.f6176E >= e.m32467d().m32463g()) {
                    if (z) {
                        m33019i();
                    }
                    int i2 = e.f6797f.f6865f ? 0 : 3;
                    C1652y a = this.f6195r.m34555a();
                    m33058a(e);
                    C1198b0 b0Var = this.f6197t;
                    C1676z zVar = a.f6797f;
                    this.f6197t = b0Var.m34273a(zVar.f6860a, zVar.f6861b, zVar.f6862c, m33028e());
                    this.f6192o.m33001b(i2);
                    m33007u();
                    e = a;
                    z = true;
                }
                if (f.f6797f.f6866g) {
                    while (true) {
                        AbstractC1236h0[] h0VarArr = this.f6178a;
                        if (i < h0VarArr.length) {
                            AbstractC1236h0 h0Var = h0VarArr[i];
                            AbstractC1563h0 h0Var2 = f.f6794c[i];
                            if (h0Var2 != null && h0Var.mo34148h() == h0Var2 && h0Var.mo34147i()) {
                                h0Var.mo34146j();
                            }
                            i++;
                        } else {
                            return;
                        }
                    }
                } else if (f.m32467d() != null) {
                    int i3 = 0;
                    while (true) {
                        AbstractC1236h0[] h0VarArr2 = this.f6178a;
                        if (i3 < h0VarArr2.length) {
                            AbstractC1236h0 h0Var3 = h0VarArr2[i3];
                            AbstractC1563h0 h0Var4 = f.f6794c[i3];
                            if (h0Var3.mo34148h() != h0Var4) {
                                return;
                            }
                            if (h0Var4 == null || h0Var3.mo34147i()) {
                                i3++;
                            } else {
                                return;
                            }
                        } else if (!f.m32467d().f6795d) {
                            m33018j();
                            return;
                        } else {
                            C1675m i4 = f.m32461i();
                            C1652y b = this.f6195r.m34534b();
                            C1675m i5 = b.m32461i();
                            boolean z2 = b.f6792a.mo32511f() != -9223372036854775807L;
                            int i6 = 0;
                            while (true) {
                                AbstractC1236h0[] h0VarArr3 = this.f6178a;
                                if (i6 < h0VarArr3.length) {
                                    AbstractC1236h0 h0Var5 = h0VarArr3[i6];
                                    if (i4.m32399a(i6)) {
                                        if (z2) {
                                            h0Var5.mo34146j();
                                        } else if (!h0Var5.mo34142p()) {
                                            AbstractC1668i a2 = i5.f6858c.m32407a(i6);
                                            boolean a3 = i5.m32399a(i6);
                                            boolean z3 = this.f6179b[i6].mo34141e() == 6;
                                            C1240j0 j0Var = i4.f6857b[i6];
                                            C1240j0 j0Var2 = i5.f6857b[i6];
                                            if (!a3 || !j0Var2.equals(j0Var) || z3) {
                                                h0Var5.mo34146j();
                                            } else {
                                                h0Var5.mo34151a(m33059a(a2), b.f6794c[i6], b.m32464f());
                                            }
                                        }
                                    }
                                    i6++;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: u */
    public final void m33007u() throws ExoPlaybackException {
        if (this.f6195r.m34526g()) {
            C1652y e = this.f6195r.m34528e();
            long f = e.f6792a.mo32511f();
            if (f != -9223372036854775807L) {
                m33049b(f);
                if (f != this.f6197t.f4794m) {
                    C1198b0 b0Var = this.f6197t;
                    this.f6197t = b0Var.m34273a(b0Var.f4784c, f, b0Var.f4786e, m33028e());
                    this.f6192o.m33001b(4);
                }
            } else {
                long e2 = this.f6191n.m34181e();
                this.f6176E = e2;
                long c = e.m32468c(e2);
                m33073a(this.f6197t.f4794m, c);
                this.f6197t.f4794m = c;
            }
            C1652y d = this.f6195r.m34529d();
            this.f6197t.f4792k = d.m32469c();
            this.f6197t.f4793l = m33028e();
        }
    }
}
