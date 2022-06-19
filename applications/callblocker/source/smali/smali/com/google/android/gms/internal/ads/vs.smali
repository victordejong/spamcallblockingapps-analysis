.class public Lcom/google/android/gms/internal/ads/vs;
.super Lcom/google/android/gms/internal/ads/vp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vp;-><init>()V

    return-void
.end method

.method private static a(III)Z
    .locals 1

    .prologue
    .line 33
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 34
    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cd:Lcom/google/android/gms/internal/ads/ect;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v2

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cf:Lcom/google/android/gms/internal/ads/ect;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    .line 11
    iget v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v4

    .line 12
    iget v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v5

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    const-string/jumbo v1, "window"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string/jumbo v8, "dimen"

    const-string/jumbo v9, "android"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22
    if-lez v0, :cond_4

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 24
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cc:Lcom/google/android/gms/internal/ads/ect;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v8

    .line 29
    add-int/2addr v1, v4

    .line 30
    invoke-static {v6, v1, v0}, Lcom/google/android/gms/internal/ads/vs;->a(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/ads/vs;->a(III)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 32
    :goto_2
    if-nez v0, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 31
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method
