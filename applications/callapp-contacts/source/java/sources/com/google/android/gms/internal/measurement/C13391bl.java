package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/bl.class */
public final class C13391bl extends AbstractC13526gl<C13391bl, C13390bk> implements AbstractC13557hp {
    private static final C13391bl zzg;
    private int zza;
    public String zze = "";
    public String zzf = "";

    static {
        C13391bl c13391bl = new C13391bl();
        zzg = c13391bl;
        AbstractC13526gl.m12763a(C13391bl.class, c13391bl);
    }

    private C13391bl() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13526gl
    /* renamed from: a */
    public final Object mo12768a(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return m12765a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C13391bl();
            }
            if (i2 == 4) {
                return new C13390bk(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
