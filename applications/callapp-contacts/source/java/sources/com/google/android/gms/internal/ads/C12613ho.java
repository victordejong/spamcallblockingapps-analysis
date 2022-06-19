package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ho */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ho.class */
public final class C12613ho implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final Context f49342a;

    public C12613ho(Context context) {
        this.f49342a = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        if (!zzr.zzlt().m14044a(this.f49342a)) {
            return;
        }
        String str = map.get("eventName");
        String str2 = map.get("eventId");
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 94399:
                if (str.equals("_aa")) {
                    z = false;
                    break;
                }
                break;
            case 94401:
                if (str.equals("_ac")) {
                    z = true;
                    break;
                }
                break;
            case 94407:
                if (str.equals("_ai")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                zzr.zzlt().m14041a(this.f49342a, "_aa", str2, (Bundle) null);
                return;
            case true:
                zzr.zzlt().m14043a(this.f49342a, str2);
                return;
            case true:
                zzr.zzlt().m14032b(this.f49342a, str2);
                return;
            default:
                zzd.zzex("logScionEvent gmsg contained unsupported eventName");
                return;
        }
    }
}
