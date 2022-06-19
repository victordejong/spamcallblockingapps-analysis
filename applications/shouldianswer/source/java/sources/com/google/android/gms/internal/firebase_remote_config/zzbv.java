package com.google.android.gms.internal.firebase_remote_config;

import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbv.class */
final class zzbv implements Map.Entry<String, Object> {
    private final /* synthetic */ zzbs zzfl;
    private Object zzfm;
    private final zzbz zzfn;

    public zzbv(zzbs zzbsVar, zzbz zzbzVar, Object obj) {
        this.zzfl = zzbsVar;
        this.zzfn = zzbzVar;
        this.zzfm = zzdt.checkNotNull(obj);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((String) getKey()).equals(entry.getKey()) && getValue().equals(entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ String getKey() {
        String name = this.zzfn.getName();
        String str = name;
        if (this.zzfl.zzay.zzbv()) {
            str = name.toLowerCase(Locale.US);
        }
        return str;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzfm;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return ((String) getKey()).hashCode() ^ getValue().hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.zzfm;
        this.zzfm = zzdt.checkNotNull(obj);
        this.zzfn.zzb(this.zzfl.object, obj);
        return obj2;
    }
}
