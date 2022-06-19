.class public final Lcom/google/android/gms/internal/ads/dp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ro1;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/i42;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dp1;->a:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/sp0;->t()Lcom/google/android/gms/internal/ads/ih2;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/ih2;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ih2;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ih2;->a(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/ih2;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/ih2;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ih2;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ih2;->zza()Lcom/google/android/gms/internal/ads/jh2;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jh2;->zza()Lcom/google/android/gms/internal/ads/i42;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dp1;->b:Lcom/google/android/gms/internal/ads/i42;

    new-instance p2, Lcom/google/android/gms/internal/ads/cp1;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/cp1;-><init>(Lcom/google/android/gms/internal/ads/dp1;Lcom/google/android/gms/internal/ads/wo1;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/i42;->X5(Lcom/google/android/gms/internal/ads/gs;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/dp1;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dp1;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dp1;->b:Lcom/google/android/gms/internal/ads/i42;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/i42;->k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dp1;->b:Lcom/google/android/gms/internal/ads/i42;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/i42;->W3(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dp1;->b:Lcom/google/android/gms/internal/ads/i42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i42;->g()V

    return-void
.end method
