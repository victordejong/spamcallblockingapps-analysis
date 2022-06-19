package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzie.class */
public final class zzie implements Serializable, zzib {
    public final Object zza;

    public zzie(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzie) {
            Object obj2 = this.zza;
            Object obj3 = ((zzie) obj).zza;
            return obj2 == obj3 || obj2.equals(obj3);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza});
    }

    public final String toString() {
        String obj = this.zza.toString();
        return C22128a.m8610j(new StringBuilder(obj.length() + 22), "Suppliers.ofInstance(", obj, ")");
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final Object zza() {
        return this.zza;
    }
}
