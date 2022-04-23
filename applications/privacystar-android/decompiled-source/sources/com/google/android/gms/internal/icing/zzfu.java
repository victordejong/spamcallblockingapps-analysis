package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzfu;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfu.class */
public class zzfu<M extends zzfu<M>> extends zzfz {
    protected zzfw zznv;

    @Override // com.google.android.gms.internal.icing.zzfz
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzfu zzfuVar = (zzfu) super.clone();
        zzfy.zza(this, zzfuVar);
        return zzfuVar;
    }

    @Override // com.google.android.gms.internal.icing.zzfz
    public void zza(zzfs zzfsVar) throws IOException {
        if (this.zznv != null) {
            for (int i = 0; i < this.zznv.size(); i++) {
                this.zznv.zzal(i).zza(zzfsVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfz
    public final /* synthetic */ zzfz zzdb() throws CloneNotSupportedException {
        return (zzfu) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.icing.zzfz
    public int zze() {
        if (this.zznv == null) {
            return 0;
        }
        for (int i = 0; i < this.zznv.size(); i++) {
            this.zznv.zzal(i).zze();
        }
        return 0;
    }
}
