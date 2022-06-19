package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzask.class */
public class zzask {
    @GuardedBy("InternalQueryInfoGenerator.class")
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
        String str;
        zzaxy zzp = zzp(this.context);
        if (zzp == null) {
            str = "Internal Error, query info generator is null.";
        } else {
            IObjectWrapper wrap = ObjectWrapper.wrap(this.context);
            zzzk zzzkVar = this.zzacw;
            try {
                zzp.zza(wrap, new zzaye((String) null, this.zzdtm.name(), (zzvs) null, zzzkVar == null ? new zzvo().zzqd() : zzvq.zza(this.context, zzzkVar)), (zzaxx) new zzasn(this, queryInfoGenerationCallback));
                return;
            } catch (RemoteException e) {
                str = "Internal Error.";
            }
        }
        queryInfoGenerationCallback.onFailure(str);
    }
}
