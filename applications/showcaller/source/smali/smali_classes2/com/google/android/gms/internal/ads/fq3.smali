.class public final Lcom/google/android/gms/internal/ads/fq3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ur3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/iq3;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iq3;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fq3;->a:Lcom/google/android/gms/internal/ads/iq3;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/fq3;->b:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/fq3;->c:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/fq3;->d:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/fq3;->e:J

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/fq3;->f:J

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/fq3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fq3;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/fq3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fq3;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/fq3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fq3;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/fq3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fq3;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/sr3;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fq3;->a:Lcom/google/android/gms/internal/ads/iq3;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/iq3;->a(J)J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/fq3;->c:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/fq3;->d:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/fq3;->e:J

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/fq3;->f:J

    const-wide/16 v3, 0x0

    .line 2
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/hq3;->a(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/sr3;

    new-instance v3, Lcom/google/android/gms/internal/ads/vr3;

    .line 3
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/vr3;-><init>(JJ)V

    .line 4
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    return-object v2
.end method

.method public final i(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fq3;->a:Lcom/google/android/gms/internal/ads/iq3;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/iq3;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fq3;->b:J

    return-wide v0
.end method
