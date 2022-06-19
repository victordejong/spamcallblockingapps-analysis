package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzemo;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeax.class */
public abstract class zzeax<KeyProtoT extends zzemo> {
    private final Class<KeyProtoT> zzibj;
    private final Map<Class<?>, zzeaz<?, KeyProtoT>> zzibk;
    private final Class<?> zzibl;

    @SafeVarargs
    public zzeax(Class<KeyProtoT> cls, zzeaz<?, KeyProtoT>... zzeazVarArr) {
        this.zzibj = cls;
        HashMap hashMap = new HashMap();
        for (zzeaz<?, KeyProtoT> zzeazVar : zzeazVarArr) {
            if (hashMap.containsKey(zzeazVar.zzbai())) {
                String valueOf = String.valueOf(zzeazVar.zzbai().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(zzeazVar.zzbai(), zzeazVar);
        }
        if (zzeazVarArr.length > 0) {
            this.zzibl = zzeazVarArr[0].zzbai();
        } else {
            this.zzibl = Void.class;
        }
        this.zzibk = Collections.unmodifiableMap(hashMap);
    }

    public abstract String getKeyType();

    public final <P> P zza(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        zzeaz<?, KeyProtoT> zzeazVar = this.zzibk.get(cls);
        if (zzeazVar != null) {
            return (P) zzeazVar.zzah(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    public final Class<KeyProtoT> zzbak() {
        return this.zzibj;
    }

    public abstract zzegd.zza zzbal();

    public final Set<Class<?>> zzbam() {
        return this.zzibk.keySet();
    }

    public final Class<?> zzban() {
        return this.zzibl;
    }

    public zzeba<?, KeyProtoT> zzbao() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract void zzc(KeyProtoT keyprotot) throws GeneralSecurityException;

    public abstract KeyProtoT zzp(zzejr zzejrVar) throws zzelo;
}
