package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t.class */
public final class C6979t extends C6942s {
    protected C6979t(Context context, String str, boolean z) {
        super(context, str, z);
    }

    /* renamed from: v */
    public static C6979t m10872v(String str, Context context, boolean z) {
        C6942s.m11192o(context, false);
        return new C6979t(context, str, false);
    }

    @Deprecated
    /* renamed from: w */
    public static C6979t m10871w(String str, Context context, boolean z, int i) {
        C6942s.m11192o(context, z);
        return new C6979t(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.C6942s
    /* renamed from: r */
    public final List<Callable<Void>> mo10873r(C6869q0 c6869q0, Context context, j14 j14Var, c14 c14Var) {
        if (c6869q0.m12079e() == null || !this.f29336C) {
            return super.mo10873r(c6869q0, context, j14Var, null);
        }
        int m12063u = c6869q0.m12063u();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.mo10873r(c6869q0, context, j14Var, null));
        arrayList.add(new C6499g1(c6869q0, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407", "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg=", j14Var, m12063u, 24));
        return arrayList;
    }
}
