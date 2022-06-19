.class public final Lcom/google/android/gms/internal/ads/jr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/vp0;

.field private b:Lcom/google/android/gms/internal/ads/hs0;

.field private c:Lcom/google/android/gms/internal/ads/co2;

.field private d:Lcom/google/android/gms/internal/ads/ts0;

.field private e:Lcom/google/android/gms/internal/ads/tk2;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vp0;)Lcom/google/android/gms/internal/ads/jr0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr0;->a:Lcom/google/android/gms/internal/ads/vp0;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/hs0;)Lcom/google/android/gms/internal/ads/jr0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr0;->b:Lcom/google/android/gms/internal/ads/hs0;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/sp0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->a:Lcom/google/android/gms/internal/ads/vp0;

    const-class v1, Lcom/google/android/gms/internal/ads/vp0;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->b:Lcom/google/android/gms/internal/ads/hs0;

    const-class v1, Lcom/google/android/gms/internal/ads/hs0;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->c:Lcom/google/android/gms/internal/ads/co2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/co2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/co2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->c:Lcom/google/android/gms/internal/ads/co2;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->d:Lcom/google/android/gms/internal/ads/ts0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/ts0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ts0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->d:Lcom/google/android/gms/internal/ads/ts0;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->e:Lcom/google/android/gms/internal/ads/tk2;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/tk2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tk2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jr0;->e:Lcom/google/android/gms/internal/ads/tk2;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/fs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jr0;->a:Lcom/google/android/gms/internal/ads/vp0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jr0;->b:Lcom/google/android/gms/internal/ads/hs0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jr0;->c:Lcom/google/android/gms/internal/ads/co2;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jr0;->d:Lcom/google/android/gms/internal/ads/ts0;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/jr0;->e:Lcom/google/android/gms/internal/ads/tk2;

    const/4 v7, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/fs0;-><init>(Lcom/google/android/gms/internal/ads/vp0;Lcom/google/android/gms/internal/ads/hs0;Lcom/google/android/gms/internal/ads/co2;Lcom/google/android/gms/internal/ads/ts0;Lcom/google/android/gms/internal/ads/tk2;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
