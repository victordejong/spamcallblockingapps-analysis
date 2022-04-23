package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.y0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/y0.class */
public final class C2677y0 implements AbstractC2629k0 {

    /* renamed from: a */
    private final AbstractC2639m0 f11230a;

    /* renamed from: b */
    private final String f11231b;

    /* renamed from: c */
    private final Object[] f11232c;

    /* renamed from: d */
    private final int f11233d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2677y0(AbstractC2639m0 m0Var, String str, Object[] objArr) {
        char charAt;
        this.f11230a = m0Var;
        this.f11231b = str;
        this.f11232c = objArr;
        int charAt2 = str.charAt(0);
        if (charAt2 >= 55296) {
            int i = charAt2 & 8191;
            int i2 = 13;
            int i3 = 1;
            while (true) {
                charAt = str.charAt(i3);
                if (charAt < 55296) {
                    break;
                }
                i |= (charAt & 8191) << i2;
                i2 += 13;
                i3++;
            }
            charAt2 = i | (charAt << i2);
        }
        this.f11233d = charAt2;
    }

    @Override // com.google.protobuf.AbstractC2629k0
    /* renamed from: a */
    public boolean mo2228a() {
        return (this.f11233d & 2) == 2;
    }

    @Override // com.google.protobuf.AbstractC2629k0
    /* renamed from: b */
    public ProtoSyntax mo2227b() {
        return (this.f11233d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    @Override // com.google.protobuf.AbstractC2629k0
    /* renamed from: c */
    public AbstractC2639m0 mo2226c() {
        return this.f11230a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Object[] m2225d() {
        return this.f11232c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public String m2224e() {
        return this.f11231b;
    }
}
