package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzax.class */
public class zzax extends zzby implements Cloneable {
    private zzaw zzda;

    @Override // java.util.AbstractMap
    public String toString() {
        zzaw zzawVar = this.zzda;
        if (zzawVar != null) {
            try {
                return zzawVar.toString(this);
            } catch (IOException e) {
                throw zzeb.zzb(e);
            }
        }
        return super.toString();
    }

    /* renamed from: zza */
    public zzax clone() {
        return (zzax) super.clone();
    }

    /* renamed from: zza */
    public zzax zzb(String str, Object obj) {
        return (zzax) super.zzb(str, obj);
    }

    public final void zza(zzaw zzawVar) {
        this.zzda = zzawVar;
    }

    public final String zzaq() {
        zzaw zzawVar = this.zzda;
        return zzawVar != null ? zzawVar.zzc(this) : super.toString();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzby
    public /* synthetic */ zzby zzb() {
        return (zzax) clone();
    }
}
