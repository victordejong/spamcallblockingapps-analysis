.class public Lcom/mopub/mobileads/FullscreenAdController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
.implements Lcom/mopub/mraid/MraidController$UseCustomCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/FullscreenAdController$a;,
        Lcom/mopub/mobileads/FullscreenAdController$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/mopub/mobileads/BaseVideoViewController;

.field b:Lcom/mopub/mobileads/FullscreenAdController$b;

.field c:Z

.field private final e:Landroid/app/Activity;

.field private final f:Lcom/mopub/mobileads/MoPubWebViewController;

.field private final g:Lcom/mopub/mobileads/AdData;

.field private h:Lcom/mopub/mraid/WebViewDebugListener;

.field private i:Lcom/mopub/common/CloseableLayout;

.field private j:Lcom/mopub/mobileads/RadialCountdownWidget;

.field private k:Lcom/mopub/mobileads/FullscreenAdController$a;

.field private l:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

.field private o:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    sget-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/FullscreenAdController;->d:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Lcom/mopub/mobileads/AdData;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 137
    iput-object v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    .line 138
    iput-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v2

    const-string v3, "html"

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v4

    iput-object v4, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v1, v4}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object v4

    iput-object v4, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    goto :goto_0

    .line 148
    :cond_1
    new-instance v4, Lcom/mopub/mraid/MraidController;

    .line 149
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 151
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v8

    invoke-direct {v4, v1, v5, v6, v8}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V

    iput-object v4, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    .line 154
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 156
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity."

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 161
    :cond_2
    iget-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    instance-of v9, v5, Lcom/mopub/mraid/MraidController;

    if-eqz v9, :cond_3

    .line 162
    check-cast v5, Lcom/mopub/mraid/MraidController;

    invoke-virtual {v5, v7}, Lcom/mopub/mraid/MraidController;->setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V

    .line 164
    :cond_3
    iget-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v9, v7, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mraid/WebViewDebugListener;

    invoke-virtual {v5, v9}, Lcom/mopub/mobileads/MoPubWebViewController;->setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V

    .line 165
    iget-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    new-instance v9, Lcom/mopub/mobileads/FullscreenAdController$1;

    invoke-direct {v9, v7, v1, v0}, Lcom/mopub/mobileads/FullscreenAdController$1;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    invoke-virtual {v5, v9}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 214
    new-instance v5, Lcom/mopub/common/CloseableLayout;

    invoke-direct {v5, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "vast"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1332
    new-instance v8, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 217
    iput-object v8, v7, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 218
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 219
    iget-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->a()V

    return-void

    .line 221
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "json"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, -0x1

    if-eqz v5, :cond_6

    .line 222
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 227
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "image"

    .line 228
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "w"

    .line 229
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v3, "h"

    .line 230
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "clk"

    .line 231
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->p:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    .line 239
    invoke-static/range {p1 .. p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v10

    new-instance v12, Lcom/mopub/mobileads/FullscreenAdController$2;

    invoke-direct {v12, v7, v11}, Lcom/mopub/mobileads/FullscreenAdController$2;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Ljava/lang/String;)V

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v10 .. v15}, Lcom/mopub/network/MaxWidthImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 260
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 262
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$6zRmpn-BoRQ4ctUOz9aA_WKyKYY;

    invoke-direct {v3, v7}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$6zRmpn-BoRQ4ctUOz9aA_WKyKYY;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 269
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v8}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 271
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v8}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 273
    :cond_5
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 233
    :catch_0
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Unable to load image into fullscreen container."

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    const-string v0, "com.mopub.action.fullscreen.fail"

    invoke-static {v1, v2, v3, v0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 235
    iget-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 275
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v2

    if-nez v2, :cond_8

    .line 276
    :cond_7
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    .line 277
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v5

    sget-object v10, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$FQsvASius-AfaeUDrOx_oD5csgM;->INSTANCE:Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$FQsvASius-AfaeUDrOx_oD5csgM;

    .line 276
    invoke-virtual {v2, v4, v5, v10}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    .line 281
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 282
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    goto :goto_1

    .line 284
    :cond_9
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 287
    :goto_1
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$acBJECPDHDtYJQBD13FMkq3Umrs;

    invoke-direct {v3, v7}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$acBJECPDHDtYJQBD13FMkq3Umrs;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 291
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 294
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v8}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 295
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v8}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 297
    :cond_a
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 298
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 301
    :goto_2
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 303
    :cond_b
    sget-object v2, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    .line 304
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 305
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v2

    .line 307
    :cond_c
    invoke-static {v1, v2}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 310
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 311
    invoke-direct/range {p0 .. p1}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/content/Context;)V

    .line 312
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 313
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_e

    .line 314
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    :cond_e
    const/16 v0, 0x1388

    :goto_3
    iput v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    goto :goto_5

    .line 317
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_10

    .line 318
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_4

    :cond_10
    const/16 v0, 0x7530

    :goto_4
    iput v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    .line 321
    :goto_5
    iget-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 322
    iput-boolean v6, v7, Lcom/mopub/mobileads/FullscreenAdController;->s:Z

    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    new-instance v1, Lcom/mopub/mobileads/FullscreenAdController$a;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$a;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$1;)V

    iput-object v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$a;

    return-void

    .line 326
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/FullscreenAdController;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/FullscreenAdController;)Lcom/mopub/mobileads/FullscreenAdController$b;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 656
    new-instance v0, Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    const/4 v1, 0x4

    .line 657
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    .line 660
    invoke-virtual {v0}, Lcom/mopub/mobileads/RadialCountdownWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 661
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 662
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 664
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 667
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 669
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x35

    .line 670
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 671
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {p1, v0, v2}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 630
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method private static synthetic a(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/FullscreenAdController;I)V
    .locals 1

    .line 1636
    iput p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->q:I

    .line 1637
    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v0, :cond_0

    .line 1638
    iget p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mopub/mobileads/FullscreenAdController;)Lcom/mopub/mobileads/MoPubWebViewController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$a;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0xfa

    .line 645
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/FullscreenAdController$a;->startRepeating(J)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 533
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method static synthetic c(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$a;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/mopub/mobileads/FullscreenAdController$a;->stop()V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 520
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 371
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    return-void
.end method

.method static synthetic d(Lcom/mopub/mobileads/FullscreenAdController;)Z
    .locals 1

    .line 2609
    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->q:I

    iget p0, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic e()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic lambda$6zRmpn-BoRQ4ctUOz9aA_WKyKYY(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->f()V

    return-void
.end method

.method public static synthetic lambda$FQsvASius-AfaeUDrOx_oD5csgM(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0

    invoke-static {p0}, Lcom/mopub/mobileads/FullscreenAdController;->a(Lcom/mopub/mobileads/BaseWebView;)V

    return-void
.end method

.method public static synthetic lambda$G6vAm9mq5lSPZtHtl2Mrdot0FqM(Lcom/mopub/mobileads/FullscreenAdController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FullscreenAdController;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$HigIKw6Xsz4dKtrukTDYogFOKcw(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->d()V

    return-void
.end method

.method public static synthetic lambda$acBJECPDHDtYJQBD13FMkq3Umrs(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->e()V

    return-void
.end method

.method public static synthetic lambda$p5slvYNoBljC8l3VB2VFvf2jVKY(Lcom/mopub/mobileads/FullscreenAdController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FullscreenAdController;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$sMUY_uaVvx4Ztd5shy81aO9bmQM(Lcom/mopub/mobileads/FullscreenAdController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FullscreenAdController;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zPuMegkbEBttclOtl-S4YZnI9GY(Lcom/mopub/mobileads/FullscreenAdController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Z

    .line 616
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 617
    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/RadialCountdownWidget;->setVisibility(I)V

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    if-eqz v1, :cond_1

    .line 620
    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 623
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->t:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    const-string v4, "com.mopub.action.rewardedad.complete"

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 625
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->t:Z

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 629
    new-instance v1, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$zPuMegkbEBttclOtl-S4YZnI9GY;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$zPuMegkbEBttclOtl-S4YZnI9GY;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method final a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V
    .locals 5

    .line 675
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    const-string v1, "com.mopub.action.fullscreen.click"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 677
    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 680
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->u:I

    .line 682
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 679
    invoke-static {v0, v2, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v1, 0x1

    .line 690
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object p2

    .line 686
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 694
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 695
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickTrackers()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->u:I

    .line 697
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 694
    invoke-static {p2, v2, v0, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 702
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 704
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 705
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 706
    new-instance p1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    .line 707
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/FullscreenAdController;->d:Ljava/util/EnumSet;

    .line 708
    invoke-virtual {p1, p2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_4

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 711
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 712
    :cond_3
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->destroy()V

    .line 588
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->e()V

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    .line 593
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 594
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;->cancel(Z)Z

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v1

    const-string v3, "com.mopub.action.fullscreen.dismiss"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 581
    iget-object p3, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz p3, :cond_0

    .line 582
    invoke-virtual {p3, p1, p2}, Lcom/mopub/mobileads/BaseVideoViewController;->a(II)V

    :cond_0
    return-void
.end method

.method public onCompanionAdsReady(Ljava/util/Set;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;I)V"
        }
    .end annotation

    .line 462
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 465
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CloseableLayout is null. This should not happen."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 469
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 470
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    .line 471
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v4, v4

    .line 472
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v0

    float-to-int v0, v4

    .line 474
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    .line 479
    invoke-virtual {v6, v3, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->calculateScore(II)D

    move-result-wide v7

    .line 480
    invoke-virtual {v5, v3, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->calculateScore(II)D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_1

    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 484
    :cond_3
    iput-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v5, :cond_4

    return-void

    .line 488
    :cond_4
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getHtmlResourceValue()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 493
    :cond_5
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/VastResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 494
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/VastResource$CreativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 495
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    .line 496
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-static {p2}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/FullscreenAdController$3;

    invoke-direct {v2, p0, p1}, Lcom/mopub/mobileads/FullscreenAdController$3;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Lcom/mopub/mobileads/VastResource;)V

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 516
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 496
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/network/MaxWidthImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 517
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    new-instance p2, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$p5slvYNoBljC8l3VB2VFvf2jVKY;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$p5slvYNoBljC8l3VB2VFvf2jVKY;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 518
    :cond_6
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/VastResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 519
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    .line 520
    new-instance v3, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$G6vAm9mq5lSPZtHtl2Mrdot0FqM;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$G6vAm9mq5lSPZtHtl2Mrdot0FqM;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance v0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v4, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-direct {v0, v3, v4, p2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    new-array p2, v2, [Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 526
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 527
    new-instance p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-direct {p1, p2, v1, v2}, Lcom/mopub/mobileads/VideoCtaButtonWidget;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 528
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 530
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a(Ljava/lang/String;)V

    .line 532
    :cond_7
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->b()V

    .line 533
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    new-instance p2, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$sMUY_uaVvx4Ztd5shy81aO9bmQM;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$sMUY_uaVvx4Ztd5shy81aO9bmQM;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 536
    :cond_8
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {p1, v0, v4, v4}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    :cond_9
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-static {v0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 455
    :catch_0
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoFinish(I)V
    .locals 7

    .line 349
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->v:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->v:Z

    .line 360
    iput p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->u:I

    .line 362
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseVideoViewController;->c()V

    .line 364
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseVideoViewController;->e()V

    .line 365
    iput-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1}, Lcom/mopub/common/CloseableLayout;->removeAllViews()V

    .line 369
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$HigIKw6Xsz4dKtrukTDYogFOKcw;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/-$$Lambda$FullscreenAdController$HigIKw6Xsz4dKtrukTDYogFOKcw;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v1, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 373
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v1

    .line 374
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/VastResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    sget-object v3, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 375
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mopub/mobileads/VastResource$CreativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    .line 376
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mopub/mobileads/VastResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 377
    :cond_4
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 378
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    .line 379
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Companion image null. Skipping."

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 381
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 384
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 388
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 392
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    :cond_6
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    if-eqz v3, :cond_8

    .line 397
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 399
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 401
    :cond_7
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->n:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 403
    :cond_8
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v3, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 405
    :cond_9
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    .line 406
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object v3

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 411
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v4}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 412
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v4}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 414
    :cond_a
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 417
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 418
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_b

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    .line 419
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_1

    :cond_b
    const/16 v1, 0x7530

    :goto_1
    iput v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    if-ge p1, v1, :cond_d

    .line 421
    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 423
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v3

    .line 422
    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/VastResource$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    .line 427
    :cond_c
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/content/Context;)V

    .line 428
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 429
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:I

    invoke-virtual {v1, v3, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    .line 430
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->s:Z

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 432
    new-instance v1, Lcom/mopub/mobileads/FullscreenAdController$a;

    invoke-direct {v1, p0, v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$a;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$1;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/FullscreenAdController$a;

    .line 433
    invoke-static {v1, p1}, Lcom/mopub/mobileads/FullscreenAdController$a;->a(Lcom/mopub/mobileads/FullscreenAdController$a;I)I

    .line 434
    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->b()V

    goto :goto_3

    .line 424
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->a()V

    goto :goto_3

    .line 437
    :cond_e
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->a()V

    .line 441
    :goto_3
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    return-void

    .line 350
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 351
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()V

    .line 564
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->pause(Z)V

    .line 567
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->d()V

    .line 574
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->HTML:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$b;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$b;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/FullscreenAdController$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->resume()V

    .line 577
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/FullscreenAdController;->b()V

    return-void
.end method

.method public useCustomCloseChanged(Z)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 549
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    return-void

    .line 553
    :cond_1
    iget-boolean p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Z

    if-eqz p1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_2
    return-void
.end method
