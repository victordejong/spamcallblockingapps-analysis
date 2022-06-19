package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.nu2;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/w.class */
public final /* synthetic */ class C5836w implements nu2 {

    /* renamed from: a */
    static final nu2 f18773a = new C5836w();

    private C5836w() {
    }

    @Override // com.google.android.gms.internal.ads.nu2
    /* renamed from: a */
    public final Object mo8501a(Object obj) {
        int i = BinderC5814e0.f18710h;
        return ((JSONObject) obj).optString("nas");
    }
}
