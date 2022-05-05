package p081h.p160h.p179e.p180a.p181f;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p203i.p383d.C10080c;
import p081h.p203i.p383d.C10083d;
/* renamed from: h.h.e.a.f.i */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/f/i.class */
public final class C6353i extends C10083d {
    /* renamed from: a */
    public static C6353i m23104a(ByteBuffer byteBuffer) {
        C6353i iVar = new C6353i();
        m23103a(byteBuffer, iVar);
        return iVar;
    }

    /* renamed from: a */
    public static C6353i m23103a(ByteBuffer byteBuffer, C6353i iVar) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        iVar.m23101b(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
        return iVar;
    }

    /* renamed from: a */
    public static void m23108a(C10080c cVar) {
        cVar.m13416h(16);
    }

    /* renamed from: a */
    public static void m23107a(C10080c cVar, int i) {
        cVar.m13430b(0, i, 0);
    }

    /* renamed from: a */
    public static void m23106a(C10080c cVar, long j) {
        cVar.m13443a(4, j, 0L);
    }

    /* renamed from: a */
    public static void m23105a(C10080c cVar, boolean z) {
        cVar.m13441a(5, z, false);
    }

    /* renamed from: b */
    public static int m23100b(C10080c cVar) {
        return cVar.m13435b();
    }

    /* renamed from: b */
    public static void m23099b(C10080c cVar, int i) {
        cVar.m13430b(1, i, 0);
    }

    /* renamed from: b */
    public static void m23098b(C10080c cVar, boolean z) {
        cVar.m13441a(6, z, false);
    }

    /* renamed from: c */
    public static void m23096c(C10080c cVar, int i) {
        cVar.m13430b(2, i, 0);
    }

    /* renamed from: c */
    public static void m23095c(C10080c cVar, boolean z) {
        cVar.m13441a(7, z, false);
    }

    /* renamed from: d */
    public static void m23093d(C10080c cVar, int i) {
        cVar.m13430b(3, i, 0);
    }

    /* renamed from: d */
    public static void m23092d(C10080c cVar, boolean z) {
        cVar.m13441a(8, z, false);
    }

    /* renamed from: e */
    public static void m23090e(C10080c cVar, int i) {
        cVar.m13444a(13, i, 0);
    }

    /* renamed from: e */
    public static void m23089e(C10080c cVar, boolean z) {
        cVar.m13441a(9, z, false);
    }

    /* renamed from: f */
    public static void m23087f(C10080c cVar, int i) {
        cVar.m13444a(14, i, 0);
    }

    /* renamed from: f */
    public static void m23086f(C10080c cVar, boolean z) {
        cVar.m13441a(10, z, false);
    }

    /* renamed from: g */
    public static void m23084g(C10080c cVar, int i) {
        cVar.m13444a(15, i, -1);
    }

    /* renamed from: g */
    public static void m23083g(C10080c cVar, boolean z) {
        cVar.m13441a(11, z, false);
    }

    /* renamed from: h */
    public static void m23081h(C10080c cVar, boolean z) {
        cVar.m13441a(12, z, false);
    }

    /* renamed from: a */
    public String m23110a() {
        int __offset = __offset(4);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: a */
    public void m23109a(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: b */
    public C6353i m23101b(int i, ByteBuffer byteBuffer) {
        m23109a(i, byteBuffer);
        return this;
    }

    /* renamed from: b */
    public String m23102b() {
        int __offset = __offset(6);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: c */
    public String m23097c() {
        int __offset = __offset(8);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: d */
    public String m23094d() {
        int __offset = __offset(10);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }

    /* renamed from: e */
    public long m23091e() {
        int __offset = __offset(12);
        return __offset != 0 ? this.f22804bb.getLong(__offset + this.bb_pos) : 0L;
    }

    /* renamed from: f */
    public boolean m23088f() {
        int __offset = __offset(14);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g */
    public boolean m23085g() {
        int __offset = __offset(16);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: h */
    public boolean m23082h() {
        int __offset = __offset(18);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: i */
    public boolean m23080i() {
        int __offset = __offset(20);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: j */
    public boolean m23079j() {
        int __offset = __offset(22);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: k */
    public boolean m23078k() {
        int __offset = __offset(24);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: l */
    public boolean m23077l() {
        int __offset = __offset(26);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    public boolean m23076m() {
        int __offset = __offset(28);
        boolean z = false;
        if (__offset != 0) {
            z = false;
            if (this.f22804bb.get(__offset + this.bb_pos) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: n */
    public int m23075n() {
        int __offset = __offset(30);
        return __offset != 0 ? this.f22804bb.getInt(__offset + this.bb_pos) : 0;
    }

    /* renamed from: o */
    public int m23074o() {
        int __offset = __offset(32);
        return __offset != 0 ? this.f22804bb.getInt(__offset + this.bb_pos) : 0;
    }

    /* renamed from: p */
    public int m23073p() {
        int __offset = __offset(34);
        return __offset != 0 ? this.f22804bb.getInt(__offset + this.bb_pos) : -1;
    }
}
