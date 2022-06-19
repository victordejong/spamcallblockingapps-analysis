package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.C5667s;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n72.class */
public final class n72 implements wa2<l72> {

    /* renamed from: a */
    private final Context f27013a;

    /* renamed from: b */
    private final s03 f27014b;

    public n72(Context context, s03 s03Var) {
        this.f27013a = context;
        this.f27014b = s03Var;
    }

    /* renamed from: a */
    public final /* synthetic */ l72 m12988a() {
        Bundle bundle;
        C5667s.m18160d();
        String str = "";
        int i = 0;
        String string = !((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25779q4)).booleanValue() ? "" : this.f27013a.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25795s4)).booleanValue()) {
            str = this.f27013a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        C5667s.m18160d();
        Context context = this.f27013a;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25787r4)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Bundle bundle2 = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle2.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            while (true) {
                bundle = bundle2;
                if (i >= 4) {
                    break;
                }
                String str2 = new String[]{"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
                if (defaultSharedPreferences.contains(str2)) {
                    bundle2.putString(str2, defaultSharedPreferences.getString(str2, null));
                }
                i++;
            }
        } else {
            bundle = null;
        }
        return new l72(string, str, bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<l72> zza() {
        return this.f27014b.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.k72

            /* renamed from: a */
            private final n72 f25078a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25078a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25078a.m12988a();
            }
        });
    }
}
