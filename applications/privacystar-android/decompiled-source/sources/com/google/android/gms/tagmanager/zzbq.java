package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbq.class */
public abstract class zzbq {
    private final Set<String> zzbbx;
    private final String zzqn;

    public zzbq(String str, String... strArr) {
        this.zzqn = str;
        this.zzbbx = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.zzbbx.add(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza(Set<String> set) {
        return set.containsAll(this.zzbbx);
    }

    public abstract zzp zze(Map<String, zzp> map);

    public abstract boolean zznb();

    public String zzok() {
        return this.zzqn;
    }

    public Set<String> zzol() {
        return this.zzbbx;
    }
}
