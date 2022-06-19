.class public final Lcom/facebook/ads/redexgen/X/SA;
.super Lcom/facebook/ads/redexgen/X/NN;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NJ;,
        Lcom/facebook/ads/redexgen/X/NK;,
        Lcom/facebook/ads/redexgen/X/NI;,
        Lcom/facebook/ads/redexgen/X/NH;
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

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/util/Set;
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

.field public A04:Lcom/facebook/ads/redexgen/X/NE;

.field public A05:Lcom/facebook/ads/redexgen/X/NH;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A07:Lcom/facebook/ads/redexgen/X/NK;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 51317
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SA;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SA;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SA;->A0D:Ljava/lang/String;

    .line 51318
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SA;->A0E:Ljava/util/Set;

    .line 51319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A09:Z

    .line 51320
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A0A:Z

    .line 51321
    sget-object v3, Lcom/facebook/ads/redexgen/X/SA;->A0E:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SA;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51322
    sget-object v3, Lcom/facebook/ads/redexgen/X/SA;->A0E:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SA;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51323
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 2

    .line 51324
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Landroid/app/Activity;)V

    .line 51325
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A02:J

    .line 51326
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    .line 51327
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    .line 51328
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    .line 51329
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SA;->A05:Lcom/facebook/ads/redexgen/X/NH;

    .line 51330
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51331
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->A0E()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SA;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 51332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A04()Lcom/facebook/ads/redexgen/X/NK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A07:Lcom/facebook/ads/redexgen/X/NK;

    .line 51333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A07:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SA;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51334
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A08()V

    .line 51335
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 2

    .line 51336
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 51337
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A02:J

    .line 51338
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    .line 51339
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    .line 51340
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    .line 51341
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SA;->A05:Lcom/facebook/ads/redexgen/X/NH;

    .line 51342
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 51343
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->A0E()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SA;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 51344
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A04()Lcom/facebook/ads/redexgen/X/NK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A07:Lcom/facebook/ads/redexgen/X/NK;

    .line 51345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A07:Lcom/facebook/ads/redexgen/X/NK;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SA;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51346
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A08()V

    .line 51347
    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .locals 1

    .line 51348
    sget-object v0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A02(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 51349
    sput-object p0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/NK;
    .locals 3

    .line 51350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A05:Lcom/facebook/ads/redexgen/X/NH;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/NK;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SA;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

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

    .line 51351
    sget-object v0, Lcom/facebook/ads/redexgen/X/SA;->A0E:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .locals 5

    .line 51352
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 51353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A04:Lcom/facebook/ads/redexgen/X/NE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NE;->A05(Z)V

    .line 51354
    :cond_0
    return-void
.end method

.method private A08()V
    .locals 3

    .line 51355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A09:Z

    .line 51356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A0A:Z

    .line 51357
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 51358
    .local p0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51359
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 51360
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 51361
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 51362
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 51363
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 51364
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 51365
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 51366
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51367
    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Lcom/facebook/ads/redexgen/X/SA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A04:Lcom/facebook/ads/redexgen/X/NE;

    .line 51368
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SA;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x37t
        0x37t
        0x33t
        0x64t
        0x78t
        0x78t
        0x7ct
        0x7ft
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r5lFqG0C0bBGIxytTEblkmz8pOWiln6U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y5tMFhpuLobi6U3v3neZGAzEpbrZh2e0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "35iZKMkwZFt7WP5rciHAZ1WswbletKXm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1wdh7bxI31pnh6pFTaTypUqx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "X0GEkrMG66X1N8QG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HQ8AmQiqT9dTkfwWyhZ7u2ZNdQoS7Fbv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yjHJSxajRdLfdjSgilcNPSPFyTq4dELg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ut8cBtSHXrZx3QiSKTpc7NoA9ie10da9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SA;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public static A0B(IILandroid/content/Intent;)V
    .locals 1

    .line 51369
    sget-object v0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 51370
    return-void

    .line 51371
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 51372
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    .line 51373
    sget-object p0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    .line 51374
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 51375
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 51376
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    .line 51377
    :cond_1
    return-void

    .line 51378
    :cond_2
    sget-object p0, Lcom/facebook/ads/redexgen/X/SA;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static synthetic A0C()Z
    .locals 1

    .line 51379
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A0A:Z

    return v0
.end method

.method public static synthetic A0D()Z
    .locals 1

    .line 51380
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/SA;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0E()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 51381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A05:Lcom/facebook/ads/redexgen/X/NH;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A04:Lcom/facebook/ads/redexgen/X/NE;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0F()Landroid/webkit/WebViewClient;
    .locals 1

    .line 51382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A04()Lcom/facebook/ads/redexgen/X/NK;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(J)V
    .locals 5

    .line 51383
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 51384
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    .line 51385
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A07()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 51386
    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A0C:[Ljava/lang/String;

    const-string v1, "TnIn5PelVgDBsDwa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kaGwwHcDVWZGOuagxs1W4ZQa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0H(J)V
    .locals 5

    .line 51387
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 51388
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    .line 51389
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A07()V

    .line 51390
    return-void
.end method

.method public final A0I(J)V
    .locals 5

    .line 51391
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/SA;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 51392
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A02:J

    .line 51393
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 51394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A05:Lcom/facebook/ads/redexgen/X/NH;

    .line 51395
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NT;->A03(Landroid/webkit/WebView;)V

    .line 51396
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NN;->destroy()V

    .line 51397
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 51398
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 51399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 51400
    .local p0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 51401
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51402
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 51403
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 51404
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 51405
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 51406
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NN;->onDraw(Landroid/graphics/Canvas;)V

    .line 51407
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SA;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 51408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A03:J

    .line 51409
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A07()V

    .line 51410
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/NI;)V
    .locals 2

    .line 51411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A07:Lcom/facebook/ads/redexgen/X/NK;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NK;->A03(Ljava/lang/ref/WeakReference;)V

    .line 51412
    return-void
.end method
