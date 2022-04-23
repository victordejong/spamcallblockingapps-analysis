package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ho.class */
public final class ho implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f28036a;

    public ho(Context context) {
        this.f28036a = context;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        if (zzr.zzlt().a(this.f28036a)) {
            String str = map.get("eventName");
            String str2 = map.get("eventId");
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case 94399:
                    if (str.equals("_aa")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 94401:
                    if (str.equals("_ac")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 94407:
                    if (str.equals("_ai")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    zzr.zzlt().a(this.f28036a, "_aa", str2, (Bundle) null);
                    return;
                case 1:
                    zzr.zzlt().a(this.f28036a, str2);
                    return;
                case 2:
                    zzr.zzlt().b(this.f28036a, str2);
                    return;
                default:
                    zzd.zzex("logScionEvent gmsg contained unsupported eventName");
                    return;
            }
        }
    }
}
