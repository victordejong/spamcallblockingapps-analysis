.class final Lcom/google/android/gms/internal/ads/gp1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/wo1;

.field final synthetic b:Lcom/google/android/gms/internal/ads/hp1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hp1;Lcom/google/android/gms/internal/ads/wo1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gp1;->b:Lcom/google/android/gms/internal/ads/hp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gp1;->a:Lcom/google/android/gms/internal/ads/wo1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp1;->b:Lcom/google/android/gms/internal/ads/hp1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hp1;->f:Lcom/google/android/gms/internal/ads/ip1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ip1;->f(Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/jp1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gp1;->a:Lcom/google/android/gms/internal/ads/wo1;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/jp1;->e0(Lcom/google/android/gms/internal/ads/wo1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gp1;->b:Lcom/google/android/gms/internal/ads/hp1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/hp1;->f:Lcom/google/android/gms/internal/ads/ip1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ip1;->f(Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/jp1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp1;->a:Lcom/google/android/gms/internal/ads/wo1;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/jp1;->x(Lcom/google/android/gms/internal/ads/wo1;)V

    return-void
.end method
