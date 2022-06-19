package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcal.class */
public final class zzcal {
    private final View zza;
    private final Map<String, WeakReference<View>> zzb;
    private final zzcfn zzc;

    public zzcal(zzcak zzcakVar) {
        View view;
        Map<String, WeakReference<View>> map;
        View view2;
        view = zzcakVar.zza;
        this.zza = view;
        map = zzcakVar.zzb;
        this.zzb = map;
        view2 = zzcakVar.zza;
        zzcfn zza = zzcah.zza(view2.getContext());
        this.zzc = zza;
        if (zza == null || map.isEmpty()) {
            return;
        }
        try {
            zza.zzi(new zzcam(new ObjectWrapper(view).asBinder(), new ObjectWrapper(map).asBinder()));
        } catch (RemoteException e) {
            zzcgt.zzf("Failed to call remote method.");
        }
    }

    public final void zza(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzc == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzg(list, new ObjectWrapper(this.zza), new zzcai(this, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            updateImpressionUrlsCallback.onFailure("Internal error: ".concat(e.toString()));
        }
    }

    public final void zzb(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzc == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzh(new ArrayList(Arrays.asList(uri)), new ObjectWrapper(this.zza), new zzcaj(this, updateClickUrlCallback));
        } catch (RemoteException e) {
            updateClickUrlCallback.onFailure("Internal error: ".concat(e.toString()));
        }
    }

    public final void zzc(MotionEvent motionEvent) {
        zzcfn zzcfnVar = this.zzc;
        if (zzcfnVar == null) {
            zzcgt.zzd("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzcfnVar.zzf(new ObjectWrapper(motionEvent));
        } catch (RemoteException e) {
            zzcgt.zzf("Failed to call remote method.");
        }
    }
}
