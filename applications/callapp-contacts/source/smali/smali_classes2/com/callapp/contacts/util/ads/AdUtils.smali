.class public Lcom/callapp/contacts/util/ads/AdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;,
        Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;,
        Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;,
        Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;,
        Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/util/AttributeSet;

.field private static d:Landroid/util/AttributeSet;

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils;->e:Ljava/util/HashMap;

    .line 110
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$1;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/AdUtils$1;-><init>()V

    invoke-static {v0}, Lcom/mopub/common/MoPub;->registerAdAnalyticsListener(Lcom/mopub/common/MoPub$AnalyticsEventsListener;)V

    .line 166
    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->STAR_RATING:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v4, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils;->a:Ljava/util/EnumSet;

    .line 173
    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->STAR_RATING:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils;->f:Ljava/util/EnumSet;

    .line 179
    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->STAR_RATING:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils;->b:Ljava/util/EnumSet;

    .line 187
    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/ads/AdUtils;->g:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)D"
        }
    .end annotation

    const-string v0, "callapp_floor_price"

    .line 649
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 650
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Landroid/util/AttributeSet;
    .locals 2

    .line 398
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->a:[I

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f150005

    goto :goto_0

    :cond_0
    const p0, 0x7f150004

    .line 407
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 409
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 410
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 412
    const-class v1, Lcom/callapp/contacts/util/ads/AdUtils;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 415
    :goto_1
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 6

    .line 241
    new-instance v0, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    const v1, 0x7f0a061b

    .line 242
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0620

    .line 243
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061d

    .line 244
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0617

    .line 245
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->isTitlePrimaryColor()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0622

    .line 249
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->isIncludeMainImage()Z

    move-result v1

    const v2, 0x7f0a061f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 253
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils;->b:Ljava/util/EnumSet;

    invoke-static {v1, v3, v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Double;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object v1

    const v3, 0x7f0a061c

    .line 254
    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 255
    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->isIncludeTextDescription()Z

    move-result v1

    const v4, 0x7f0a061e

    const-string v5, "key_star_rating"

    if-eqz v1, :cond_2

    .line 257
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils;->a:Ljava/util/EnumSet;

    invoke-static {v1, v3, v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Double;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 259
    invoke-virtual {v0, v5, v4}, Lcom/mopub/nativeads/ViewBinder$Builder;->addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/ViewBinder$Builder;

    goto :goto_0

    .line 261
    :cond_2
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils;->f:Ljava/util/EnumSet;

    invoke-static {v1, v3, v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Double;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v5, v4}, Lcom/mopub/nativeads/ViewBinder$Builder;->addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 265
    :goto_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v0

    .line 267
    new-instance v2, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;

    invoke-direct {v2, v0, p1}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 268
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v3

    .line 270
    new-instance v4, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    invoke-direct {v4, p0, p2, v3}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 271
    new-instance p0, Lcom/mopub/nativeads/CriteoAdRenderer;

    invoke-direct {p0, v0, p1}, Lcom/mopub/nativeads/CriteoAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 272
    new-instance p2, Lcom/mopub/nativeads/FacebookAdRenderer;

    invoke-direct {p2, v0, p1}, Lcom/mopub/nativeads/FacebookAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 273
    new-instance v3, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;

    invoke-direct {v3, v0, p1}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 274
    new-instance v5, Lcom/mopub/nativeads/PangleAdRenderer;

    invoke-direct {v5, v0, p1}, Lcom/mopub/nativeads/PangleAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 275
    invoke-virtual {v4, p0}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 276
    invoke-virtual {v4, p2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 277
    invoke-virtual {v4, v3}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 278
    invoke-virtual {v4, v2}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 279
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 280
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 281
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0, v1}, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_1

    .line 283
    :cond_3
    const-class p0, Lcom/callapp/contacts/util/ads/AdUtils;

    const-string p1, "Not showing Ad because premium user"

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_1
    return-object v4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 8

    .line 517
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 518
    :goto_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$5;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/AdUtils$5;-><init>()V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/ads/JSONExperiment;

    if-eqz p1, :cond_2

    .line 522
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    .line 524
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p1

    .line 525
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/ads/JSONAdSettings;

    .line 527
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getGroup()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 529
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;->getAdLayoutResourceId(I)I

    move-result v4

    .line 531
    new-instance p1, Lcom/callapp/contacts/util/ads/AdSettings;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    .line 532
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdSettings;->getLayout()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->isIconImageCircleByType(I)Z

    move-result v0

    .line 2066
    iput-boolean v0, p1, Lcom/callapp/contacts/util/ads/AdSettings;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 539
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 543
    :cond_2
    new-instance p1, Lcom/callapp/contacts/util/ads/AdSettings;

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;->getAdLayoutResourceId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdSettings;-><init>(Ljava/lang/String;IZIZ)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/JSONAdPreferences;
    .locals 4

    .line 548
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 549
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    :try_start_0
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$6;

    invoke-direct {v0}, Lcom/callapp/contacts/util/ads/AdUtils$6;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/ads/JSONExperiment;

    if-eqz p0, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    .line 555
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/JSONExperiment;->getExperiments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    .line 556
    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getGroup()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_1

    return-object v2

    :catch_0
    move-exception p0

    .line 562
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;
    .locals 3

    .line 420
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 421
    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    .line 423
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/AdUtils$DummyActivity;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 426
    :goto_0
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    .line 1382
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$7;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1389
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils;->c:Landroid/util/AttributeSet;

    if-nez v1, :cond_1

    .line 1390
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Landroid/util/AttributeSet;

    move-result-object p1

    sput-object p1, Lcom/callapp/contacts/util/ads/AdUtils;->c:Landroid/util/AttributeSet;

    .line 1392
    :cond_1
    sget-object p1, Lcom/callapp/contacts/util/ads/AdUtils;->c:Landroid/util/AttributeSet;

    goto :goto_1

    .line 1384
    :cond_2
    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils;->d:Landroid/util/AttributeSet;

    if-nez v1, :cond_3

    .line 1385
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Landroid/util/AttributeSet;

    move-result-object p1

    sput-object p1, Lcom/callapp/contacts/util/ads/AdUtils;->d:Landroid/util/AttributeSet;

    .line 1387
    :cond_3
    sget-object p1, Lcom/callapp/contacts/util/ads/AdUtils;->d:Landroid/util/AttributeSet;

    .line 426
    :goto_1
    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public static a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;Z)Lcom/mopub/nativeads/MoPubNative;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            "Lcom/mopub/nativeads/ViewBinder;",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Double;",
            "Z)",
            "Lcom/mopub/nativeads/MoPubNative;"
        }
    .end annotation

    .line 480
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/ads/AdUtils$4;

    invoke-direct {v3, p3, p7}, Lcom/callapp/contacts/util/ads/AdUtils$4;-><init>(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 492
    invoke-static {p5}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 493
    invoke-virtual {v0, p5}, Lcom/mopub/nativeads/MoPubNative;->setLocalExtras(Ljava/util/Map;)V

    .line 496
    :cond_0
    new-instance p3, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;

    invoke-direct {p3, p1, p0}, Lcom/mopub/nativeads/CallAppMoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 497
    new-instance p5, Lcom/mopub/nativeads/CriteoAdRenderer;

    invoke-direct {p5, p1, p0}, Lcom/mopub/nativeads/CriteoAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 498
    new-instance p7, Lcom/mopub/nativeads/FacebookAdRenderer;

    invoke-direct {p7, p1, p0}, Lcom/mopub/nativeads/FacebookAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 499
    new-instance v1, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;

    invoke-direct {v1, p1, p0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 500
    new-instance v2, Lcom/mopub/nativeads/PangleAdRenderer;

    invoke-direct {v2, p1, p0}, Lcom/mopub/nativeads/PangleAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 501
    invoke-virtual {v0, p5}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 502
    invoke-virtual {v0, p7}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 503
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 504
    invoke-virtual {v0, p3}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 505
    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 507
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0, p6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Double;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    return-object v0
.end method

.method public static a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Z)Lcom/mopub/nativeads/MoPubNative;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            "Lcom/mopub/nativeads/ViewBinder;",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/mopub/nativeads/MoPubNative;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .line 476
    invoke-static/range {v0 .. v7}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;Lcom/mopub/nativeads/ViewBinder;Ljava/util/EnumSet;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;Z)Lcom/mopub/nativeads/MoPubNative;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/EnumSet;Ljava/lang/Boolean;Ljava/lang/Double;)Lcom/mopub/nativeads/RequestParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Double;",
            ")",
            "Lcom/mopub/nativeads/RequestParameters;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v0

    .line 312
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/RequestParameters$Builder;->keywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1, p0}, Lcom/mopub/nativeads/RequestParameters$Builder;->desiredAssets(Ljava/util/EnumSet;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    .line 305
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.00"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 306
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "analytics_tag"

    .line 641
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 644
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result p0

    const v0, 0x7f0d0084

    if-eq p0, v0, :cond_2

    const v0, 0x7f0d0085

    if-eq p0, v0, :cond_2

    const v0, 0x7f0d0086

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0087

    if-ne p0, v0, :cond_1

    .line 212
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils;->a:Ljava/util/EnumSet;

    return-object p0

    .line 214
    :cond_1
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils;->b:Ljava/util/EnumSet;

    return-object p0

    .line 210
    :cond_2
    :goto_0
    sget-object p0, Lcom/callapp/contacts/util/ads/AdUtils;->b:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/lang/Double;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/lang/Double;)V
    .locals 8

    .line 338
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/util/ads/AdUtils$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Double;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubView$MoPubAdSize;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 430
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;ZLjava/util/Map;Ljava/lang/Double;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubView$MoPubAdSize;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 434
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v9, Lcom/callapp/contacts/util/ads/AdUtils$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    move-object/from16 v6, p6

    move-object v7, p5

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/util/ads/AdUtils$3;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;Ljava/lang/String;ZLjava/lang/Double;Ljava/util/Map;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    invoke-virtual {v0, v9}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;)V
    .locals 3

    .line 594
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->d()V

    .line 596
    const-class v0, Lcom/callapp/contacts/util/ads/AdUtils;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting consent statue: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 597
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$7;->b:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->revokeConsent()V

    .line 604
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->grantConsent()V

    .line 600
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Z
    .locals 5

    .line 124
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cN:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;)Z
    .locals 5

    .line 2691
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CALL_LOG:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "daysNotToShowAdsInCallLogForNewUsers"

    goto :goto_0

    .line 2693
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->CONTACT_LIST:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "daysNotToShowAdsInContactListForNewUsers"

    goto :goto_0

    .line 2695
    :cond_1
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->SMS:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "daysNotToShowAdsInSMSForNewUsers"

    goto :goto_0

    .line 2697
    :cond_2
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->ANALYTICS_CARD:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "daysNotToShowAdsInAnalyticssmallCDForNewUsers"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 682
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    move-wide v3, v1

    .line 683
    :goto_1
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    cmp-long p0, v3, v1

    if-lez p0, :cond_5

    .line 684
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNotNull()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 685
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getDaysSinceInstall()J

    move-result-wide v1

    cmp-long p0, v1, v3

    if-gez p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 661
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 665
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 666
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 669
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 672
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 3

    .line 219
    new-instance v0, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    const v1, 0x7f0a061b

    .line 220
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0620

    .line 221
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061f

    .line 222
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061d

    .line 223
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0617

    .line 224
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const-string v1, "key_star_rating"

    const v2, 0x7f0a061e

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result p0

    const v1, 0x7f0a061c

    const v2, 0x7f0d0084

    if-ne p0, v2, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    goto :goto_0

    :cond_0
    const v2, 0x7f0d0085

    if-eq p0, v2, :cond_1

    const v2, 0x7f0d0086

    if-ne p0, v2, :cond_2

    .line 231
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    const p0, 0x7f0a0622

    .line 232
    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 235
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Boolean;Ljava/lang/Double;)Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AB_Group:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",is_refresh:1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",bid_price:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",billing_available:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .locals 3

    .line 570
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dd:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 575
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_1

    const/16 v0, 0x78

    if-lt v2, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static c()V
    .locals 2

    .line 581
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dd:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 583
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static d()V
    .locals 4

    .line 612
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    .line 614
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const-class v2, Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    .line 615
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const-class v2, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    .line 616
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const-class v2, Lcom/mopub/mobileads/PubNativeAdapterConfiguration;

    .line 617
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const-class v2, Lcom/mopub/mobileads/BidMachineAdapterConfiguration;

    .line 618
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const-class v2, Lcom/mopub/mobileads/PangleAdapterConfiguration;

    .line 619
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withAdditionalNetwork(Ljava/lang/String;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 620
    invoke-virtual {v0, v2}, Lcom/mopub/common/SdkConfiguration$Builder;->withLegitimateInterestAllowed(Z)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    :cond_1
    return-void
.end method

.method public static getSmallCardAdLayoutResourceId(I)I
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const p0, 0x7f0d0085

    return p0

    :cond_0
    const p0, 0x7f0d0086

    return p0

    :cond_1
    const p0, 0x7f0d0084

    return p0

    :cond_2
    const p0, 0x7f0d0087

    return p0
.end method

.method public static isIconImageCircleByType(I)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
