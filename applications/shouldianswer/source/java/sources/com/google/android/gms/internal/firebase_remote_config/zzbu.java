package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbu.class */
public final class zzbu implements Iterator<Map.Entry<String, Object>> {
    private int zzff = -1;
    private zzbz zzfg;
    private Object zzfh;
    private boolean zzfi;
    private boolean zzfj;
    private zzbz zzfk;
    private final /* synthetic */ zzbs zzfl;

    public zzbu(zzbs zzbsVar) {
        this.zzfl = zzbsVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zzfj) {
            this.zzfj = true;
            this.zzfh = null;
            while (this.zzfh == null) {
                int i = this.zzff + 1;
                this.zzff = i;
                if (i >= this.zzfl.zzay.zzer.size()) {
                    break;
                }
                this.zzfg = this.zzfl.zzay.zzae(this.zzfl.zzay.zzer.get(this.zzff));
                this.zzfh = this.zzfg.zzh(this.zzfl.object);
            }
        }
        return this.zzfh != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry<String, Object> next() {
        if (hasNext()) {
            this.zzfk = this.zzfg;
            Object obj = this.zzfh;
            this.zzfj = false;
            this.zzfi = false;
            this.zzfg = null;
            this.zzfh = null;
            return new zzbv(this.zzfl, this.zzfk, obj);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzdt.checkState(this.zzfk != null && !this.zzfi);
        this.zzfi = true;
        this.zzfk.zzb(this.zzfl.object, null);
    }
}
