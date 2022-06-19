package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C13019wo;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajb.class */
public final class ajb implements aiy {

    /* renamed from: a */
    private final Context f42196a;

    /* renamed from: b */
    private final zzf f42197b = zzr.zzkz().m13975d();

    public ajb(Context context) {
        this.f42196a = context;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    /* renamed from: a */
    public final void mo18642a(Map<String, String> map) {
        Context context;
        if (map.isEmpty()) {
            return;
        }
        String str = map.get("gad_idless");
        if (str != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            map.remove("gad_idless");
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42675al)).booleanValue()) {
                this.f42197b.zzau(parseBoolean);
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() && parseBoolean && (context = this.f42196a) != null) {
                    context.deleteDatabase("OfflineUpload.db");
                }
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42671ah)).booleanValue()) {
            return;
        }
        zzr.zzlt().m14038a("setConsent", new C13019wo.AbstractC13020a(bundle) { // from class: com.google.android.gms.internal.ads.wn

            /* renamed from: a */
            private final Bundle f49980a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49980a = bundle;
            }

            @Override // com.google.android.gms.internal.ads.C13019wo.AbstractC13020a
            /* renamed from: a */
            public final void mo14021a(afl aflVar) {
                aflVar.mo14494d(this.f49980a);
            }
        });
    }
}
