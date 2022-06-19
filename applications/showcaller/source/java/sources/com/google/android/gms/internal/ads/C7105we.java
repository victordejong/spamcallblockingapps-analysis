package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
/* renamed from: com.google.android.gms.internal.ads.we */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/we.class */
public final class C7105we implements AbstractC6771nd {

    /* renamed from: a */
    public static final AbstractC6845pd f31528a = new C6994te();

    /* renamed from: b */
    private static final int f31529b = C6961si.m11010l("seig");

    /* renamed from: c */
    private static final byte[] f31530c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: m */
    private int f31540m;

    /* renamed from: n */
    private int f31541n;

    /* renamed from: o */
    private long f31542o;

    /* renamed from: p */
    private int f31543p;

    /* renamed from: q */
    private C6665ki f31544q;

    /* renamed from: r */
    private long f31545r;

    /* renamed from: t */
    private C7068ve f31547t;

    /* renamed from: u */
    private int f31548u;

    /* renamed from: v */
    private int f31549v;

    /* renamed from: w */
    private int f31550w;

    /* renamed from: x */
    private AbstractC6808od f31551x;

    /* renamed from: y */
    private boolean f31552y;

    /* renamed from: i */
    private final C6665ki f31536i = new C6665ki(16);

    /* renamed from: e */
    private final C6665ki f31532e = new C6665ki(C6591ii.f24281a);

    /* renamed from: f */
    private final C6665ki f31533f = new C6665ki(5);

    /* renamed from: g */
    private final C6665ki f31534g = new C6665ki();

    /* renamed from: h */
    private final C6665ki f31535h = new C6665ki(1);

    /* renamed from: j */
    private final byte[] f31537j = new byte[16];

    /* renamed from: k */
    private final Stack<C6587ie> f31538k = new Stack<>();

    /* renamed from: l */
    private final LinkedList<C7031ue> f31539l = new LinkedList<>();

    /* renamed from: d */
    private final SparseArray<C7068ve> f31531d = new SparseArray<>();

    /* renamed from: s */
    private long f31546s = -9223372036854775807L;

    public C7105we(int i, C6850pi c6850pi, C6401df c6401df) {
        m9618a();
    }

