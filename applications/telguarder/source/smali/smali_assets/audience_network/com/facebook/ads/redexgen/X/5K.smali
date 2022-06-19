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
.field public final A00:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 13412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13413
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    .line 13414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A04:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1X(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 13415
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "SDJ7CqIuYGJEmotuvG7btG7Q2tCK4c6p"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3TZdd6KNeaSFSkmrHNZK7GULPPfkGOEa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x32

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5K;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x32t
        -0x36t
        -0x37t
        -0x3t
        -0x14t
        -0xft
        -0x13t
        -0xat
        -0x15t
        -0x13t
        -0x2at
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "068yMtBHtCdtzUYBTQD9IwnMWW1doBJF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2l8Hok5ewW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqMVYGMc7AyphtDxx4DkXGESiOtqp3Wk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n7xht10RjuH04nLwyOxbbpbZUJ6bFNP5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hemUdCIRyaFDmP64bLQtQG29khNbMpFH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0krrnlsRXu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j9YMm5Kfv7iMZif7VGfsQGY8YQ9Z0I42"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SiUubuHC3Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    return-void
.end method

.method private A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 9

    .line 13416
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v7

    .line 13417
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    new-instance v3, Lcom/facebook/ads/redexgen/X/aG;

    invoke-direct {v3, p0, p1, v7}, Lcom/facebook/ads/redexgen/X/aG;-><init>(Lcom/facebook/ads/redexgen/X/5K;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/T6;)V

    .line 13418
    .local p1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/5I;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A13()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v8

    .line 13419
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/Ja;
    if-eqz v8, :cond_1

    .line 13420
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A10()Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 13421
    .local v7, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13422
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A14()Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v5

    .line 13423
    .local v7, "adListener":Lcom/facebook/ads/redexgen/X/T5;
    sget-object v6, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    .line 13424
    .local v3, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "aFZFEDb6phUkMJAuumeHd9ws0nVx9tBY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 13425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    const-wide/16 v2, -0x1

    .line 13426
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 13427
    if-eqz v5, :cond_2

    .line 13428
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Jn;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/JQ;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 13429
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "oesEo3u5gOmbsNZfXjsimFyw8pPXYbZZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 13430
    .local v3, "adContextWrapper":Lcom/facebook/ads/redexgen/X/Wm;
    if-eqz v4, :cond_4

    .line 13431
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A1c()Z

    move-result v1

    .line 13432
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A1B()Ljava/lang/String;

    move-result-object v0

    .line 13433
    invoke-static {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A05(Lcom/facebook/ads/redexgen/X/Wm;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13434
    .local v8, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/T6;->A0c(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 13435
    new-instance v0, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v0, p0, v7, v1}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/5K;Lcom/facebook/ads/redexgen/X/T6;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 13436
    .end local v8    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "adListener":Lcom/facebook/ads/redexgen/X/T5;
    .end local v3    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Wm;
    :goto_0
    return-void

    .line 13437
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A1c()Z

    move-result v0

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/5H;

    invoke-direct {v5, v2, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/5H;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/5I;ZLcom/facebook/ads/redexgen/X/aG;)V

    .line 13438
    .local v8, "loadImageTask":Lcom/facebook/ads/redexgen/X/5H;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/5J;

    const/4 v3, 0x0

    .line 13439
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T6;->A1B()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/5J;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/aG;)V

    aput-object v0, v4, v3

    .line 13440
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/5H;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 13441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 13442
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 4
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

    .line 13443
    .local v0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 13445
    :cond_0
    if-eqz p3, :cond_2

    .line 13446
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A02:[Ljava/lang/String;

    const-string v1, "ll9cTRtW3a"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WGLVGgKdvO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/T6;->A1M(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    goto :goto_0

    .line 13447
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/T6;->A1L(Landroid/view/View;Landroid/widget/ImageView;)V

    .line 13448
    :goto_0
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 13449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5K;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 13450
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 3
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

    .line 13451
    .local v1, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 13452
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/aO;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    const/4 v0, 0x1

    .line 13453
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 13454
    :cond_0
    if-eqz p3, :cond_1

    .line 13455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/T6;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 13456
    :goto_0
    return-void

    .line 13457
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/T6;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0
.end method
