package com.google.android.gms.internal.firebase_remote_config;

import java.util.AbstractMap;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbs.class */
public final class zzbs extends AbstractMap<String, Object> {
    final Object object;
    final zzbr zzay;

    public zzbs(Object obj, boolean z) {
        this.object = obj;
        this.zzay = zzbr.zza(obj.getClass(), z);
        if (!this.zzay.isEnum()) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Set entrySet() {
        return new zzbx(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zzbz zzae;
        if ((obj instanceof String) && (zzae = this.zzay.zzae((String) obj)) != null) {
            return zzae.zzh(this.object);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        zzbz zzae = this.zzay.zzae(str);
        String valueOf = String.valueOf(str);
        String concat = valueOf.length() != 0 ? "no field of key ".concat(valueOf) : new String("no field of key ");
        if (zzae != null) {
            Object zzh = zzae.zzh(this.object);
            zzae.zzb(this.object, zzdt.checkNotNull(obj2));
            return zzh;
        }
        throw new NullPointerException(String.valueOf(concat));
    }
}
