package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pw.class */
public final class pw {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f28304a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28305b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28306c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28307d;
    private final boolean e;

    private pw(py pyVar) {
        this.f28304a = pyVar.f28312a;
        this.f28305b = pyVar.f28313b;
        this.f28306c = pyVar.f28314c;
        this.f28307d = pyVar.f28315d;
        this.e = pyVar.e;
    }

    public final JSONObject a() {
        try {
            return new JSONObject().put(MRAIDNativeFeature.SMS, this.f28304a).put(MRAIDNativeFeature.TEL, this.f28305b).put(MRAIDNativeFeature.CALENDAR, this.f28306c).put(MRAIDNativeFeature.STORE_PICTURE, this.f28307d).put(MRAIDNativeFeature.INLINE_VIDEO, this.e);
        } catch (JSONException e) {
            zzd.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
