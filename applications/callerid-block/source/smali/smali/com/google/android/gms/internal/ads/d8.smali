.class final Lcom/google/android/gms/internal/ads/d8;
.super Lcom/google/android/gms/internal/ads/f7;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/c8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/f7;-><init>()V

    return-void
.end method


# virtual methods
.method public final U5(Lcom/google/android/gms/internal/ads/w6;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f8;->e(Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/ads/formats/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/f8;->e(Lcom/google/android/gms/internal/ads/f8;)Lcom/google/android/gms/ads/formats/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d8;->b:Lcom/google/android/gms/internal/ads/f8;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/f8;->c(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/w6;)Lcom/google/android/gms/ads/formats/d;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/formats/d$a;->a(Lcom/google/android/gms/ads/formats/d;Ljava/lang/String;)V

    return-void
.end method
