.class public Lcom/bytedance/sdk/openadsdk/core/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/o;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/v;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 387
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "\u5fc5\u987b\u8bbe\u7f6e\u56fe\u7247\u7d20\u6750\u5c3a\u5bf8"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V
    .locals 1

    .line 419
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->c:Z

    if-nez v0, :cond_1

    const-string p1, "TTAdNativeImpl"

    const-string v0, "please exec TTAdSdk.init before load ad"

    .line 420
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x2710

    const-string v0, "Please exec TTAdSdk.init before load ad"

    .line 422
    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/a/b;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->b()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/a/b;)Z
    .locals 2

    .line 409
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    .line 411
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/a/b;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/a/b;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/a/b;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/v;)Lcom/bytedance/sdk/openadsdk/core/o;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/v;->a:Lcom/bytedance/sdk/openadsdk/core/o;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 392
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 393
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "\u5fc5\u987b\u8bbe\u7f6e\u8bf7\u6c42\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c\u76ee\u524d\u652f\u6301TYPE_BANNER\u548cTYPE_INTERACTION_AD"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 397
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 398
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "\u8bf7\u6c42\u975e\u539f\u751f\u5e7f\u544a\u7684\u7c7b\u578b\uff0c\u8bf7\u52ff\u8c03\u7528setNativeAdType()\u65b9\u6cd5"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/v;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method


# virtual methods
.method public loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .locals 2

    .line 146
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    .line 147
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$8;

    const-string v1, "loadBannerAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 166
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 350
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 351
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$4;

    const-string v1, "loadBannerExpressAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 362
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .locals 2

    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/b;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    .line 76
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$6;

    const-string v1, "loadDrawFeedAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 95
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 333
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 334
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$3;

    const-string v1, "loadExpressDrawFeedAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 343
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 2

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/c;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/c;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 49
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$1;

    const-string v1, "loadFeedAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/c;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 68
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .locals 2

    .line 289
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/d;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 290
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$13;

    const-string v1, "loadFullScreenVideoAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/d;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 308
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 2

    .line 173
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 174
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$9;

    const-string v1, "loadInteractionAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/e;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 195
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 370
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 371
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$5;

    const-string v1, "loadInteractionExpressAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 381
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .locals 2

    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/f;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/f;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 104
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$7;

    const-string v1, "loadNativeAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 140
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 2

    .line 315
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/g;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 316
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$2;

    const-string v1, "loadNativeExpressAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/g;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 325
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .locals 2

    .line 264
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/h;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/h;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    .line 265
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$12;

    const-string v1, "loadRewardVideoAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/h;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 283
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .locals 2

    .line 236
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/a/i;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V

    .line 237
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$11;

    const-string v1, "loadSplashAd"

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/i;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 256
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .locals 7

    .line 203
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/a/i;

    invoke-direct {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/a/i;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V

    .line 204
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/v$10;

    const-string v2, "loadSplashAd"

    move-object v0, p2

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/v$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/v;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/a/i;Lcom/bytedance/sdk/openadsdk/AdSlot;I)V

    .line 228
    invoke-direct {p0, p2, v6}, Lcom/bytedance/sdk/openadsdk/core/v;->a(Lcom/bytedance/sdk/openadsdk/l/g;Lcom/bytedance/sdk/openadsdk/a/b;)V

    return-void
.end method
