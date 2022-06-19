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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasm.class */
public final class zzasm {
    @Nonnull
    private final View zzaat;
    private final Map<String, WeakReference<View>> zzdto;
    private final zzaxy zzdtp;

    public zzasm(zzasr zzasrVar) {
        View view;
        Map<String, WeakReference<View>> map;
        View view2;
        view = zzasrVar.zzaat;
        this.zzaat = view;
        map = zzasrVar.zzdto;
        this.zzdto = map;
        view2 = zzasrVar.zzaat;
        zzaxy zzp = zzask.zzp(view2.getContext());
        this.zzdtp = zzp;
        if (zzp == null || map == null || map.isEmpty()) {
            return;
        }
        try {
            zzp.zza(new zzasq(ObjectWrapper.wrap(view).asBinder(), ObjectWrapper.wrap(map).asBinder()));
        } catch (RemoteException e) {
            zzazk.zzev("Failed to call remote method.");
        }
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        zzaxy zzaxyVar = this.zzdtp;
        if (zzaxyVar == null) {
            zzazk.zzdy("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzaxyVar.zzan(ObjectWrapper.wrap(motionEvent));
        } catch (RemoteException e) {
            zzazk.zzev("Failed to call remote method.");
        }
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzdtp == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzdtp.zzb(new ArrayList(Arrays.asList(uri)), ObjectWrapper.wrap(this.zzaat), new zzaso(this, updateClickUrlCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateClickUrlCallback.onFailure(sb.toString());
        }
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzdtp == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzdtp.zza(list, ObjectWrapper.wrap(this.zzaat), (zzasj) new zzasp(this, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateImpressionUrlsCallback.onFailure(sb.toString());
        }
    }
}
