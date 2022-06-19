package com.google.android.libraries.places.internal;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import p193e.p1432d.p1443e.C22188p;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzad.class */
public final class zzad {
    private final C22188p zza;

    public zzad(C22188p c22188p) {
        this.zza = c22188p;
    }

    public final <HttpPhotoResponseT extends zzam<Object, ? extends Object>> Task<HttpPhotoResponseT> zza(zzaj<Object, ?> zzajVar, zzan<HttpPhotoResponseT> zzanVar) {
        String zzd = zzajVar.zzd();
        Map<String, String> zzc = zzajVar.zzc();
        CancellationToken zzb = zzajVar.zzb();
        TaskCompletionSource taskCompletionSource = zzb != null ? new TaskCompletionSource(zzb) : new TaskCompletionSource();
        zzah zzahVar = new zzah(this, zzd, new zzag(zzanVar, taskCompletionSource), 0, 0, ImageView.ScaleType.CENTER, Bitmap.Config.ARGB_8888, new zzaf(taskCompletionSource), zzc);
        if (zzb != null) {
            zzb.m38539b(zzai.zza(zzahVar));
        }
        this.zza.m8486a(zzahVar);
        return taskCompletionSource.f6493a;
    }
}
