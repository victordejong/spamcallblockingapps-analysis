.class final synthetic Lcom/google/android/gms/internal/ads/f41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/fw1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jt;

.field private final b:Lcom/google/android/gms/internal/ads/al1;

.field private final c:Lcom/google/android/gms/internal/ads/vn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/k41;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/vn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f41;->a:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f41;->b:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/f41;->c:Lcom/google/android/gms/internal/ads/vn0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f41;->a:Lcom/google/android/gms/internal/ads/jt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f41;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f41;->c:Lcom/google/android/gms/internal/ads/vn0;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->H:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->t()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->A0()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->onPause()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn0;->h()Lcom/google/android/gms/internal/ads/un0;

    move-result-object p1

    return-object p1
.end method
