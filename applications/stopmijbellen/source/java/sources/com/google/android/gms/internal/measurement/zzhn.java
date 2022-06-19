package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhn.class */
public final class zzhn extends zzht<Long> {
    public zzhn(zzhr zzhrVar, String str, Long l, boolean z) {
        super(zzhrVar, str, l, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzht
    public final /* bridge */ /* synthetic */ Long zza(Object obj) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException e) {
            new StringBuilder(String.valueOf(super.zzd()).length() + 25 + ((String) obj).length());
            l = null;
        }
        return l;
    }
}
