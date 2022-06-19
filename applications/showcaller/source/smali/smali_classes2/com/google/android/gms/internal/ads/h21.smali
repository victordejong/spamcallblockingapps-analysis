.class public final Lcom/google/android/gms/internal/ads/h21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/ads/xj2;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/google/android/gms/internal/ads/sj2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/h21;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h21;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/h21;)Lcom/google/android/gms/internal/ads/xj2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h21;->b:Lcom/google/android/gms/internal/ads/xj2;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/h21;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h21;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/h21;)Lcom/google/android/gms/internal/ads/sj2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h21;->d:Lcom/google/android/gms/internal/ads/sj2;

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h21;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h21;->b:Lcom/google/android/gms/internal/ads/xj2;

    return-object p0
.end method

.method public final g(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/h21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h21;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/j21;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/j21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/j21;-><init>(Lcom/google/android/gms/internal/ads/h21;Lcom/google/android/gms/internal/ads/i21;)V

    return-object v0
.end method

.method public final i(Lcom/google/android/gms/internal/ads/sj2;)Lcom/google/android/gms/internal/ads/h21;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h21;->d:Lcom/google/android/gms/internal/ads/sj2;

    return-object p0
.end method
