.class final Lcom/google/android/gms/internal/ads/h4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/s6;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/p4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/p4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h4;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/h4;->a:Lcom/google/android/gms/internal/ads/p4;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/p4;->Q(Lcom/google/android/gms/internal/ads/p4;Z)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h4;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p4;->P(Lcom/google/android/gms/internal/ads/p4;)Lcom/google/android/gms/internal/ads/l9;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/l9;->A(I)Z

    return-void
.end method
