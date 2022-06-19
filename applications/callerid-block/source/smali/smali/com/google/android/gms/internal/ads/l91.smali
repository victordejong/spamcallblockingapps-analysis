.class public final Lcom/google/android/gms/internal/ads/l91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/id1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/id1<",
        "Lcom/google/android/gms/internal/ads/hd1<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/zn;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l91;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l91;->b:Lcom/google/android/gms/internal/ads/zn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/hd1<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->y1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l91;->b:Lcom/google/android/gms/internal/ads/zn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zn;->n()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/j91;->a:Lcom/google/android/gms/internal/ads/fw1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l91;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/kz1;->i(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method
