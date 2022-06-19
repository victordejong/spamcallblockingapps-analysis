.class public final Lcom/google/android/gms/internal/ads/zv;
.super Lcom/google/android/gms/internal/ads/zn;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aad;IZLcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/aae;)Lcom/google/android/gms/internal/ads/zo;
    .locals 8

    .prologue
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    if-nez v0, :cond_2

    .line 6
    const/4 v1, 0x0

    .line 21
    :goto_1
    return-object v1

    .line 4
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/aah;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->e()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aah;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;)V

    .line 12
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/aal;

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zv;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    move-result v6

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/aal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aah;Lcom/google/android/gms/internal/ads/aad;ZZLcom/google/android/gms/internal/ads/aae;)V

    goto :goto_1

    .line 16
    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/ads/za;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zv;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    move-result v6

    new-instance v0, Lcom/google/android/gms/internal/ads/aah;

    .line 18
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    .line 19
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aad;->e()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aah;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;)V

    move-object v1, v7

    move-object v2, p1

    move v3, p4

    move v4, v6

    move-object v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/za;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/aae;Lcom/google/android/gms/internal/ads/aah;)V

    move-object v1, v7

    .line 21
    goto :goto_1
.end method
