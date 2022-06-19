package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.pw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pw.class */
public final class C12838pw {

    /* renamed from: a */
    private final boolean f49694a;

    /* renamed from: b */
    private final boolean f49695b;

    /* renamed from: c */
    private final boolean f49696c;

    /* renamed from: d */
    private final boolean f49697d;

    /* renamed from: e */
    private final boolean f49698e;

    /* JADX INFO: Access modifiers changed from: private */
    public C12838pw(C12840py c12840py) {
        this.f49694a = c12840py.f49712a;
        this.f49695b = c12840py.f49713b;
        this.f49696c = c12840py.f49714c;
        this.f49697d = c12840py.f49715d;
        this.f49698e = c12840py.f49716e;
    }

    /* renamed from: a */
    public final JSONObject m14252a() {
        try {
            return new JSONObject().put(MRAIDNativeFeature.SMS, this.f49694a).put(MRAIDNativeFeature.TEL, this.f49695b).put(MRAIDNativeFeature.CALENDAR, this.f49696c).put(MRAIDNativeFeature.STORE_PICTURE, this.f49697d).put(MRAIDNativeFeature.INLINE_VIDEO, this.f49698e);
        } catch (JSONException e) {
            zzd.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
