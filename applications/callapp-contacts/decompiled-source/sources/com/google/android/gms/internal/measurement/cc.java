package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/cc.class */
public final class cc extends gl<cc, cb> implements hp {
    private static final cc zze;
    public gs<ce> zza = hy.d();

    static {
        cc ccVar = new cc();
        zze = ccVar;
        gl.a(cc.class, ccVar);
    }

    private cc() {
    }

    public static cb a() {
        return zze.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(cc ccVar, ce ceVar) {
        ceVar.getClass();
        gs<ce> gsVar = ccVar.zza;
        if (!gsVar.a()) {
            ccVar.zza = gl.a(gsVar);
        }
        ccVar.zza.add(ceVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.gl
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return a(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", ce.class});
        }
        if (i2 == 3) {
            return new cc();
        }
        if (i2 == 4) {
            return new cb(null);
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }
}
