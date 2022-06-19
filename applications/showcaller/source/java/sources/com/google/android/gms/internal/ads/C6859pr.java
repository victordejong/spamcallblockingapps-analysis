package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.pr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pr.class */
final /* synthetic */ class C6859pr implements gi0 {

    /* renamed from: a */
    static final gi0 f28102a = new C6859pr();

    private C6859pr() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.gi0
    /* renamed from: a */
    public final Object mo10935a(Object obj) {
        C6750mt c6750mt;
        if (obj == 0) {
            c6750mt = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            c6750mt = queryLocalInterface instanceof C6750mt ? (C6750mt) queryLocalInterface : new C6750mt(obj);
        }
        return c6750mt;
    }
}
