package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cj.class */
public final class cj extends gl<cj, cf> implements hp {
    private static final cj zzg;
    private int zza;
    private int zze = 1;
    private gs<by> zzf = hy.d();

    static {
        cj cjVar = new cj();
        zzg = cjVar;
        gl.a(cj.class, cjVar);
    }

    private cj() {
    }

    public static cf a() {
        return zzg.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cj cjVar, by byVar) {
        byVar.getClass();
        gs<by> gsVar = cjVar.zzf;
        if (!gsVar.a()) {
            cjVar.zzf = gl.a(gsVar);
        }
        cjVar.zzf.add(byVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zza", "zze", ci.zzb(), "zzf", by.class});
        } else if (i2 == 3) {
            return new cj();
        } else {
            if (i2 == 4) {
                return new cf(null);
            }
            if (i2 != 5) {
                return null;
            }
            return zzg;
        }
    }
}
