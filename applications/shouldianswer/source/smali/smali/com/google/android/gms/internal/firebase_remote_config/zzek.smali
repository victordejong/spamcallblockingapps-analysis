.class final synthetic Lcom/google/android/gms/internal/firebase_remote_config/zzek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

.field private final zzkm:Z

.field private final zzkn:Lcom/google/android/gms/internal/firebase_remote_config/zzen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzei;ZLcom/google/android/gms/internal/firebase_remote_config/zzen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzkm:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzkn:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzke:Lcom/google/android/gms/internal/firebase_remote_config/zzei;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzkm:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzek;->zzkn:Lcom/google/android/gms/internal/firebase_remote_config/zzen;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase_remote_config/zzei;->zza(ZLcom/google/android/gms/internal/firebase_remote_config/zzen;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
