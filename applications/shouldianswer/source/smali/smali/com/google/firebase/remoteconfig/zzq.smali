.class final synthetic Lcom/google/firebase/remoteconfig/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzkc:Lcom/google/android/gms/internal/firebase_remote_config/zzfd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzfd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/zzq;->zzkc:Lcom/google/android/gms/internal/firebase_remote_config/zzfd;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase_remote_config/zzfd;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/zzq;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/zzq;-><init>(Lcom/google/android/gms/internal/firebase_remote_config/zzfd;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/zzq;->zzkc:Lcom/google/android/gms/internal/firebase_remote_config/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_remote_config/zzfd;->zzdg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
