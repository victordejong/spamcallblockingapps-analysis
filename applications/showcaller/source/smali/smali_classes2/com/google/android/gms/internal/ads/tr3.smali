.class public Lcom/google/android/gms/internal/ads/tr3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ur3;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/sr3;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tr3;->a:J

    new-instance p1, Lcom/google/android/gms/internal/ads/sr3;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/vr3;->a:Lcom/google/android/gms/internal/ads/vr3;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/vr3;

    .line 2
    invoke-direct {p2, v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/vr3;-><init>(JJ)V

    .line 3
    :goto_0
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/sr3;-><init>(Lcom/google/android/gms/internal/ads/vr3;Lcom/google/android/gms/internal/ads/vr3;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tr3;->b:Lcom/google/android/gms/internal/ads/sr3;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/sr3;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tr3;->b:Lcom/google/android/gms/internal/ads/sr3;

    return-object p1
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tr3;->a:J

    return-wide v0
.end method
