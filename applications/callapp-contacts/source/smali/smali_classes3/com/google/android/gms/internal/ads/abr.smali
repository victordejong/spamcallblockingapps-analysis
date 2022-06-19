.class final synthetic Lcom/google/android/gms/internal/ads/abr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbcv;

.field private final b:Z

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abr;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/abr;->b:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/abr;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abr;->a:Lcom/google/android/gms/internal/ads/zzbcv;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/abr;->b:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abr;->c:J

    .line 1296
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->a:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/abb;->a(ZJ)V

    return-void
.end method
