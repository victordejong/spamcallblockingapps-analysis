.class final synthetic Lcom/google/android/gms/internal/ads/xs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/rq;

.field private final c:Z

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs;->b:Lcom/google/android/gms/internal/ads/rq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/xs;->c:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/xs;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs;->b:Lcom/google/android/gms/internal/ads/rq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/xs;->c:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/xs;->d:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/rq;->a1(ZJ)V

    return-void
.end method
