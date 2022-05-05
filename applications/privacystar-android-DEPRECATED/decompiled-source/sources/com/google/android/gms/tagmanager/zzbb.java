package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbb.class */
public final class zzbb implements zzbx {
    private static final Object zzayt = new Object();
    private static zzbb zzbbk;
    private zzej zzazx;
    private zzby zzbbl;

    private zzbb(Context context) {
        this(zzbz.zzu(context), new zzfl());
    }

    @VisibleForTesting
    private zzbb(zzby zzbyVar, zzej zzejVar) {
        this.zzbbl = zzbyVar;
        this.zzazx = zzejVar;
    }

    public static zzbx zzo(Context context) {
        zzbb zzbbVar;
        synchronized (zzayt) {
            if (zzbbk == null) {
                zzbbk = new zzbb(context);
            }
            zzbbVar = zzbbk;
        }
        return zzbbVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbx
    public final boolean zzdk(String str) {
        if (!this.zzazx.zzew()) {
            zzdi.zzab("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            return false;
        }
        this.zzbbl.zzdp(str);
        return true;
    }
}
