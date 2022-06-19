.class final synthetic Lcom/google/android/gms/internal/firebase_remote_config/zzeh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzkf:Lcom/google/android/gms/internal/firebase_remote_config/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzei;Lcom/google/android/gms/internal/firebase_remote_config/zzen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzeh;->zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzeh;->zzkf:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzeh;->zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzeh;->zzkf:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zze(Lcom/google/android/gms/internal/firebase_remote_config/zzen;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
