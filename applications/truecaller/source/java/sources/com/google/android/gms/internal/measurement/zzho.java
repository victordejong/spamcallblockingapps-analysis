package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzho.class */
public final class zzho extends zzhu {
    public zzho(zzhr zzhrVar, String str, Boolean bool, boolean z) {
        super(zzhrVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzhu
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        Boolean bool;
        if (zzgv.zzc.matcher(obj).matches()) {
            bool = Boolean.TRUE;
        } else if (zzgv.zzd.matcher(obj).matches()) {
            bool = Boolean.FALSE;
        } else {
            String.valueOf(super.zzc()).length();
            ((String) obj).length();
            bool = null;
        }
        return bool;
    }
}
