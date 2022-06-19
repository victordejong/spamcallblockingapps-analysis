package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import androidx.work.WorkRequest;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.internal.location.zzbj;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/FusedLocationProviderClient.class */
public class FusedLocationProviderClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final String KEY_MOCK_LOCATION = "mockLocation";
    public static final String KEY_VERTICAL_ACCURACY = "verticalAccuracy";

    public FusedLocationProviderClient(Activity activity) {
        super(activity, LocationServices.API, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    public FusedLocationProviderClient(Context context) {
        super(context, LocationServices.API, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }

    private final Task<Void> zze(zzba zzbaVar, LocationCallback locationCallback, Looper looper, zzan zzanVar, int i) {
        ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(locationCallback, zzbj.zza(looper), LocationCallback.class.getSimpleName());
        zzak zzakVar = new zzak(this, createListenerHolder);
        return doRegisterEventListener(RegistrationMethods.builder().register(new RemoteCall(this, zzakVar, locationCallback, zzanVar, zzbaVar, createListenerHolder) { // from class: com.google.android.gms.location.zzae
            private final FusedLocationProviderClient zza;
            private final zzap zzb;
            private final LocationCallback zzc;
            private final zzan zzd;
            private final zzba zze;
            private final ListenerHolder zzf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = zzakVar;
                this.zzc = locationCallback;
                this.zzd = zzanVar;
                this.zze = zzbaVar;
                this.zzf = createListenerHolder;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzb(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).unregister(zzakVar).withHolder(createListenerHolder).setMethodKey(i).build());
    }

    public Task<Void> flushLocations() {
        return doWrite(TaskApiCall.builder().run(zzw.zza).setMethodKey(2422).build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Task<Location> getCurrentLocation(int i, CancellationToken cancellationToken) {
        LocationRequest create = LocationRequest.create();
        create.setPriority(i);
        create.setInterval(0L);
        create.setFastestInterval(0L);
        create.setExpirationDuration(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
        zzba zza = zzba.zza(null, create);
        zza.zzd(true);
        zza.zzb(WorkRequest.MIN_BACKOFF_MILLIS);
        Task doRead = doRead(TaskApiCall.builder().run(new RemoteCall(this, cancellationToken, zza) { // from class: com.google.android.gms.location.zzab
            private final FusedLocationProviderClient zza;
            private final CancellationToken zzb;
            private final zzba zzc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = cancellationToken;
                this.zzc = zza;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzc(this.zzb, this.zzc, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setFeatures(zzu.zzd).setMethodKey(2415).build());
        Task task = doRead;
        if (cancellationToken != null) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationToken);
            doRead.continueWithTask(new Continuation(taskCompletionSource) { // from class: com.google.android.gms.location.zzac
                private final TaskCompletionSource zza;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = taskCompletionSource;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    TaskCompletionSource taskCompletionSource2 = this.zza;
                    String str = FusedLocationProviderClient.KEY_MOCK_LOCATION;
                    if (task2.isSuccessful()) {
                        taskCompletionSource2.trySetResult((Location) task2.getResult());
                    } else {
                        Exception exception = task2.getException();
                        if (exception != null) {
                            taskCompletionSource2.setException(exception);
                        }
                    }
                    return taskCompletionSource2.getTask();
                }
            });
            task = taskCompletionSource.getTask();
        }
        return task;
    }

    public Task<Location> getLastLocation() {
        return doRead(TaskApiCall.builder().run(new RemoteCall(this) { // from class: com.google.android.gms.location.zzv
            private final FusedLocationProviderClient zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzd((zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2414).build());
    }

    public Task<LocationAvailability> getLocationAvailability() {
        return doRead(TaskApiCall.builder().run(zzad.zza).setMethodKey(2416).build());
    }

    public Task<Void> removeLocationUpdates(PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.google.android.gms.location.zzag
            private final PendingIntent zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzG(this.zza, new zzao((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2418).build());
    }

    public Task<Void> removeLocationUpdates(LocationCallback locationCallback) {
        return TaskUtil.toVoidTaskThatFailsOnFalse(doUnregisterEventListener(ListenerHolders.createListenerKey(locationCallback, LocationCallback.class.getSimpleName())));
    }

    public Task<Void> requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(this, zzba.zza(null, locationRequest), pendingIntent) { // from class: com.google.android.gms.location.zzaf
            private final FusedLocationProviderClient zza;
            private final zzba zzb;
            private final PendingIntent zzc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = zza;
                this.zzc = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zza(this.zzb, this.zzc, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2417).build());
    }

    public Task<Void> requestLocationUpdates(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        return zze(zzba.zza(null, locationRequest), locationCallback, looper, null, 2436);
    }

    public Task<Void> setMockLocation(Location location) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(location) { // from class: com.google.android.gms.location.zzai
            private final Location zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = location;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                Location location2 = this.zza;
                String str = FusedLocationProviderClient.KEY_MOCK_LOCATION;
                ((zzaz) obj).zzJ(location2);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2421).build());
    }

    public Task<Void> setMockMode(boolean z) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(z) { // from class: com.google.android.gms.location.zzah
            private final boolean zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = z;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                boolean z2 = this.zza;
                String str = FusedLocationProviderClient.KEY_MOCK_LOCATION;
                ((zzaz) obj).zzI(z2);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2420).build());
    }

    public final /* synthetic */ void zza(zzba zzbaVar, PendingIntent pendingIntent, zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzao zzaoVar = new zzao(taskCompletionSource);
        zzbaVar.zzc(getContextAttributionTag());
        zzazVar.zzD(zzbaVar, pendingIntent, zzaoVar);
    }

    public final /* synthetic */ void zzb(zzap zzapVar, LocationCallback locationCallback, zzan zzanVar, zzba zzbaVar, ListenerHolder listenerHolder, zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzam zzamVar = new zzam(taskCompletionSource, new zzan(this, zzapVar, locationCallback, zzanVar) { // from class: com.google.android.gms.location.zzx
            private final FusedLocationProviderClient zza;
            private final zzap zzb;
            private final LocationCallback zzc;
            private final zzan zzd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = zzapVar;
                this.zzc = locationCallback;
                this.zzd = zzanVar;
            }

            @Override // com.google.android.gms.location.zzan
            public final void zza() {
                FusedLocationProviderClient fusedLocationProviderClient = this.zza;
                zzap zzapVar2 = this.zzb;
                LocationCallback locationCallback2 = this.zzc;
                zzan zzanVar2 = this.zzd;
                zzapVar2.zzb(false);
                fusedLocationProviderClient.removeLocationUpdates(locationCallback2);
                if (zzanVar2 != null) {
                    zzanVar2.zza();
                }
            }
        });
        zzbaVar.zzc(getContextAttributionTag());
        zzazVar.zzB(zzbaVar, listenerHolder, zzamVar);
    }

    public final /* synthetic */ void zzc(CancellationToken cancellationToken, zzba zzbaVar, zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzaj zzajVar = new zzaj(this, taskCompletionSource);
        if (cancellationToken != null) {
            cancellationToken.onCanceledRequested(new OnTokenCanceledListener(this, zzajVar) { // from class: com.google.android.gms.location.zzy
                private final FusedLocationProviderClient zza;
                private final LocationCallback zzb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zza = this;
                    this.zzb = zzajVar;
                }

                @Override // com.google.android.gms.tasks.OnTokenCanceledListener
                public final void onCanceled() {
                    this.zza.removeLocationUpdates(this.zzb);
                }
            });
        }
        zze(zzbaVar, zzajVar, Looper.getMainLooper(), new zzan(taskCompletionSource) { // from class: com.google.android.gms.location.zzz
            private final TaskCompletionSource zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = taskCompletionSource;
            }

            @Override // com.google.android.gms.location.zzan
            public final void zza() {
                TaskCompletionSource taskCompletionSource2 = this.zza;
                String str = FusedLocationProviderClient.KEY_MOCK_LOCATION;
                taskCompletionSource2.trySetResult(null);
            }
        }, 2437).continueWithTask(new Continuation(taskCompletionSource) { // from class: com.google.android.gms.location.zzaa
            private final TaskCompletionSource zza;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = taskCompletionSource;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                TaskCompletionSource taskCompletionSource2 = this.zza;
                String str = FusedLocationProviderClient.KEY_MOCK_LOCATION;
                if (!task.isSuccessful()) {
                    if (task.getException() != null) {
                        Exception exception = task.getException();
                        if (exception != null) {
                            taskCompletionSource2.setException(exception);
                        }
                    } else {
                        taskCompletionSource2.trySetResult(null);
                    }
                }
                return taskCompletionSource2.getTask();
            }
        });
    }

    public final /* synthetic */ void zzd(zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        taskCompletionSource.setResult(zzazVar.zzz(getContextAttributionTag()));
    }
}
