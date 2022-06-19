.class final Lcom/google/android/gms/internal/firebase_remote_config/zzfw;
.super Ljava/lang/Object;


# instance fields
.field public zzor:I

.field public zzos:J

.field public zzot:Ljava/lang/Object;

.field public final zzou:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_remote_config/zzgx;->zzgh()Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfw;->zzou:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase_remote_config/zzgx;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_remote_config/zzfw;->zzou:Lcom/google/android/gms/internal/firebase_remote_config/zzgx;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
