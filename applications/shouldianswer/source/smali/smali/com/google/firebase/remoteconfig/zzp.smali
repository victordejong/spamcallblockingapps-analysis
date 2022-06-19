.class final synthetic Lcom/google/firebase/remoteconfig/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_remote_config/zzad;


# instance fields
.field private final zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

.field private final zzkb:Lcom/google/android/gms/internal/firebase_remote_config/zzev;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/RemoteConfigComponent;Lcom/google/android/gms/internal/firebase_remote_config/zzev;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/zzp;->zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/zzp;->zzkb:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase_remote_config/zzab;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/zzp;->zzjt:Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/zzp;->zzkb:Lcom/google/android/gms/internal/firebase_remote_config/zzev;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->zza(Lcom/google/android/gms/internal/firebase_remote_config/zzev;Lcom/google/android/gms/internal/firebase_remote_config/zzab;)V

    return-void
.end method
