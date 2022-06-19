.class public Lcom/pubmatic/sdk/openwrap/core/POBVideo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;,
        Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static final g:[Ljava/lang/String;

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private a:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

.field private b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field private c:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

.field private d:Lcom/pubmatic/sdk/common/POBAdSize;

.field private e:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->f:[I

    invoke-static {}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType;->getStringValues()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->g:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->h:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->i:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;Lcom/pubmatic/sdk/common/POBAdSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->LINEAR:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->a:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->UNKNOWN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    iput-object p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->c:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->a:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBSDKConfig;->getVideoMeasurementProvider()Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->OMSDK:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRTBJson()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v1

    const-string v2, "w"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v1

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->e:Lorg/json/JSONArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBBanner;

    new-array v4, v3, [Lcom/pubmatic/sdk/common/POBAdSize;

    iget-object v5, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->d:Lcom/pubmatic/sdk/common/POBAdSize;

    aput-object v5, v4, v2

    invoke-direct {v1, v4}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;-><init>([Lcom/pubmatic/sdk/common/POBAdSize;)V

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v1, v4}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    new-instance v4, Lorg/json/JSONArray;

    new-array v5, v3, [Lorg/json/JSONObject;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v6}, Lcom/pubmatic/sdk/openwrap/core/POBBanner;->getRTBJson(Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->e:Lorg/json/JSONArray;

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->e:Lorg/json/JSONArray;

    const-string v4, "companionad"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->getValue()I

    move-result v1

    const-string v4, "pos"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->f:[I

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v4, "protocols"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->g:[Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v4, "mimes"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->a:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Linearity;->getValue()I

    move-result v1

    const-string v4, "linearity"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "boxingallowed"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->h:[I

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v4, "delivery"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    sget-object v4, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->i:[I

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string v4, "companiontype"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->c:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->getValue()I

    move-result v1

    const-string v4, "placement"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "playbackend"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "startdelay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "api"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public setCompanionAds(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public setPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo;->b:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-void
.end method
