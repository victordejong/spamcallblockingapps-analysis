package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.ads.internal.util.C5748x0;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l10.class */
public final class l10 implements n20<Object> {

    /* renamed from: a */
    private final m10 f25913a;

    public l10(m10 m10Var) {
        this.f25913a = m10Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        if (this.f25913a == null) {
            return;
        }
        String str = map.get(ShortCut.NAME);
        String str2 = str;
        if (str == null) {
            ei0.m15465e("Ad metadata with no name parameter.");
            str2 = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = C5748x0.m17914k(new JSONObject(map.get("info")));
            } catch (JSONException e) {
                ei0.m15466d("Failed to convert ad metadata to JSON.", e);
                bundle = null;
            }
        }
        if (bundle == null) {
            ei0.m15467c("Failed to convert ad metadata to Bundle.");
        } else {
            this.f25913a.mo10647i0(str2, bundle);
        }
    }
}
