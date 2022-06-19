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
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccn.class */
public final class zzccn {
    @Nonnull
    private final View zza;
    private final Map<String, WeakReference<View>> zzb;
    private final zzcht zzc;

    public zzccn(zzccm zzccmVar) {
        View view;
        Map<String, WeakReference<View>> map;
        View view2;
        view = zzccmVar.zza;
        this.zza = view;
        map = zzccmVar.zzb;
        this.zzb = map;
        view2 = zzccmVar.zza;
        zzcht zza = zzccj.zza(view2.getContext());
        this.zzc = zza;
        if (zza == null || map.isEmpty()) {
            return;
        }
        try {
            zza.zzf(new zzcco(ObjectWrapper.wrap(view).asBinder(), ObjectWrapper.wrap(map).asBinder()));
        } catch (RemoteException e) {
            zzciz.zzg("Failed to call remote method.");
        }
    }

    public final void zza(MotionEvent motionEvent) {
        zzcht zzchtVar = this.zzc;
        if (zzchtVar == null) {
            zzciz.zze("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzchtVar.zzh(ObjectWrapper.wrap(motionEvent));
        } catch (RemoteException e) {
            zzciz.zzg("Failed to call remote method.");
        }
    }

    public final void zzb(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzc == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzi(new ArrayList(Arrays.asList(uri)), ObjectWrapper.wrap(this.zza), new zzccl(this, updateClickUrlCallback));
        } catch (RemoteException e) {
            updateClickUrlCallback.onFailure("Internal error: ".concat(e.toString()));
        }
    }

    public final void zzc(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzc == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzc.zzj(list, ObjectWrapper.wrap(this.zza), new zzcck(this, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            updateImpressionUrlsCallback.onFailure("Internal error: ".concat(e.toString()));
        }
    }
}
