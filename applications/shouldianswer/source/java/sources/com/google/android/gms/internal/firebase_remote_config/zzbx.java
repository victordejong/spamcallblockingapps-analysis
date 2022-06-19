package com.google.android.gms.internal.firebase_remote_config;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbx.class */
public final class zzbx extends AbstractSet<Map.Entry<String, Object>> {
    private final /* synthetic */ zzbs zzfl;

    public zzbx(zzbs zzbsVar) {
        this.zzfl = zzbsVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        for (String str : this.zzfl.zzay.zzer) {
            this.zzfl.zzay.zzae(str).zzb(this.zzfl.object, null);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        for (String str : this.zzfl.zzay.zzer) {
            if (this.zzfl.zzay.zzae(str).zzh(this.zzfl.object) != null) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzbu(this.zzfl);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i = 0;
        for (String str : this.zzfl.zzay.zzer) {
            if (this.zzfl.zzay.zzae(str).zzh(this.zzfl.object) != null) {
                i++;
            }
        }
        return i;
    }
}
