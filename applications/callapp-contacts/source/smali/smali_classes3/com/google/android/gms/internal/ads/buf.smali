.class final Lcom/google/android/gms/internal/ads/buf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bua;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buf;->a:Lcom/google/android/gms/internal/ads/bua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/alq;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anp;->h()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buf;->a:Lcom/google/android/gms/internal/ads/bua;

    .line 1023
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bua;->a:Lcom/google/android/gms/internal/ads/amn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amn;->b()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buf;->a:Lcom/google/android/gms/internal/ads/bua;

    .line 1024
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bua;->d:Lcom/google/android/gms/internal/ads/arn;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/arn;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cqb;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
