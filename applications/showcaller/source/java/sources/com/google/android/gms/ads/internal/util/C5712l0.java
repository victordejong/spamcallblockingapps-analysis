package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.g04;
import com.google.android.gms.internal.ads.hz3;
import com.google.android.gms.internal.ads.iz3;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.internal.util.l0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/l0.class */
public final class C5712l0 extends g04 {

    /* renamed from: r */
    final /* synthetic */ byte[] f18502r;

    /* renamed from: s */
    final /* synthetic */ Map f18503s;

    /* renamed from: t */
    final /* synthetic */ di0 f18504t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5712l0(C5730r0 c5730r0, int i, String str, iz3 iz3Var, hz3 hz3Var, byte[] bArr, Map map, di0 di0Var) {
        super(i, str, iz3Var, hz3Var);
        this.f18502r = bArr;
        this.f18503s = map;
        this.f18504t = di0Var;
    }

    @Override // com.google.android.gms.internal.ads.g04
    /* renamed from: B */
    public final void mo15000B(String str) {
        this.f18504t.m15809e(str);
        super.mo15000B(str);
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: p */
    public final Map<String, String> mo15629p() {
        Map<String, String> map = this.f18503s;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = Collections.emptyMap();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: q */
    public final byte[] mo15628q() {
        byte[] bArr = this.f18502r;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = null;
        }
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ void mo15624v(String str) {
        mo15000B(str);
    }
}
