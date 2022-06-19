package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzak.class */
public final class zzak extends zzae<String> {
    public zzak(zzao zzaoVar, String str, String str2) {
        super(zzaoVar, str, str2, null);
    }

    /* renamed from: zzc */
    public final String zza(SharedPreferences sharedPreferences) {
        try {
            return sharedPreferences.getString(this.zzds, null);
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(this.zzds);
            if (valueOf.length() != 0) {
                "Invalid string value in SharedPreferences for ".concat(valueOf);
                return null;
            }
            new String("Invalid string value in SharedPreferences for ");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzae
    public final /* synthetic */ String zzb(String str) {
        return str;
    }
}
