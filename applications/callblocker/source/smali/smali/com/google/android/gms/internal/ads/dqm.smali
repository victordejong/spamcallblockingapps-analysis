.class final Lcom/google/android/gms/internal/ads/dqm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/android/gms/internal/ads/drk;

.field public e:Lcom/google/android/gms/internal/ads/dqm;


# direct methods
.method public constructor <init>(JI)V
    .locals 3

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dqm;->a:J

    .line 3
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dqm;->b:J

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dqm;
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqm;->d:Lcom/google/android/gms/internal/ads/drk;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqm;->e:Lcom/google/android/gms/internal/ads/dqm;

    return-object v0
.end method
