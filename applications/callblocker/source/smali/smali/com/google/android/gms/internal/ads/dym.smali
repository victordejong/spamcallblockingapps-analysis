.class public final Lcom/google/android/gms/internal/ads/dym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:[Lcom/google/android/gms/ads/e;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/ads/m$a;->AdsAttrs:[I

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 46
    sget v0, Lcom/google/android/gms/ads/m$a;->AdsAttrs_adSize:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    sget v0, Lcom/google/android/gms/ads/m$a;->AdsAttrs_adSizes:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 49
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 51
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dym;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->a:[Lcom/google/android/gms/ads/e;

    .line 57
    :goto_2
    sget v0, Lcom/google/android/gms/ads/m$a;->AdsAttrs_adUnitId:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->b:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required XML attribute \"adUnitId\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v1, v2

    .line 49
    goto :goto_1

    .line 52
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 53
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dym;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->a:[Lcom/google/android/gms/ads/e;

    goto :goto_2

    .line 54
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required XML attribute \"adSize\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)[Lcom/google/android/gms/ads/e;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1
    const-string/jumbo v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2
    array-length v0, v4

    new-array v5, v0, [Lcom/google/android/gms/ads/e;

    move v0, v1

    .line 3
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_e

    .line 4
    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 5
    const-string/jumbo v2, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    const-string/jumbo v2, "[xX]"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 7
    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 8
    aget-object v2, v7, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    .line 9
    :try_start_0
    const-string/jumbo v2, "FULL_WIDTH"

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    const/4 v2, -0x1

    move v3, v2

    .line 12
    :goto_1
    const-string/jumbo v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    const/4 v2, -0x2

    .line 18
    :goto_2
    new-instance v6, Lcom/google/android/gms/ads/e;

    invoke-direct {v6, v3, v2}, Lcom/google/android/gms/ads/e;-><init>(II)V

    aput-object v6, v5, v0

    .line 39
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto :goto_1

    .line 14
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_2

    .line 17
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 20
    :cond_3
    const-string/jumbo v2, "BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    sget-object v2, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto :goto_3

    .line 22
    :cond_4
    const-string/jumbo v2, "LARGE_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    sget-object v2, Lcom/google/android/gms/ads/e;->c:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto :goto_3

    .line 24
    :cond_5
    const-string/jumbo v2, "FULL_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    sget-object v2, Lcom/google/android/gms/ads/e;->b:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto :goto_3

    .line 26
    :cond_6
    const-string/jumbo v2, "LEADERBOARD"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    sget-object v2, Lcom/google/android/gms/ads/e;->d:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto :goto_3

    .line 28
    :cond_7
    const-string/jumbo v2, "MEDIUM_RECTANGLE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    sget-object v2, Lcom/google/android/gms/ads/e;->e:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto :goto_3

    .line 30
    :cond_8
    const-string/jumbo v2, "SMART_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    sget-object v2, Lcom/google/android/gms/ads/e;->g:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto/16 :goto_3

    .line 32
    :cond_9
    const-string/jumbo v2, "WIDE_SKYSCRAPER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    sget-object v2, Lcom/google/android/gms/ads/e;->f:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto/16 :goto_3

    .line 34
    :cond_a
    const-string/jumbo v2, "FLUID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 35
    sget-object v2, Lcom/google/android/gms/ads/e;->h:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto/16 :goto_3

    .line 36
    :cond_b
    const-string/jumbo v2, "ICON"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 37
    sget-object v2, Lcom/google/android/gms/ads/e;->j:Lcom/google/android/gms/ads/e;

    aput-object v2, v5, v0

    goto/16 :goto_3

    .line 38
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :cond_e
    array-length v0, v5

    if-nez v0, :cond_10

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 42
    :cond_10
    return-object v5
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)[Lcom/google/android/gms/ads/e;
    .locals 2

    .prologue
    .line 61
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->a:[Lcom/google/android/gms/ads/e;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dym;->a:[Lcom/google/android/gms/ads/e;

    return-object v0
.end method
