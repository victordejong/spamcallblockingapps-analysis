.class final Lcom/google/android/gms/internal/ads/hw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Lcom/google/android/gms/internal/ads/ml1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/iw0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iw0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hw0;->a:Lcom/google/android/gms/internal/ads/iw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/ml1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hw0;->a:Lcom/google/android/gms/internal/ads/iw0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iw0;->b(Lcom/google/android/gms/internal/ads/iw0;)Lcom/google/android/gms/internal/ads/ka0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ka0;->p(Lcom/google/android/gms/internal/ads/ml1;)V

    return-void
.end method
