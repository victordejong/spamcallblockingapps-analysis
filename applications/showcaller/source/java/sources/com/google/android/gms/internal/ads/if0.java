package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/if0.class */
public final class if0 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    private final Context f24255a;

    /* renamed from: b */
    private final SharedPreferences f24256b;

    /* renamed from: c */
    private final AbstractC5728q1 f24257c;

    /* renamed from: d */
    private final lg0 f24258d;

    /* renamed from: e */
    private String f24259e = "";

    public if0(Context context, AbstractC5728q1 abstractC5728q1, lg0 lg0Var) {
        this.f24256b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f24257c = abstractC5728q1;
        this.f24255a = context;
        this.f24258d = lg0Var;
    }

    /* renamed from: a */
    public final void m14408a() {
        this.f24256b.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.f24256b, "IABTCF_PurposeConsents");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (string.isEmpty() || this.f24259e.equals(string)) {
            return;
        }
        this.f24259e = string;
        boolean z = false;
        if (string.charAt(0) != '1') {
            z = true;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25759o0)).booleanValue()) {
            this.f24257c.mo17978K0(z);
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25835x4)).booleanValue() && z && (context = this.f24255a) != null) {
                context.deleteDatabase("OfflineUpload.db");
            }
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25719j0)).booleanValue()) {
            return;
        }
        this.f24258d.m13547f();
    }
}
