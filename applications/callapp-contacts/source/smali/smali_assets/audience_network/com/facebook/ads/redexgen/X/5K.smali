.class public final Lcom/facebook/ads/redexgen/X/5K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5H;,
        Lcom/facebook/ads/redexgen/X/5I;,
        Lcom/facebook/ads/redexgen/X/5J;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 13320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13321
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    .line 13322
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A04:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1X(Lcom/facebook/ads/redexgen/X/Jr;)V

    .line 13323
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5K;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "g9VMJ7KVDiHxjzY4mov6XPU8OVFxG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2bt
        0x2ft
        0x2ct
        0x18t
        0x9t
        0x4t
        0x8t
        0x3t
        0xet
        0x8t
        0x23t
        0x8t
        0x19t
        0x1at
        0x2t
        0x1ft
        0x6t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GHtEJsCBxF6ZG8G1CCL5RBmKmDCxDlHG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8TFtHG5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ovYsObbmHQ4MgJZYSDt7UbSE4I8Jd3xL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OStrwIklzSQSoVp6y3SnTe0L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CizBuXx6tKQSK5P8xVf5ORSYZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CxGaKpsxgS6bhWDX5B71lG4aeRzyf4w9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZUquOnXGk9BCY4cqa0yz5KxW6oH5Pvvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wvrH4lpYI8UyLhNBrrW8XGK9bs66R2Pk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    return-void
.end method

.method private A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 9

    .line 13324
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v7

    .line 13325
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {v4, p0, p1, v7}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(Lcom/facebook/ads/redexgen/X/5K;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/cD;)V

    .line 13326
    .local p1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/5I;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A13()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v8

    .line 13327
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/JY;
    if-eqz v8, :cond_1

    .line 13328
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0I(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13329
    .local v7, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    .line 13330
    .local v4, "adContextWrapper":Lcom/facebook/ads/redexgen/X/XJ;
    if-eqz v3, :cond_0

    .line 13331
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A1c()Z

    move-result v1

    .line 13332
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A1B()Ljava/lang/String;

    move-result-object v0

    .line 13333
    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A05(Lcom/facebook/ads/redexgen/X/XJ;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13334
    .local v8, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/cD;->A0c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 13335
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tq;

    invoke-direct {v0, p0, v7, v1}, Lcom/facebook/ads/redexgen/X/Tq;-><init>(Lcom/facebook/ads/redexgen/X/5K;Lcom/facebook/ads/redexgen/X/cD;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 13336
    .end local v8    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/XJ;
    :goto_0
    return-void

    .line 13337
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A1c()Z

    move-result v0

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/5H;

    invoke-direct {v5, v2, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/5H;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/5I;ZLcom/facebook/ads/redexgen/X/Tp;)V

    .line 13338
    .local v8, "loadImageTask":Lcom/facebook/ads/redexgen/X/5H;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/5J;

    const/4 v3, 0x0

    .line 13339
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A1B()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/5J;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Tp;)V

    aput-object v0, v4, v3

    .line 13340
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/5H;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 13341
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A14()Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v6

    .line 13342
    .local v7, "adListener":Lcom/facebook/ads/redexgen/X/cE;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 13343
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 13344
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    const-wide/16 v2, -0x1

    .line 13345
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 13346
    if-eqz v6, :cond_2

    .line 13347
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Jl;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/JO;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 13348
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 13349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13350
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13351
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 13353
    :cond_0
    if-eqz p3, :cond_1

    .line 13354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/cD;->A1M(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13355
    :goto_0
    return-void

    .line 13356
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/cD;->A1L(Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 13357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13358
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13359
    .local v4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13360
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 13361
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "js1TYeoyNOBe6miaJaLofzAsC6CsUfwk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "W1hafLFlhK2580scubVHArACmFSZlS1F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Th;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 13362
    :cond_0
    if-eqz p3, :cond_1

    .line 13363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/cD;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 13364
    :goto_0
    return-void

    .line 13365
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/cD;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
