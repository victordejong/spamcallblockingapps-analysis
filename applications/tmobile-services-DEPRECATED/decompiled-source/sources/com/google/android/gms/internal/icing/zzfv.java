package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfv.class */
public final class zzfv implements zzff {

    /* renamed from: a */
    private final zzfh f8063a;

    /* renamed from: b */
    private final String f8064b;

    /* renamed from: c */
    private final Object[] f8065c;

    /* renamed from: d */
    private final int f8066d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfv(zzfh zzfhVar, String str, Object[] objArr) {
        this.f8063a = zzfhVar;
        this.f8064b = str;
        this.f8065c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f8066d = charAt;
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
                this.f8066d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzff
    /* renamed from: a */
    public final int mo13619a() {
        return (this.f8066d & 1) == 1 ? zzdx.zze.f8006i : zzdx.zze.f8007j;
    }

    @Override // com.google.android.gms.internal.icing.zzff
    /* renamed from: b */
    public final boolean mo13618b() {
        return (this.f8066d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.icing.zzff
    /* renamed from: c */
    public final zzfh mo13617c() {
        return this.f8063a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m13699d() {
        return this.f8064b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Object[] m13698e() {
        return this.f8065c;
    }
}
