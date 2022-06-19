.class final Lcom/google/android/gms/common/api/internal/p0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/common/api/internal/s0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/s0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p0;->d:Lcom/google/android/gms/common/api/internal/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p0;->d:Lcom/google/android/gms/common/api/internal/s0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/s0;->A4(Lcom/google/android/gms/common/api/internal/s0;)Lcom/google/android/gms/common/api/internal/r0;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/r0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
