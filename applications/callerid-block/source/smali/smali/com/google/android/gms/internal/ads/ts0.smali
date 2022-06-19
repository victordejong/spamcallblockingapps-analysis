.class public final Lcom/google/android/gms/internal/ads/ts0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hs0;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/n71;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ts0;->a:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/fv;->t()Lcom/google/android/gms/internal/ads/gj1;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/gj1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/gj1;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzyx;-><init>()V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/gj1;->b(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/gj1;

    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/gj1;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gj1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gj1;->zza()Lcom/google/android/gms/internal/ads/hj1;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/hj1;->zza()Lcom/google/android/gms/internal/ads/n71;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/n71;

    new-instance p2, Lcom/google/android/gms/internal/ads/ss0;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/ss0;-><init>(Lcom/google/android/gms/internal/ads/ts0;Lcom/google/android/gms/internal/ads/ms0;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/n71;->S3(Lcom/google/android/gms/internal/ads/j;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/ts0;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ts0;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzys;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/n71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/n71;->q0(Lcom/google/android/gms/internal/ads/zzys;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/n71;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n71;->c2(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ts0;->b:Lcom/google/android/gms/internal/ads/n71;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n71;->c()V

    return-void
.end method
