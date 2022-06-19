package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fc.class */
public final class C3133fc implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final Context f16652a;

    public C3133fc(Context context) {
        this.f16652a = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        boolean z;
        if (!C2341q.m14747A().m7166a(this.f16652a)) {
            return;
        }
        String str = map.get("eventName");
        String str2 = map.get("eventId");
        switch (str.hashCode()) {
            case 94399:
                if (str.equals("_aa")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 94401:
                if (str.equals("_ac")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 94407:
                if (str.equals("_ai")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                C2341q.m14747A().m7146d(this.f16652a, str2);
                return;
            case true:
                C2341q.m14747A().m7144e(this.f16652a, str2);
                return;
            case true:
                C2341q.m14747A().m7140g(this.f16652a, str2);
                return;
            default:
                C3556uu.m6749c("logScionEvent gmsg contained unsupported eventName");
                return;
        }
    }
}
