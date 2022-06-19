.class final synthetic Lcom/google/android/gms/internal/ads/lj1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/di1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lj1;->a:Lcom/google/android/gms/internal/ads/zj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lj1;->a:Lcom/google/android/gms/internal/ads/zj;

    check-cast p1, Lcom/google/android/gms/internal/ads/uk;

    new-instance v1, Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zj;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/hl;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/uk;->Z2(Lcom/google/android/gms/internal/ads/ok;)V

    return-void
.end method
