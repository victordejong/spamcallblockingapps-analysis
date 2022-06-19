package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhn.class */
public final class zzhn extends zzhu {
    public zzhn(zzhr zzhrVar, String str, Long l, boolean z) {
        super(zzhrVar, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            String.valueOf(super.zzc()).length();
            ((String) obj).length();
            l = null;
        }
        return l;
    }
}
