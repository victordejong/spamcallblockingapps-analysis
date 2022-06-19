.class public final Lcom/facebook/ads/redexgen/X/OJ;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebViewClient"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OJ;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OJ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 0

    .line 46439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/RX;)V
    .locals 0

    .line 46440
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/OJ;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const-string v1, "pKC7szj5R0qBwTmNDTYZuLrnbbbgOopj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x21

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OJ;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x62t
        0x63t
        0x75t
        0x65t
        0x74t
        0x6ft
        0x76t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x7ct
        0x71t
        0x7ct
        0x5bt
        0x6at
        0x79t
        0x6bt
        0x70t
        0x6t
        0x11t
        0x11t
        0xct
        0x11t
        0x20t
        0xct
        0x7t
        0x6t
        0x5at
        0x5dt
        0x4at
        0x55t
        0x5ft
        0x53t
        0x52t
        0x12t
        0x55t
        0x5ft
        0x53t
        0xdt
        0x11t
        0x11t
        0x15t
        0x3at
        0x0t
        0x17t
        0x17t
        0xat
        0x17t
        0x13t
        0x11t
        0xat
        0xct
        0x11t
        0xat
        0x17t
        0x1at
        0x6at
        0x6dt
        0x73t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6FWFK2Rjg5lzc4YxuKyAM2pjdKcDgsPX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X8DXQa0II"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SNpKLA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qdf29haAswqAmNE65waVoEZq7xKg2wdQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zoYtBkcpJPqvxBhZCETS8Gv12yQPTvJi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ExNOaNYHlEOFqs215y0dlBgemejMJNEa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gJ6ZUqdzTjndwEo8cFEFcqem1uRbclUa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    return-void
.end method

.method private A03(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 46441
    if-eqz p4, :cond_0

    .line 46442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0T()V

    .line 46443
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0P:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 46444
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46445
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46446
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46447
    const/16 v2, 0x39

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46448
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46449
    .local p1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A51(Ljava/lang/String;)V

    .line 46450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A06(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OC;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A0t:I

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/OC;->A04(ILjava/lang/String;)V

    .line 46451
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 46452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0Q:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 46453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A00(Lcom/facebook/ads/redexgen/X/ON;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A52(J)V

    .line 46454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0T()V

    .line 46455
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0L(Lcom/facebook/ads/redexgen/X/ON;Z)Z

    .line 46456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0I(Lcom/facebook/ads/redexgen/X/ON;)V

    .line 46457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A07(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A07(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OL;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OL;->ACB()V

    .line 46459
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 46461
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 46462
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A03(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 46463
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 46464
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 46465
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46466
    const/4 v0, 0x1

    invoke-direct {p0, v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A03(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 46467
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 46468
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 46469
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0xb

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46470
    return-void

    .line 46471
    :cond_0
    if-eqz p3, :cond_1

    .line 46472
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v5

    .line 46473
    .local p0, "statusCode":I
    .restart local p0    # "statusCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0x27

    const/16 v1, 0xa

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/OJ;->A03(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 46474
    return-void

    .line 46475
    .end local p0    # "statusCode":I
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 46476
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46477
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46478
    const/16 v2, 0x31

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46479
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46480
    .local p1, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const-string v1, "cKmn9F08G0LbJgt48cswTZGSotGQ5jj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->A4x(Ljava/lang/String;)V

    .line 46481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A01(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A04(Ljava/lang/String;)V

    .line 46482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A08(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OM;->ABG()V

    .line 46484
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/OJ;->A02:[Ljava/lang/String;

    const-string v1, "Jr1n"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 46485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 46486
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 46487
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A02(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 46488
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A09(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 46489
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/ON;

    .line 46490
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A01(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0h()Z

    move-result v6

    .line 46491
    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Oc;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/7D;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/OZ;Lcom/facebook/ads/redexgen/X/Ob;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
