package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhp.class */
public final class zzhp extends zzht<Double> {
    public zzhp(zzhr zzhrVar, String str, Double d, boolean z) {
        super(zzhrVar, "measurement.test.double_flag", d, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzht
    public final /* bridge */ /* synthetic */ Double zza(Object obj) {
        Double d;
        try {
            d = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            new StringBuilder(String.valueOf(super.zzd()).length() + 27 + ((String) obj).length());
            d = null;
        }
        return d;
    }
}
