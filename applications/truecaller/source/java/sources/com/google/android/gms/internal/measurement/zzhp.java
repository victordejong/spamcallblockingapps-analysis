package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhp.class */
public final class zzhp extends zzhu {
    public zzhp(zzhr zzhrVar, String str, Double d, boolean z) {
        super(zzhrVar, "measurement.test.double_flag", d, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzhu
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        Double d;
        try {
            d = Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException e) {
            String.valueOf(super.zzc()).length();
            ((String) obj).length();
            d = null;
        }
        return d;
    }
}