    /* renamed from: a */
    private final void m9618a() {
        this.f31540m = 0;
        this.f31543p = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:252:0x0b45, code lost:
        m9618a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0b49, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x070b  */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v324, types: [long] */
    /* JADX WARN: Type inference failed for: r0v326, types: [long] */
    /* JADX WARN: Type inference failed for: r0v460, types: [long] */
    /* JADX WARN: Type inference failed for: r0v486, types: [long] */
    /* JADX WARN: Type inference failed for: r0v496, types: [long] */
    /* JADX WARN: Type inference failed for: r0v543, types: [long] */
    /* JADX WARN: Type inference failed for: r0v545, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m9617b(long r10) {
        /*
            Method dump skipped, instructions count: 2890
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7105we.m9617b(long):void");
    }

    /* renamed from: c */
    private static void m9616c(C6665ki c6665ki, int i, C6476ff c6476ff) {
        c6665ki.m13899i(i + 8);
        int m13917b = C6661ke.m13917b(c6665ki.m13890r());
        if ((m13917b & 1) == 0) {
            boolean z = (m13917b & 2) != 0;
            int m13887u = c6665ki.m13887u();
            int i2 = c6476ff.f22863e;
            if (m13887u == i2) {
                Arrays.fill(c6476ff.f22871m, 0, m13887u, z);
                c6476ff.m15256a(c6665ki.m13904d());
                c6665ki.m13897k(c6476ff.f22874p.f25221a, 0, c6476ff.f22873o);
                c6476ff.f22874p.m13899i(0);
                c6476ff.f22875q = false;
                return;
            }
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(m13887u);
            sb.append(", ");
            sb.append(i2);
            throw new zzanp(sb.toString());
        }
        throw new zzanp("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0133  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzapk m9611h(java.util.List<com.google.android.gms.internal.ads.C6624je> r8) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7105we.m9611h(java.util.List):com.google.android.gms.internal.ads.zzapk");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: d */
    public final void mo9615d(long j, long j2) {
        int size = this.f31531d.size();
        for (int i = 0; i < size; i++) {
            this.f31531d.valueAt(i).m10037b();
        }
        this.f31539l.clear();
        this.f31538k.clear();
        m9618a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fb, code lost:
        r0 = r8.f31547t;
        r0 = r0.f31146a;
        r0 = r0.f22866h;
        r0 = r0.f31150e;
        r12 = r0[r0];
        r8.f31548u = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0126, code lost:
        if (r0.f22870l == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
        r0 = r0.f22874p;
        r0 = r0.f22859a.f29457a;
        r9 = r0.f22872n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0141, code lost:
        if (r9 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0147, code lost:
        r9 = r0.f31148c.f21604h[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0153, code lost:
        r0 = r9.f22123a;
        r0 = r0.f22871m[r0];
        r0 = r8.f31535h;
        r0 = r0.f25221a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0170, code lost:
        if (true == r0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0173, code lost:
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0179, code lost:
        r12 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x017e, code lost:
        r0[0] = (byte) (r12 | r0);
        r0.m13899i(0);
        r0 = r0.f31147b;
        r0.mo9665d(r8.f31535h, 1);
        r0.mo9665d(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01a9, code lost:
        if (r0 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01ac, code lost:
        r12 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01b4, code lost:
        r0 = r0.m13895m();
        r0.m13898j(-2);
        r0 = (r0 * 6) + 2;
        r0.mo9665d(r0, r0);
        r12 = (r0 + 1) + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01dd, code lost:
        r8.f31549v = r12;
        r12 = r8.f31548u + r12;
        r8.f31548u = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01f5, code lost:
        r8.f31549v = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0205, code lost:
        if (r8.f31547t.f31148c.f21603g != 1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0208, code lost:
        r8.f31548u = r12 - 8;
        r10.m13293d(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0219, code lost:
        r8.f31540m = 4;
        r8.f31550w = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0223, code lost:
        r0 = r8.f31547t;
        r0 = r0.f31146a;
        r0 = r0.f31148c;
        r0 = r0.f31147b;
        r0 = r0.f31150e;
        r0 = r0.f21607k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0248, code lost:
        if (r0 != 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x024b, code lost:
        r0 = r8.f31549v;
        r0 = r8.f31548u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x025b, code lost:
        if (r0 >= r0) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x025e, code lost:
        r8.f31549v += r0.mo9667b(r10, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x027c, code lost:
        r0 = r8.f31533f.f25221a;
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = 4 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x02a1, code lost:
        if (r8.f31549v >= r8.f31548u) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02a4, code lost:
        r0 = r8.f31550w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02ac, code lost:
        if (r0 != 0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02af, code lost:
        r10.m13295b(r0, r0, r0 + 1, false);
        r8.f31533f.m13899i(0);
        r8.f31550w = r8.f31533f.m13887u() - 1;
        r8.f31532e.m13899i(0);
        r0.mo9665d(r8.f31532e, 4);
        r0.mo9665d(r8.f31533f, 1);
        r8.f31549v += 5;
        r8.f31548u += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0309, code lost:
        r0 = r0.mo9667b(r10, r0, false);
        r8.f31549v += r0;
        r8.f31550w -= r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x032f, code lost:
        r0 = r0.f22868j[r0];
        r0 = r0.f22867i[r0];
        r0 = r0.f22870l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x034c, code lost:
        if (true == r0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x034f, code lost:
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0355, code lost:
        r12 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x035a, code lost:
        r0 = r0.f22869k[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0365, code lost:
        if (r0 == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0368, code lost:
        r0 = r0.f22872n;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0371, code lost:
        if (r0 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0374, code lost:
        r9 = r0.f21604h[r0.f22859a.f29457a];
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0383, code lost:
        r0 = r8.f31547t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x038d, code lost:
        if (r9 == r0.f31154i) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0390, code lost:
        r10 = new com.google.android.gms.internal.ads.C7067vd(1, r9.f22124b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x03a0, code lost:
        r10 = r0.f31153h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x03a8, code lost:
        r9 = null;
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03ac, code lost:
        r0 = r8.f31547t;
        r0.f31153h = r10;
        r0.f31154i = r9;
        r0.mo9668a((r0 + r0) * 1000, r12 | (r0 ? 1 : 0), r8.f31548u, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03e0, code lost:
        if (r8.f31539l.isEmpty() == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03e3, code lost:
        r0 = r8.f31547t;
        r0.f31150e++;
        r0 = r0.f31151f + 1;
        r0.f31151f = r0;
        r0 = r0.f22865g;
        r0 = r0.f31152g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x040f, code lost:
        if (r0 != r0[r0]) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0412, code lost:
        r0.f31152g = r0 + 1;
        r0.f31151f = 0;
        r8.f31547t = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0424, code lost:
        r8.f31540m = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x042a, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x042b, code lost:
        r0 = r8.f31539l.removeFirst().f30587a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x043b, code lost:
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v235, types: [long] */
    /* JADX WARN: Type inference failed for: r0v276, types: [long] */
    /* JADX WARN: Type inference failed for: r0v318, types: [long] */
    /* JADX WARN: Type inference failed for: r0v320, types: [long] */
    /* JADX WARN: Type inference failed for: r0v355, types: [long] */
    /* JADX WARN: Type inference failed for: r0v357, types: [long] */
    /* JADX WARN: Type inference failed for: r0v361, types: [long] */
    /* JADX WARN: Type inference failed for: r0v363, types: [long] */
    /* JADX WARN: Type inference failed for: r0v365, types: [long] */
    /* JADX WARN: Type inference failed for: r0v367, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v377, types: [long] */
    /* JADX WARN: Type inference failed for: r0v478, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9614e(com.google.android.gms.internal.ads.C6734md r9, com.google.android.gms.internal.ads.C6956sd r10) {
        /*
            Method dump skipped, instructions count: 2424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7105we.mo9614e(com.google.android.gms.internal.ads.md, com.google.android.gms.internal.ads.sd):int");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: f */
    public final boolean mo9613f(C6734md c6734md) {
        return C6364cf.m16075a(c6734md);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6771nd
    /* renamed from: g */
    public final void mo9612g(AbstractC6808od abstractC6808od) {
        this.f31551x = abstractC6808od;
    }
}
