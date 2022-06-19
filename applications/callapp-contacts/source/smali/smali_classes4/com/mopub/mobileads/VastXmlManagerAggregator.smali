.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:D

.field private final d:Landroid/content/Context;

.field private final e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "video/mp4"

    const-string/jumbo v1, "video/3gpp"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$a;DILandroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    .line 110
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:D

    .line 111
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    .line 112
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/mopub/mobileads/i;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/i;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 296
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->c()Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/j;

    .line 3340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3342
    iget-object v4, v1, Lcom/mopub/mobileads/j;->a:Lorg/w3c/dom/Node;

    const-string v5, "MediaFiles"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "MediaFile"

    .line 3347
    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3348
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    .line 3349
    new-instance v6, Lcom/mopub/mobileads/l;

    invoke-direct {v6, v5}, Lcom/mopub/mobileads/l;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 305
    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 306
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 307
    invoke-static {v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/j;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 4276
    iget-object v1, v1, Lcom/mopub/mobileads/j;->a:Lorg/w3c/dom/Node;

    const-string v4, "VideoClicks"

    invoke-static {v1, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "ClickThrough"

    .line 4280
    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_1
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->d()Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addVastCompanionAdConfigs(Ljava/lang/Iterable;)V

    .line 319
    invoke-virtual {p1}, Lcom/mopub/mobileads/i;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 321
    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 322
    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 323
    iget-object p1, p1, Lcom/mopub/mobileads/i;->a:Lorg/w3c/dom/Node;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v0

    :cond_3
    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    const-string/jumbo v0, "vastXml cannot be null"

    .line 175
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorTrackers cannot be null"

    .line 176
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/mopub/mobileads/n;

    invoke-direct {v0}, Lcom/mopub/mobileads/n;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "xmlString cannot be null"

    .line 1064
    invoke-static {p1, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "<\\?.*\\?>"

    const-string v5, ""

    .line 1068
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<MPMoVideoXMLDocRoot>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 1075
    invoke-virtual {v4, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 1076
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 1077
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 1078
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, v0, Lcom/mopub/mobileads/n;->a:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {v0}, Lcom/mopub/mobileads/n;->a()Ljava/util/List;

    move-result-object p1

    .line 191
    iget-object v4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    .line 1487
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/n;->b()Lcom/mopub/mobileads/VastTracker;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1490
    invoke-virtual {v0}, Lcom/mopub/mobileads/n;->b()Lcom/mopub/mobileads/VastTracker;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    if-lez v6, :cond_0

    sget-object v6, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    .line 1489
    :goto_0
    invoke-static {v5, v6, v3, v3, v4}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    return-object v3

    .line 195
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/f;

    .line 2075
    iget-object v5, v4, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v6, "sequence"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-static {v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3045
    iget-object v5, v4, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v6, "InLine"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3048
    new-instance v6, Lcom/mopub/mobileads/i;

    invoke-direct {v6, v5}, Lcom/mopub/mobileads/i;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_2

    :cond_4
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_5

    .line 204
    invoke-direct {p0, v6, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/i;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 208
    invoke-static {v0, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/n;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v5

    .line 3060
    :cond_5
    iget-object v4, v4, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v5, "Wrapper"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3063
    new-instance v5, Lcom/mopub/mobileads/m;

    invoke-direct {v5, v4}, Lcom/mopub/mobileads/m;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_3

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    invoke-virtual {v5}, Lcom/mopub/mobileads/m;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-direct {p0, v5, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 225
    invoke-direct {p0, v6, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 239
    invoke-virtual {v5}, Lcom/mopub/mobileads/m;->a()Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-virtual {v4, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 241
    invoke-virtual {v5}, Lcom/mopub/mobileads/m;->c()Ljava/util/List;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mopub/mobileads/j;

    .line 243
    invoke-static {p2, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/j;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_4

    .line 245
    :cond_7
    invoke-static {v5, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 246
    invoke-static {v5, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 247
    iget-object p1, v5, Lcom/mopub/mobileads/m;->a:Lorg/w3c/dom/Node;

    invoke-static {p1, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 250
    invoke-virtual {v5}, Lcom/mopub/mobileads/m;->d()Ljava/util/List;

    move-result-object p1

    .line 253
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result p2

    if-nez p2, :cond_8

    .line 255
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 254
    invoke-virtual {v4, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addVastCompanionAdConfigs(Ljava/lang/Iterable;)V

    goto :goto_8

    .line 258
    :cond_8
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object p2

    .line 259
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/h;

    .line 3159
    iget-object v7, v6, Lcom/mopub/mobileads/h;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v7}, Lcom/mopub/mobileads/VastResourceXmlManager;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v6, Lcom/mopub/mobileads/h;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 3160
    invoke-virtual {v7}, Lcom/mopub/mobileads/VastResourceXmlManager;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v6, Lcom/mopub/mobileads/h;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 3161
    invoke-virtual {v7}, Lcom/mopub/mobileads/VastResourceXmlManager;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v7, 0x1

    :goto_7
    if-nez v7, :cond_a

    .line 263
    invoke-virtual {v6}, Lcom/mopub/mobileads/h;->a()Ljava/util/List;

    move-result-object v7

    .line 262
    invoke-virtual {v3, v7}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/Collection;)V

    .line 265
    invoke-virtual {v6}, Lcom/mopub/mobileads/h;->b()Ljava/util/List;

    move-result-object v6

    .line 264
    invoke-virtual {v3, v6}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/Collection;)V

    goto :goto_5

    .line 271
    :cond_d
    :goto_8
    invoke-static {v0, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lcom/mopub/mobileads/n;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v4

    :cond_e
    return-object v3

    :catch_0
    move-exception p1

    .line 182
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Failed to parse VAST XML"

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 183
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {p2, p1, v3, v3, v0}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-object v3
.end method

.method private varargs a([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 124
    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unable to generate VastVideoConfig."

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a(Lcom/mopub/mobileads/m;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/m;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Lcom/mopub/mobileads/m;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 397
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to follow VAST redirect"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 400
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {p2, p1, v0, v0, v1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "managers cannot be null"

    .line 503
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/4 v2, 0x0

    .line 509
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 510
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/l;

    .line 8078
    iget-object v4, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8088
    iget-object v5, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    invoke-static {v5}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 514
    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v5, :cond_1

    goto/16 :goto_8

    .line 9056
    :cond_1
    iget-object v6, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string/jumbo v7, "width"

    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 9067
    iget-object v7, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string v8, "height"

    invoke-static {v7, v8}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 9099
    iget-object v8, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string v9, "bitrate"

    invoke-static {v8, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 9106
    :cond_2
    iget-object v8, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string v9, "minBitrate"

    invoke-static {v8, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 9107
    iget-object v3, v3, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    const-string v9, "maxBitrate"

    invoke-static {v3, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 9111
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v3

    :goto_1
    if-eqz v6, :cond_0

    .line 522
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 526
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 527
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v9, v3

    int-to-double v6, v6

    div-double/2addr v9, v6

    .line 9742
    iget-wide v6, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c:D

    sub-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 9743
    iget v9, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->e:I

    sub-int v3, v9, v3

    div-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v9, v3

    add-double/2addr v6, v9

    const/4 v3, 0x0

    if-eqz v8, :cond_6

    .line 10716
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x2bc

    if-gt v9, v8, :cond_7

    const/16 v9, 0x5dc

    if-gt v8, v9, :cond_7

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_7
    rsub-int v9, v8, 0x2bc

    .line 10721
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x442f0000    # 700.0f

    div-float/2addr v9, v10

    float-to-double v9, v9

    rsub-int v8, v8, 0x5dc

    .line 10723
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const v11, 0x44bb8000    # 1500.0f

    div-float/2addr v8, v11

    float-to-double v11, v8

    .line 10725
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    :goto_4
    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    const/4 v10, -0x1

    .line 10758
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x63306f58

    if-eq v11, v12, :cond_a

    const v12, 0x4f62635d

    if-eq v11, v12, :cond_9

    goto :goto_5

    :cond_9
    const-string/jumbo v11, "video/mp4"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_a
    const-string/jumbo v3, "video/3gpp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v3, -0x1

    :goto_6
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_c

    move-wide v3, v10

    goto :goto_7

    :cond_c
    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    :goto_7
    add-double/2addr v6, v10

    add-double/2addr v6, v8

    div-double/2addr v10, v6

    mul-double v3, v3, v10

    cmpl-double v6, v3, v0

    if-lez v6, :cond_0

    move-wide v0, v3

    move-object v2, v5

    goto/16 :goto_0

    .line 515
    :cond_d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_e
    return-object v2
.end method

.method private static a(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 4

    .line 335
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/g;->e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p0

    .line 347
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 5079
    iget-object v1, v0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoPub"

    .line 348
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6048
    iget-object p0, v0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v0, "MoPubViewabilityTracker"

    .line 6049
    invoke-static {p0, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    .line 6054
    :cond_2
    new-instance v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 6056
    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a()Ljava/lang/Integer;

    move-result-object p0

    .line 6057
    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->b()Ljava/lang/Integer;

    move-result-object v2

    .line 6116
    iget-object v1, v1, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_4

    if-eqz v2, :cond_4

    .line 6062
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 6066
    :cond_3
    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    .line 6067
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->build()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    .line 349
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    :cond_5
    return-void
.end method

.method private static a(Lcom/mopub/mobileads/j;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    const-string v0, "linearXmlManager cannot be null"

    .line 419
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vastVideoConfig cannot be null"

    .line 420
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 424
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->a()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 425
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 426
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    const-string v0, "complete"

    .line 7214
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 428
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    const-string v0, "skip"

    .line 7266
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 430
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 433
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/mopub/mobileads/j;->h()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->c(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/mopub/mobileads/n;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    const-string/jumbo v0, "xmlManager cannot be null"

    .line 454
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vastVideoConfig cannot be null"

    .line 455
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/mopub/mobileads/n;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 459
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/mopub/mobileads/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/mopub/mobileads/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 465
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/mopub/mobileads/n;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static a(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .line 375
    new-instance v0, Lcom/mopub/mobileads/e;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/e;-><init>(Lorg/w3c/dom/Node;)V

    .line 7101
    iget-object p0, v0, Lcom/mopub/mobileads/e;->a:Ljava/util/Set;

    .line 377
    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/VastVideoConfig;->addViewabilityVendors(Ljava/util/Set;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 778
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 782
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    return v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 795
    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 796
    iput v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->f:I

    .line 801
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 802
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    :try_start_2
    invoke-static {v0}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    .line 806
    :goto_0
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    .line 808
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 810
    :cond_1
    throw v1

    :cond_2
    return-object v1
.end method

.method private b(Ljava/util/List;)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/h;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "managers cannot be null"

    .line 543
    invoke-static {v1, v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 548
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v1, v5

    .line 549
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/mobileads/h;

    .line 11057
    iget-object v9, v8, Lcom/mopub/mobileads/h;->a:Lorg/w3c/dom/Node;

    const-string/jumbo v10, "width"

    invoke-static {v9, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 11068
    iget-object v10, v8, Lcom/mopub/mobileads/h;->a:Lorg/w3c/dom/Node;

    const-string v11, "height"

    invoke-static {v10, v11}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v9, :cond_0

    .line 552
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x12c

    if-lt v11, v12, :cond_0

    if-eqz v10, :cond_0

    .line 553
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0xfa

    if-lt v11, v12, :cond_0

    .line 557
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 11596
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 11597
    iget-object v12, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 11598
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 11599
    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 11600
    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    int-to-float v9, v9

    .line 11602
    iget-object v14, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {v9, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    int-to-float v10, v10

    .line 11603
    iget-object v14, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {v10, v14}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v10

    add-int/lit8 v14, v13, -0x10

    if-gt v9, v14, :cond_1

    add-int/lit8 v14, v12, -0x10

    if-gt v10, v14, :cond_1

    move-object/from16 p1, v1

    goto :goto_3

    .line 11611
    :cond_1
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 11612
    sget-object v15, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v15, v6, :cond_2

    .line 11613
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v14, Landroid/graphics/Point;->x:I

    .line 11614
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v14, Landroid/graphics/Point;->y:I

    move-object/from16 p1, v1

    goto :goto_2

    :cond_2
    int-to-float v9, v9

    int-to-float v15, v13

    div-float v15, v9, v15

    int-to-float v10, v10

    move-object/from16 p1, v1

    int-to-float v1, v12

    div-float v1, v10, v1

    cmpl-float v16, v15, v1

    if-ltz v16, :cond_3

    .line 11620
    iput v13, v14, Landroid/graphics/Point;->x:I

    div-float/2addr v10, v15

    float-to-int v1, v10

    .line 11621
    iput v1, v14, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_3
    div-float/2addr v9, v1

    float-to-int v1, v9

    .line 11623
    iput v1, v14, Landroid/graphics/Point;->x:I

    .line 11624
    iput v12, v14, Landroid/graphics/Point;->y:I

    .line 11628
    :goto_2
    iget v1, v14, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x10

    iput v1, v14, Landroid/graphics/Point;->x:I

    .line 11629
    iget v1, v14, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x10

    iput v1, v14, Landroid/graphics/Point;->y:I

    .line 11631
    iget v1, v14, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_5

    iget v1, v14, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_4

    goto :goto_3

    .line 11635
    :cond_4
    iget v1, v14, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v9, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    iput v1, v14, Landroid/graphics/Point;->x:I

    .line 11636
    iget v1, v14, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v9, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    iput v1, v14, Landroid/graphics/Point;->y:I

    move-object v11, v14

    .line 12083
    :cond_5
    :goto_3
    iget-object v1, v8, Lcom/mopub/mobileads/h;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 559
    iget v9, v11, Landroid/graphics/Point;->x:I

    iget v10, v11, Landroid/graphics/Point;->y:I

    .line 558
    invoke-static {v1, v6, v9, v10}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 565
    new-instance v1, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v13, v11, Landroid/graphics/Point;->x:I

    iget v14, v11, Landroid/graphics/Point;->y:I

    .line 12093
    iget-object v9, v8, Lcom/mopub/mobileads/h;->a:Lorg/w3c/dom/Node;

    const-string v10, "CompanionClickThrough"

    invoke-static {v9, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 12097
    invoke-static {v9}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    .line 570
    invoke-virtual {v8}, Lcom/mopub/mobileads/h;->a()Ljava/util/List;

    move-result-object v17

    .line 571
    invoke-virtual {v8}, Lcom/mopub/mobileads/h;->b()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 574
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_7
    move-object/from16 p1, v1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2
.end method

.method private static b(Lcom/mopub/mobileads/g;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/mopub/mobileads/g;->e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->a()Ljava/util/List;

    move-result-object p0

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, v0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a(Lorg/w3c/dom/Node;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "managers cannot be null"

    .line 644
    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 648
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 649
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 650
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 651
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 653
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->a()Ljava/lang/Integer;

    move-result-object v7

    .line 654
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->b()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_0

    .line 657
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x12c

    if-gt v9, v10, :cond_0

    if-eqz v8, :cond_0

    .line 658
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v10, :cond_0

    .line 12111
    iget-object v9, v6, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 663
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 662
    invoke-static {v9, v4, v7, v8}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 669
    new-instance v0, Lcom/mopub/mobileads/VastIconConfig;

    .line 670
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 671
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 672
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->c()Ljava/lang/Integer;

    move-result-object v13

    .line 673
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->d()Ljava/lang/Integer;

    move-result-object v14

    .line 675
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->e()Ljava/util/List;

    move-result-object v16

    .line 676
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->f()Ljava/lang/String;

    move-result-object v17

    .line 677
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->g()Ljava/util/List;

    move-result-object v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->a([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 149
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 51
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    .line 12139
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    if-eqz v0, :cond_0

    .line 12141
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
