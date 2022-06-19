package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddv.class */
final class ddv implements ded {

    /* renamed from: a */
    private ded[] f14130a;

    public ddv(ded... dedVarArr) {
        this.f14130a = dedVarArr;
    }

    @Override // com.google.android.gms.internal.ads.ded
    /* renamed from: a */
    public final boolean mo9991a(Class<?> cls) {
        boolean z;
        ded[] dedVarArr = this.f14130a;
        int length = dedVarArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            } else if (dedVarArr[i].mo9991a(cls)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ded
    /* renamed from: b */
    public final dee mo9990b(Class<?> cls) {
        ded[] dedVarArr;
        for (ded dedVar : this.f14130a) {
            if (dedVar.mo9991a(cls)) {
                return dedVar.mo9990b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
