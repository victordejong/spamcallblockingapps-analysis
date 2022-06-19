.class public Lnet/pubnative/lite/sdk/testing/TestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMockAssets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v2, "htmlbanner"

    .line 83
    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 84
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 85
    iget-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const/16 v3, 0x140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "w"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v2, v1, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v3, "html"

    const-string v4, "<a href=\"https://ads.com/click/112770_1386565997\"><img src=\"https://cdn.pubnative.net/widget/v3/assets/320x50.jpg\" width=\"320\" height=\"50\" border=\"0\" alt=\"Advertisement\" /></a>"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static createMockBeacons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createMockImpressionBeacons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createMockClickBeacons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static createMockClickBeacons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    new-instance v2, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v2}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v3, "click"

    .line 147
    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 149
    iget-object v1, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v3, "url"

    const-string v4, "https://got.pubnative.net/click/rtb?aid=1036637"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createMockImpressionBeacons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    new-instance v2, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v2}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v3, "impression"

    .line 134
    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 135
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 136
    iget-object v1, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v3, "url"

    const-string v4, "https://mock-dsp.pubnative.net/tracker/nurl?app_id=1036637&p=0.01"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static createMockMeta()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/AdData;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    new-instance v2, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v2}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v3, "points"

    .line 98
    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 99
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 100
    iget-object v3, v2, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "number"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v3, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v3}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v5, "revenuemodel"

    .line 103
    iput-object v5, v3, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 104
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v3, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 105
    iget-object v4, v3, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v5, "text"

    const-string v6, "cpm"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v4, Lnet/pubnative/lite/sdk/models/AdData;

    invoke-direct {v4}, Lnet/pubnative/lite/sdk/models/AdData;-><init>()V

    const-string v6, "contentinfo"

    .line 108
    iput-object v6, v4, Lnet/pubnative/lite/sdk/models/AdData;->type:Ljava/lang/String;

    .line 109
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v4, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    .line 110
    iget-object v1, v4, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v6, "link"

    const-string v7, "https://pubnative.net/content-info"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, v4, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v6, "icon"

    const-string v7, "https://cdn.pubnative.net/static/adserver/contentinfo.png"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, v4, Lnet/pubnative/lite/sdk/models/AdData;->data:Ljava/util/Map;

    const-string v6, "Learn about this ad"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    .line 71
    new-instance v0, Lnet/pubnative/lite/sdk/models/Ad;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/models/Ad;-><init>()V

    .line 72
    iput p0, v0, Lnet/pubnative/lite/sdk/models/Ad;->assetgroupid:I

    .line 73
    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createMockAssets()Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lnet/pubnative/lite/sdk/models/Ad;->assets:Ljava/util/List;

    .line 74
    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createMockMeta()Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lnet/pubnative/lite/sdk/models/Ad;->meta:Ljava/util/List;

    .line 75
    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createMockBeacons()Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lnet/pubnative/lite/sdk/models/Ad;->beacons:Ljava/util/List;

    return-object v0
.end method

.method public static createTestAdRequest()Lnet/pubnative/lite/sdk/models/AdRequest;
    .locals 3

    .line 28
    new-instance v0, Lnet/pubnative/lite/sdk/models/AdRequest;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/models/AdRequest;-><init>()V

    const-string v1, "dde3c298b47648459f8ada4a982fa92d"

    .line 29
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->apptoken:Ljava/lang/String;

    const-string v1, "android"

    .line 30
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->os:Ljava/lang/String;

    const-string v1, "8.1.0"

    .line 31
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->osver:Ljava/lang/String;

    const-string v1, "0"

    .line 32
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->dnt:Ljava/lang/String;

    const-string v2, "points,revenuemodel,contentinfo"

    .line 33
    iput-object v2, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->mf:Ljava/lang/String;

    const-string v2, "s"

    .line 34
    iput-object v2, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->al:Ljava/lang/String;

    const-string v2, "d98374d3-3b69-4a4b-a2c1-9dcb4c588849"

    .line 35
    iput-object v2, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->gid:Ljava/lang/String;

    const-string v2, "2"

    .line 36
    iput-object v2, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->zoneid:Ljava/lang/String;

    const-string v2, "net.pubnative.lite.demo"

    .line 37
    iput-object v2, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->bundleid:Ljava/lang/String;

    .line 38
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->testMode:Ljava/lang/String;

    const-string v1, "en"

    .line 39
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->locale:Ljava/lang/String;

    const-string v1, "e74483c4b5e6dc78e088d9fb0243ae66"

    .line 40
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->gidmd5:Ljava/lang/String;

    const-string v1, "96e380195959b8e7e05d6c6029154dc99e7fe954"

    .line 41
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdRequest;->gidsha1:Ljava/lang/String;

    return-object v0
.end method

.method public static createTestAdResponse()Lnet/pubnative/lite/sdk/models/AdResponse;
    .locals 3

    .line 46
    new-instance v0, Lnet/pubnative/lite/sdk/models/AdResponse;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/models/AdResponse;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    .line 49
    iget-object v1, v0, Lnet/pubnative/lite/sdk/models/AdResponse;->ads:Ljava/util/List;

    invoke-static {}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestBannerAd()Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ok"

    .line 50
    iput-object v1, v0, Lnet/pubnative/lite/sdk/models/AdResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public static createTestBannerAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/16 v0, 0xa

    .line 55
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public static createTestInterstitialAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/16 v0, 0x15

    .line 20
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public static createTestLeaderboardAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/16 v0, 0x18

    .line 67
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public static createTestMRectAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/16 v0, 0x8

    .line 59
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public static createTestVideoInterstitialAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/16 v0, 0xf

    .line 24
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method

.method public static createTestVideoMRectAd()Lnet/pubnative/lite/sdk/models/Ad;
    .locals 1

    const/4 v0, 0x4

    .line 63
    invoke-static {v0}, Lnet/pubnative/lite/sdk/testing/TestUtil;->createTestAd(I)Lnet/pubnative/lite/sdk/models/Ad;

    move-result-object v0

    return-object v0
.end method
