package com.google.android.gms.internal.play_billing;

import android.support.p012v4.media.C0082b;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzx.class */
public abstract class zzx implements Map, Serializable {
    @CheckForNull
    private transient zzy zza;
    @CheckForNull
    private transient zzy zzb;
    @CheckForNull
    private transient zzr zzc;

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzag.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzy zzyVar = this.zzb;
        zzy zzyVar2 = zzyVar;
        if (zzyVar == null) {
            zzyVar2 = zzd();
            this.zzb = zzyVar2;
        }
        return zzyVar2;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
            sb.append('{');
            Iterator it2 = entrySet().iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it2.hasNext()) {
                    sb.append('}');
                    return sb.toString();
                }
                Map.Entry entry = (Map.Entry) it2.next();
                if (!z2) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
                z = false;
            }
        } else {
            throw new IllegalArgumentException(C0082b.m8758d(44, "size cannot be negative but was: ", size));
        }
    }

    public abstract zzr zza();

    /* renamed from: zzb */
    public final zzr values() {
        zzr zzrVar = this.zzc;
        zzr zzrVar2 = zzrVar;
        if (zzrVar == null) {
            zzrVar2 = zza();
            this.zzc = zzrVar2;
        }
        return zzrVar2;
    }

    public abstract zzy zzc();

    public abstract zzy zzd();

    /* renamed from: zze */
    public final zzy entrySet() {
        zzy zzyVar = this.zza;
        zzy zzyVar2 = zzyVar;
        if (zzyVar == null) {
            zzyVar2 = zzc();
            this.zza = zzyVar2;
        }
        return zzyVar2;
    }
}
