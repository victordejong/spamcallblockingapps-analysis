package com.google.android.gms.internal.firebase_remote_config;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzby.class */
public class zzby extends AbstractMap<String, Object> implements Cloneable {
    final zzbr zzay;
    Map<String, Object> zzfr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzby$zza.class */
    public final class zza extends AbstractSet<Map.Entry<String, Object>> {
        private final zzbx zzfu;

        zza() {
            zzby.this = r7;
            this.zzfu = (zzbx) new zzbs(r7, r7.zzay.zzbv()).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            zzby.this.zzfr.clear();
            this.zzfu.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<String, Object>> iterator() {
            return new zzb(zzby.this, this.zzfu);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return zzby.this.zzfr.size() + this.zzfu.size();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzby$zzb.class */
    final class zzb implements Iterator<Map.Entry<String, Object>> {
        private boolean zzfw;
        private final Iterator<Map.Entry<String, Object>> zzfx;
        private final Iterator<Map.Entry<String, Object>> zzfy;

        zzb(zzby zzbyVar, zzbx zzbxVar) {
            this.zzfx = (zzbu) zzbxVar.iterator();
            this.zzfy = zzbyVar.zzfr.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.zzfx.hasNext() || this.zzfy.hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Map.Entry<String, Object> next() {
            if (!this.zzfw) {
                if (this.zzfx.hasNext()) {
                    return this.zzfx.next();
                }
                this.zzfw = true;
            }
            return this.zzfy.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.zzfw) {
                this.zzfy.remove();
            }
            this.zzfx.remove();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzby$zzc.class */
    public enum zzc {
        IGNORE_CASE
    }

    public zzby() {
        this(EnumSet.noneOf(zzc.class));
    }

    public zzby(EnumSet<zzc> enumSet) {
        this.zzfr = new zzbl();
        this.zzay = zzbr.zza(getClass(), enumSet.contains(zzc.IGNORE_CASE));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new zza();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        zzbz zzae = this.zzay.zzae(str);
        if (zzae != null) {
            return zzae.zzh(this);
        }
        String str2 = str;
        if (this.zzay.zzbv()) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.zzfr.get(str2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            zzb(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        if (this.zzay.zzae(str) != null) {
            throw new UnsupportedOperationException();
        }
        String str2 = str;
        if (this.zzay.zzbv()) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.zzfr.remove(str2);
    }

    /* renamed from: zzb */
    public zzby clone() {
        try {
            zzby zzbyVar = (zzby) super.clone();
            zzbt.zza(this, zzbyVar);
            zzbyVar.zzfr = (Map) zzbt.clone(this.zzfr);
            return zzbyVar;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    public zzby zzb(String str, Object obj) {
        zzbz zzae = this.zzay.zzae(str);
        if (zzae != null) {
            zzae.zzb(this, obj);
        } else {
            String str2 = str;
            if (this.zzay.zzbv()) {
                str2 = str.toLowerCase(Locale.US);
            }
            this.zzfr.put(str2, obj);
        }
        return this;
    }

    public final zzbr zzby() {
        return this.zzay;
    }

    /* renamed from: zzf */
    public final Object put(String str, Object obj) {
        zzbz zzae = this.zzay.zzae(str);
        if (zzae != null) {
            Object zzh = zzae.zzh(this);
            zzae.zzb(this, obj);
            return zzh;
        }
        String str2 = str;
        if (this.zzay.zzbv()) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.zzfr.put(str2, obj);
    }
}
