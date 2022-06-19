.class final Lcom/google/android/gms/internal/ads/e8;
.super Lcom/google/android/gms/internal/ads/i7;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/c8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i7;-><init>()V

    return-void
.end method


# virtual methods
.method public final m5(Lcom/google/android/gms/internal/ads/w6;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f8;->d(Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/ads/formats/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/f8;->c(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/w6;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/d$b;->f(Lcom/google/android/gms/ads/formats/d;)V

    return-void
.end method
