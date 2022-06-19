.class final Lcom/google/android/gms/internal/ads/qj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/qf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/qf;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qj;->a:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qj;->b:Lcom/google/android/gms/internal/ads/qf;

    .line 4
    return-void
.end method
