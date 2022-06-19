package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzaj.class */
public final class zzaj extends zzae<Boolean> {
    public zzaj(zzao zzaoVar, String str, Boolean bool) {
        super(zzaoVar, str, bool, null);
    }

    /* renamed from: zzb */
    public final Boolean zza(SharedPreferences sharedPreferences) {
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(this.zzds, false));
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.zzds);
            if (valueOf.length() != 0) {
                "Invalid boolean value in SharedPreferences for ".concat(valueOf);
                return null;
            }
            new String("Invalid boolean value in SharedPreferences for ");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzae
    public final /* synthetic */ Boolean zzb(String str) {
        if (zzy.zzcr.matcher(str).matches()) {
            return Boolean.TRUE;
        }
        if (zzy.zzcs.matcher(str).matches()) {
            return Boolean.FALSE;
        }
        String.valueOf(this.zzds).length();
        String.valueOf(str).length();
        return null;
    }
}
