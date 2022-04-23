package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C4049t;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacj.class */
public final class zzacj<T> extends zzaci<T> {
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    public zzacj(String str, Object obj, int i) {
        super(str, obj, i);
    }

    /* renamed from: a */
    public static zzaci<Boolean> m16861a(String str, boolean z) {
        return new zzacj(str, true, C4049t.f15332a);
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    /* renamed from: a */
    public final T mo16862a() {
        if (zzadj.f24020b.get()) {
            return (T) super.mo16862a();
        }
        throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
    }
}
