package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.wo;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajb.class */
public final class ajb implements aiy {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23410a;

    /* renamed from: b  reason: collision with root package name */
    private final zzf f23411b = zzr.zzkz().d();

    public ajb(Context context) {
        this.f23410a = context;
    }

    @Override // com.google.android.gms.internal.ads.aiy
    public final void a(Map<String, String> map) {
        Context context;
        if (!map.isEmpty()) {
            String str = map.get("gad_idless");
            if (str != null) {
                boolean parseBoolean = Boolean.parseBoolean(str);
                map.remove("gad_idless");
                if (((Boolean) ekb.e().a(aq.al)).booleanValue()) {
                    this.f23411b.zzau(parseBoolean);
                    if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && parseBoolean && (context = this.f23410a) != null) {
                        context.deleteDatabase("OfflineUpload.db");
                    }
                }
            }
            final Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            if (((Boolean) ekb.e().a(aq.ah)).booleanValue()) {
                zzr.zzlt().a("setConsent", new wo.a(bundle) { // from class: com.google.android.gms.internal.ads.wn

                    /* renamed from: a  reason: collision with root package name */
                    private final Bundle f28481a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28481a = bundle;
                    }

                    @Override // com.google.android.gms.internal.ads.wo.a
                    public final void a(afl aflVar) {
                        aflVar.d(this.f28481a);
                    }
                });
            }
        }
    }
}
