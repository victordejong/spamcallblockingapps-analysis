.class final Lcom/google/android/gms/internal/ads/pn2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/en2;

.field final synthetic b:Lcom/google/android/gms/internal/ads/qn2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qn2;Lcom/google/android/gms/internal/ads/en2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn2;->b:Lcom/google/android/gms/internal/ads/qn2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pn2;->a:Lcom/google/android/gms/internal/ads/en2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn2;->b:Lcom/google/android/gms/internal/ads/qn2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qn2;->f:Lcom/google/android/gms/internal/ads/rn2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rn2;->d(Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/sn2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn2;->a:Lcom/google/android/gms/internal/ads/en2;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/sn2;->J(Lcom/google/android/gms/internal/ads/en2;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pn2;->b:Lcom/google/android/gms/internal/ads/qn2;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qn2;->f:Lcom/google/android/gms/internal/ads/rn2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rn2;->d(Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/sn2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn2;->a:Lcom/google/android/gms/internal/ads/en2;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/sn2;->b0(Lcom/google/android/gms/internal/ads/en2;)V

    return-void
.end method
