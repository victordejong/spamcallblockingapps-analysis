package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import android.util.SparseArray;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/u.class */
public final class C24391u implements AbstractC24408h {

    /* renamed from: e */
    public boolean f68025e;

    /* renamed from: f */
    public boolean f68026f;

    /* renamed from: g */
    public boolean f68027g;

    /* renamed from: h */
    public long f68028h;

    /* renamed from: i */
    public C24387s f68029i;

    /* renamed from: j */
    public AbstractC24409i f68030j;

    /* renamed from: k */
    public boolean f68031k;

    /* renamed from: a */
    public final C24771c0 f68021a = new C24771c0(0);

    /* renamed from: c */
    public final C24798t f68023c = new C24798t(4096);

    /* renamed from: b */
    public final SparseArray<C24392a> f68022b = new SparseArray<>();

    /* renamed from: d */
    public final C24390t f68024d = new C24390t();

    /* renamed from: e.m.a.c.g1.e0.u$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/u$a.class */
    public static final class C24392a {

        /* renamed from: a */
        public final AbstractC24373j f68032a;

        /* renamed from: b */
        public final C24771c0 f68033b;

        /* renamed from: c */
        public final C24797s f68034c = new C24797s(new byte[64]);

        /* renamed from: d */
        public boolean f68035d;

        /* renamed from: e */
        public boolean f68036e;

        /* renamed from: f */
        public boolean f68037f;

        /* renamed from: g */
        public int f68038g;

        /* renamed from: h */
        public long f68039h;

        public C24392a(AbstractC24373j abstractC24373j, C24771c0 c24771c0) {
            this.f68032a = abstractC24373j;
            this.f68033b = c24771c0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0 != r8) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062 A[LOOP:0: B:17:0x0056->B:19:0x0062, LOOP_END] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5131a(long r6, long r8) {
        /*
            r5 = this;
            r0 = r5
            e.m.a.c.q1.c0 r0 = r0.f68021a
            long r0 = r0.m4631c()
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L14
            r0 = 1
            r10 = r0
            goto L17
        L14:
            r0 = 0
            r10 = r0
        L17:
            r0 = r10
            if (r0 != 0) goto L30
            r0 = r5
            e.m.a.c.q1.c0 r0 = r0.f68021a
            long r0 = r0.f69423a
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L42
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L42
        L30:
            r0 = r5
            e.m.a.c.q1.c0 r0 = r0.f68021a
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f69425c = r1
            r0 = r5
            e.m.a.c.q1.c0 r0 = r0.f68021a
            r1 = r8
            r0.m4630d(r1)
        L42:
            r0 = r5
            e.m.a.c.g1.e0.s r0 = r0.f68029i
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L53
            r0 = r11
            r1 = r8
            r0.m5305e(r1)
        L53:
            r0 = 0
            r10 = r0
        L56:
            r0 = r10
            r1 = r5
            android.util.SparseArray<e.m.a.c.g1.e0.u$a> r1 = r1.f68022b
            int r1 = r1.size()
            if (r0 >= r1) goto L86
            r0 = r5
            android.util.SparseArray<e.m.a.c.g1.e0.u$a> r0 = r0.f68022b
            r1 = r10
            java.lang.Object r0 = r0.valueAt(r1)
            e.m.a.c.g1.e0.u$a r0 = (p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24391u.C24392a) r0
            r11 = r0
            r0 = r11
            r1 = 0
            r0.f68037f = r1
            r0 = r11
            e.m.a.c.g1.e0.j r0 = r0.f68032a
            r0.mo5184a()
            int r10 = r10 + 1
            goto L56
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24391u.mo5131a(long, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x03e8  */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* JADX WARN: Type inference failed for: r0v275, types: [long] */
    /* JADX WARN: Type inference failed for: r0v311, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r9, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24391u.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f68030j = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        boolean z = false;
        c24353e.m5210e(bArr, 0, 14, false);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            c24353e.m5214a(bArr[13] & 7, false);
            c24353e.m5210e(bArr, 0, 3, false);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                z = true;
            }
            return z;
        }
        return false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
