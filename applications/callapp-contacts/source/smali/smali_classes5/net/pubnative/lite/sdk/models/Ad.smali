.class public Lnet/pubnative/lite/sdk/models/Ad;
.super Lnet/pubnative/lite/sdk/utils/json/JsonModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/models/Ad$AdType;,
        Lnet/pubnative/lite/sdk/models/Ad$Beacon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/pubnative/lite/sdk/utils/json/JsonModel;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lnet/pubnative/lite/sdk/models/Ad;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_INFO_ICON_URL:Ljava/lang/String; = "https://cdn.pubnative.net/static/adserver/contentinfo.png"

.field private static final CONTENT_INFO_LINK_URL:Ljava/lang/String; = "https://pubnative.net/content-info"

.field private static final CONTENT_INFO_TEXT:Ljava/lang/String; = "Learn about this ad"

.field private static final DATA_CONTENTINFO_ICON_KEY:Ljava/lang/String; = "icon"

.field private static final DATA_CONTENTINFO_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DATA_POINTS_NUMBER_KEY:Ljava/lang/String; = "number"

.field private static final DATA_TEXT_KEY:Ljava/lang/String; = "text"

.field private static final MIN_POINTS:I = 0xa

.field private static final PN_IMPRESSION_QUERY_PARAM:Ljava/lang/String; = "t"

.field private static final PN_IMPRESSION_URL:Ljava/lang/String; = "got.pubnative.net"

.field private static final TAG:Ljava/lang/String; = "Ad"


# instance fields
.field private adSourceName:Ljava/lang/String;

.field public assetgroupid:I
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public beacons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field public meta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/utils/json/BindField;
    .end annotation
.end field

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lnet/pubnative/lite/sdk/models/Ad$AdType;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 100
    iput p1, p0, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/Ad;->assets:Ljava/util/List;

    .line 104
    sget-object p1, Lnet/pubnative/lite/sdk/models/Ad$AdType;->VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    if-ne p3, p1, :cond_0

    .line 106
    new-instance p1, Lnet/pubnative/lite/sdk/models/AdData;

    const-string p3, "vast2"

    invoke-direct {p1, p3, p3, p2}, Lnet/pubnative/lite/sdk/models/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Lnet/pubnative/lite/sdk/models/AdData;

    const-string p3, "html"

    const-string v0, "htmlbanner"

    invoke-direct {p1, p3, v0, p2}, Lnet/pubnative/lite/sdk/models/AdData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/models/Ad;->assets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/json/JsonModel;-><init>()V

    .line 96
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->fromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method private getDefaultContentInfo(Landroid/content/Context;Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;
    .locals 0

    .line 260
    new-instance p2, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-direct {p2, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;-><init>(Landroid/content/Context;)V

    const-string p1, "https://cdn.pubnative.net/static/adserver/contentinfo.png"

    .line 261
    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconUrl(Ljava/lang/String;)V

    const-string p1, "https://pubnative.net/content-info"

    .line 262
    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconClickUrl(Ljava/lang/String;)V

    const-string p1, "Learn about this ad"

    .line 263
    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setContextText(Ljava/lang/String;)V

    .line 264
    new-instance p1, Lnet/pubnative/lite/sdk/models/Ad$2;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/models/Ad$2;-><init>(Lnet/pubnative/lite/sdk/models/Ad;)V

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->compareTo(Lnet/pubnative/lite/sdk/models/Ad;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/pubnative/lite/sdk/models/Ad;)I
    .locals 2

    .line 363
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/Ad;->getECPM()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    sub-int/2addr p1, v1

    return p1
.end method

.method protected find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/lite/sdk/models/AdData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;)",
            "Lnet/pubnative/lite/sdk/models/AdData;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/models/AdData;

    .line 137
    iget-object v1, v0, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected findAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/models/AdData;

    .line 151
    iget-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAdSourceName()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/Ad;->adSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;
    .locals 1

    .line 119
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/Ad;->assets:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/models/Ad;->find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    return-object p1
.end method

.method public getAssetHeight(Ljava/lang/String;)I
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdData;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getAssetHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdData;->getHtml()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAssetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAssetWidth(Ljava/lang/String;)I
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/AdData;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getBeacons(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/Ad;->beacons:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/models/Ad;->findAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContentInfo(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    const-string v0, "contentinfo"

    .line 215
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - contentInfo data not found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, p1, v1}, Lnet/pubnative/lite/sdk/models/Ad;->getDefaultContentInfo(Landroid/content/Context;Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "icon"

    .line 219
    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    sget-object p1, Lnet/pubnative/lite/sdk/models/Ad;->TAG:Ljava/lang/String;

    const-string v0, "getContentInfo - contentInfo icon not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "link"

    .line 221
    invoke-virtual {v0, v3}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    sget-object p1, Lnet/pubnative/lite/sdk/models/Ad;->TAG:Ljava/lang/String;

    const-string v0, "getContentInfo - contentInfo link not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    sget-object p1, Lnet/pubnative/lite/sdk/models/Ad;->TAG:Ljava/lang/String;

    const-string v0, "getContentInfo - contentInfo text not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_3
    new-instance v1, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-direct {v1, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconUrl(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v3}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconClickUrl(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdData;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setContextText(Ljava/lang/String;)V

    .line 230
    new-instance p1, Lnet/pubnative/lite/sdk/models/Ad$1;

    invoke-direct {p1, p0}, Lnet/pubnative/lite/sdk/models/Ad$1;-><init>(Lnet/pubnative/lite/sdk/models/Ad;)V

    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v1
.end method

.method public getContentInfoClickUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "contentinfo"

    .line 289
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v0

    const-string v1, "link"

    .line 290
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInfoContainer(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 3

    .line 241
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/models/Ad;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 248
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    .line 249
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 251
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentInfoIconUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "contentinfo"

    .line 279
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v0

    const-string v1, "icon"

    .line 280
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 3

    const-string v0, "creativeid"

    .line 306
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "text"

    .line 312
    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getECPM()Ljava/lang/Integer;
    .locals 3

    const-string v0, "points"

    .line 294
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "number"

    .line 300
    invoke-virtual {v0, v2}, Lnet/pubnative/lite/sdk/models/AdData;->getIntField(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 7

    const-string v0, "impression"

    .line 318
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    const/4 v2, 0x0

    .line 325
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/models/AdData;

    .line 328
    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 329
    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/models/AdData;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "got.pubnative.net"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "t"

    .line 331
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    move-object v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getMeta(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/Ad;->meta:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/models/Ad;->find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object p1

    return-object p1
.end method

.method public getVast()Ljava/lang/String;
    .locals 2

    const-string v0, "vast2"

    .line 206
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/models/Ad;->getAsset(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/models/AdData;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/Ad;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSourceName(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/Ad;->adSourceName:Ljava/lang/String;

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/Ad;->zoneId:Ljava/lang/String;

    return-void
.end method
