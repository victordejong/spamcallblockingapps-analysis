package com.google.android.libraries.places.internal;

import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzk.class */
public final class zzk {
    private static final long zza;
    private static final long zzb;
    private static final long zzc;
    private final zzb zzd;
    private final FusedLocationProviderClient zze;
    private final zzcr zzf;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zza = timeUnit.toMillis(10L);
        zzb = timeUnit.toNanos(24L);
        zzc = timeUnit.toMillis(59L);
    }

    public zzk(zzb zzbVar, FusedLocationProviderClient fusedLocationProviderClient, zzcr zzcrVar) {
        this.zzd = zzbVar;
        this.zze = fusedLocationProviderClient;
        this.zzf = zzcrVar;
    }

    public static /* synthetic */ Task zza(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.m38520r()) {
            if (task.m38521q()) {
                taskCompletionSource.m38516a(new ApiException(new Status(16, "Location request was cancelled. Please try again.")));
            } else if (!task.m38519s()) {
                taskCompletionSource.m38516a(new ApiException(new Status(8, task.m38524n().getMessage())));
            }
        }
        return task;
    }

    public final Task<Location> zza(CancellationToken cancellationToken) {
        return this.zzf.zza(this.zze.b(), cancellationToken, zza, "Location timeout.").m38526l(new zzj(this, cancellationToken));
    }

    public final Task zza(CancellationToken cancellationToken, Task task) throws Exception {
        if (task.m38519s()) {
            zzb zzbVar = this.zzd;
            Location location = (Location) task.m38523o();
            boolean z = false;
            if (location != null && zzbVar.zzb() - location.getElapsedRealtimeNanos() <= zzb) {
                z = true;
            }
            if (z) {
                return task;
            }
        }
        TaskCompletionSource taskCompletionSource = cancellationToken != null ? new TaskCompletionSource(cancellationToken) : new TaskCompletionSource();
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.q2(100);
        long j = zza;
        locationRequest.o2(j);
        long j2 = zzc;
        LocationRequest.r2(j2);
        locationRequest.b = j2;
        if (!locationRequest.d) {
            locationRequest.c = (long) (j2 / 6.0d);
        }
        LocationRequest.r2(10L);
        locationRequest.d = true;
        locationRequest.c = 10L;
        locationRequest.p2(1);
        zzo zzoVar = new zzo(this, taskCompletionSource);
        this.zze.d(locationRequest, zzoVar, Looper.getMainLooper()).m38526l(new zzm(this, taskCompletionSource));
        this.zzf.zza(taskCompletionSource, j, "Location timeout.");
        taskCompletionSource.f6493a.c(new zzl(this, zzoVar, taskCompletionSource));
        return taskCompletionSource.f6493a;
    }

    public final /* synthetic */ void zza(LocationCallback locationCallback, TaskCompletionSource taskCompletionSource, Task task) {
        this.zze.c(locationCallback);
        this.zzf.zza(taskCompletionSource);
    }
}
