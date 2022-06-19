.class public Lcom/criteo/publisher/CriteoBannerView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field private static final UNSET_DIMENSION_VALUE:I = -0x1


# instance fields
.field final bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

.field private final criteo:Lcom/criteo/publisher/Criteo;

.field private criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

.field private criteoBannerEventController:Lcom/criteo/publisher/k;

.field private final logger:Lcom/criteo/publisher/logging/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0, v0}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/criteo/publisher/a$c;->CriteoBannerView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    :try_start_0
    sget p2, Lcom/criteo/publisher/a$c;->CriteoBannerView_criteoAdUnitWidth:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 81
    sget v3, Lcom/criteo/publisher/a$c;->CriteoBannerView_criteoAdUnitHeight:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 85
    sget v4, Lcom/criteo/publisher/a$c;->CriteoBannerView_criteoAdUnitId:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq p2, v2, :cond_0

    if-eq v3, v2, :cond_0

    .line 88
    new-instance v1, Lcom/criteo/publisher/model/BannerAdUnit;

    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-direct {v2, p2, v3}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v1, v4, v2}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-ne p2, v2, :cond_1

    if-ne v3, v2, :cond_1

    .line 91
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    goto :goto_0

    .line 93
    :cond_1
    iput-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 94
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "CriteoBannerView was not properly inflated. For InHouse integration, no attribute must be set. For Standalone integration, all of: criteoAdUnitId, criteoAdUnitWidth and criteoAdUnitHeight must be set."

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    iget-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-static {p1}, Lcom/criteo/publisher/b;->a(Lcom/criteo/publisher/model/BannerAdUnit;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void

    :catchall_0
    move-exception p2

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    throw p2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;Lcom/criteo/publisher/Criteo;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    .line 128
    iput-object p2, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 129
    iput-object p3, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    .line 130
    invoke-static {p2}, Lcom/criteo/publisher/b;->a(Lcom/criteo/publisher/model/BannerAdUnit;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/Bid;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0, p1}, Lcom/criteo/publisher/b;->a(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 175
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->d:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    .line 176
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Lcom/criteo/publisher/k;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1086
    :cond_0
    sget-object v1, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/m0/a;

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/m0/a;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 1089
    sget-object p1, Lcom/criteo/publisher/o;->b:Lcom/criteo/publisher/o;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k;->a(Lcom/criteo/publisher/o;)V

    return-void

    .line 1091
    :cond_1
    sget-object v1, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k;->a(Lcom/criteo/publisher/o;)V

    .line 1092
    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0}, Lcom/criteo/publisher/b;->a(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 161
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getIntegrationRegistry()Lcom/criteo/publisher/i/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i/a;->c:Lcom/criteo/publisher/i/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i/c;->a(Lcom/criteo/publisher/i/a;)V

    .line 162
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Lcom/criteo/publisher/k;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/CriteoBannerView;->bannerAdUnit:Lcom/criteo/publisher/model/BannerAdUnit;

    .line 1071
    iget-object v2, v0, Lcom/criteo/publisher/k;->a:Lcom/criteo/publisher/Criteo;

    new-instance v3, Lcom/criteo/publisher/k$a;

    invoke-direct {v3, v0}, Lcom/criteo/publisher/k$a;-><init>(Lcom/criteo/publisher/k;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method private getCriteo()Lcom/criteo/publisher/Criteo;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteo:Lcom/criteo/publisher/Criteo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getIntegrationRegistry()Lcom/criteo/publisher/i/c;
    .locals 1

    .line 195
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->u()Lcom/criteo/publisher/i/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getCriteoBannerAdListener()Lcom/criteo/publisher/CriteoBannerAdListener;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

    return-object v0
.end method

.method getOrCreateController()Lcom/criteo/publisher/k;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Lcom/criteo/publisher/k;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoBannerView;->getCriteo()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/Criteo;->createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/k;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Lcom/criteo/publisher/k;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerEventController:Lcom/criteo/publisher/k;

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    .line 143
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/CriteoBannerView;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoBannerView;->doLoadAd(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 169
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 1

    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoBannerView;->doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/criteo/publisher/CriteoBannerView;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public loadAdWithDisplayData(Ljava/lang/String;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Lcom/criteo/publisher/k;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k;->a(Lcom/criteo/publisher/o;)V

    .line 156
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoBannerView;->getOrCreateController()Lcom/criteo/publisher/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/criteo/publisher/CriteoBannerView;->criteoBannerAdListener:Lcom/criteo/publisher/CriteoBannerAdListener;

    return-void
.end method
