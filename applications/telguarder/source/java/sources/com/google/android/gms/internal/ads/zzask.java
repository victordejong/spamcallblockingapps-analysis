package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzask.class */
public class zzask {
    private static zzaxy zzdtn;
    private final Context context;
    private final zzzk zzacw;
    private final AdFormat zzdtm;

    public zzask(Context context, AdFormat adFormat, zzzk zzzkVar) {
        this.context = context;
        this.zzdtm = adFormat;
        this.zzacw = zzzkVar;
    }

    public static zzaxy zzp(Context context) {
        zzaxy zzaxyVar;
        synchronized (zzask.class) {
            try {
                if (zzdtn == null) {
                    zzdtn = zzwr.zzqo().zza(context, new zzanf());
                }
                zzaxyVar = zzdtn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaxyVar;
    }

    public final void zza(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzaxy zzp = zzp(this.context);
        if (zzp == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        IObjectWrapper wrap = ObjectWrapper.wrap(this.context);
        zzzk zzzkVar = this.zzacw;
        try {
            zzp.zza(wrap, new zzaye(null, this.zzdtm.name(), null, zzzkVar == null ? new zzvo().zzqd() : zzvq.zza(this.context, zzzkVar)), new zzasn(this, queryInfoGenerationCallback));
        } catch (RemoteException e) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
