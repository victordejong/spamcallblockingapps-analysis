.class final synthetic Lcom/google/android/gms/internal/ads/hr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zzbef;

.field private final c:Z

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbef;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/zzbef;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/hr;->c:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/hr;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/zzbef;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/hr;->c:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/hr;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbef;->D(ZJ)V

    return-void
.end method
