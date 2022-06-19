.class public final Lcom/facebook/ads/redexgen/X/aO;
.super Lcom/facebook/ads/redexgen/X/NS;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NO;,
        Lcom/facebook/ads/redexgen/X/NP;,
        Lcom/facebook/ads/redexgen/X/NN;,
        Lcom/facebook/ads/redexgen/X/NM;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/NJ;

.field public A05:Lcom/facebook/ads/redexgen/X/NM;

.field public final A06:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A07:Lcom/facebook/ads/redexgen/X/NP;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 67278
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aO;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/aO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0C:Ljava/lang/String;

    .line 67279
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0D:Ljava/util/Set;

    .line 67280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A09:Z

    .line 67281
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Z

    .line 67282
    sget-object v3, Lcom/facebook/ads/redexgen/X/aO;->A0D:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67283
    sget-object v3, Lcom/facebook/ads/redexgen/X/aO;->A0D:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67284
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/NM;)V
    .locals 2

    .line 67285
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Landroid/app/Activity;)V

    .line 67286
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:J

    .line 67287
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    .line 67288
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    .line 67289
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    .line 67290
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/redexgen/X/NM;

    .line 67291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67292
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67293
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()Lcom/facebook/ads/redexgen/X/NP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/NP;

    .line 67294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/NP;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A08()V

    .line 67296
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/NM;)V
    .locals 2

    .line 67297
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 67298
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:J

    .line 67299
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    .line 67300
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    .line 67301
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    .line 67302
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/redexgen/X/NM;

    .line 67303
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    .line 67304
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()Lcom/facebook/ads/redexgen/X/NP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/NP;

    .line 67306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/NP;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aO;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67307
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A08()V

    .line 67308
    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .locals 1

    .line 67309
    sget-object v0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A02(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 67310
    sput-object p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/NP;
    .locals 3

    .line 67311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/redexgen/X/NM;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NP;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/NP;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/Set;
    .locals 1

    .line 67312
    sget-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .locals 5

    .line 67313
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 67314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A04:Lcom/facebook/ads/redexgen/X/NJ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A06(Z)V

    .line 67315
    :cond_0
    return-void
.end method

.method private A08()V
    .locals 3

    .line 67316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A09:Z

    .line 67317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Z

    .line 67318
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 67319
    .local p0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 67320
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67321
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 67322
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 67323
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 67324
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 67325
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 67326
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 67327
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 67328
    new-instance v0, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A04:Lcom/facebook/ads/redexgen/X/NJ;

    .line 67329
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x53t
        0x4ft
        0x4ft
        0x4bt
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
    .end array-data
.end method

.method public static A0A(IILandroid/content/Intent;)V
    .locals 1

    .line 67330
    sget-object v0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 67331
    return-void

    .line 67332
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 67333
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    .line 67334
    sget-object p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    .line 67335
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 67336
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 67337
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    .line 67338
    :cond_1
    return-void

    .line 67339
    :cond_2
    sget-object p0, Lcom/facebook/ads/redexgen/X/aO;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static synthetic A0B()Z
    .locals 1

    .line 67340
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A0A:Z

    return v0
.end method

.method public static synthetic A0C()Z
    .locals 1

    .line 67341
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/aO;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 67342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/redexgen/X/NM;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A04:Lcom/facebook/ads/redexgen/X/NJ;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0E()Landroid/webkit/WebViewClient;
    .locals 1

    .line 67343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A04()Lcom/facebook/ads/redexgen/X/NP;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(J)V
    .locals 5

    .line 67344
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 67345
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    .line 67346
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A07()V

    .line 67347
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 67348
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 67349
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    .line 67350
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A07()V

    .line 67351
    return-void
.end method

.method public final A0H(J)V
    .locals 5

    .line 67352
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 67353
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:J

    .line 67354
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 67355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A05:Lcom/facebook/ads/redexgen/X/NM;

    .line 67356
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NY;->A04(Landroid/webkit/WebView;)V

    .line 67357
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NS;->destroy()V

    .line 67358
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 67359
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 67360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 67361
    .local p0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 67362
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67363
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 67364
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 67365
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 67366
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 67367
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NS;->onDraw(Landroid/graphics/Canvas;)V

    .line 67368
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aO;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 67369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:J

    .line 67370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aO;->A07()V

    .line 67371
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/NN;)V
    .locals 2

    .line 67372
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aO;->A07:Lcom/facebook/ads/redexgen/X/NP;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NP;->A03(Ljava/lang/ref/WeakReference;)V

    .line 67373
    return-void
.end method
