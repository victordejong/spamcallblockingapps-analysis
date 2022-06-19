package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzho.class */
public final class zzho extends zzht<Boolean> {
    public zzho(zzhr zzhrVar, String str, Boolean bool, boolean z) {
        super(zzhrVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzht
    public final /* bridge */ /* synthetic */ Boolean zza(Object obj) {
        Boolean bool;
        if (zzgv.zzc.matcher(obj).matches()) {
            bool = Boolean.TRUE;
        } else if (zzgv.zzd.matcher(obj).matches()) {
            bool = Boolean.FALSE;
        } else {
            new StringBuilder(String.valueOf(super.zzd()).length() + 28 + ((String) obj).length());
            bool = null;
        }
        return bool;
    }
}
