.class public final Lcom/google/android/gms/internal/ads/edk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jz;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/egm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/egm;-><init>(Lcom/google/android/gms/internal/ads/edk;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edk;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/fa<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/edk;->a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/fa<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->zzk()V

    const-string v0, "post-response"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edk;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/efl;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/efl;-><init>(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzap;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lcom/google/android/gms/internal/ads/fa;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/fa;-><init>(Lcom/google/android/gms/internal/ads/zzap;)V

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edk;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/efl;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/efl;-><init>(Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/fa;Ljava/lang/Runnable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
