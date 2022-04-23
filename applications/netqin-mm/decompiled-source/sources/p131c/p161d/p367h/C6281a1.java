package p131c.p161d.p367h;

import com.google.protobuf.ProtoSyntax;
/* renamed from: c.d.h.a1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/a1.class */
public final class C6281a1 implements AbstractC6341l0 {

    /* renamed from: a */
    public final AbstractC6354n0 f19854a;

    /* renamed from: b */
    public final String f19855b;

    /* renamed from: c */
    public final Object[] f19856c;

    /* renamed from: d */
    public final int f19857d;

    public C6281a1(AbstractC6354n0 n0Var, String str, Object[] objArr) {
        this.f19854a = n0Var;
        this.f19855b = str;
        this.f19856c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f19857d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f19857d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6341l0
    /* renamed from: a */
    public boolean mo21268a() {
        return (this.f19857d & 2) == 2;
    }

    @Override // p131c.p161d.p367h.AbstractC6341l0
    /* renamed from: b */
    public AbstractC6354n0 mo21267b() {
        return this.f19854a;
    }

    @Override // p131c.p161d.p367h.AbstractC6341l0
    /* renamed from: c */
    public ProtoSyntax mo21266c() {
        return (this.f19857d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    /* renamed from: d */
    public Object[] m21687d() {
        return this.f19856c;
    }

    /* renamed from: e */
    public String m21686e() {
        return this.f19855b;
    }
}
