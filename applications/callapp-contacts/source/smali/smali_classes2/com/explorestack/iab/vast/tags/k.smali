.class public final Lcom/explorestack/iab/vast/tags/k;
.super Lcom/explorestack/iab/vast/tags/g;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/explorestack/iab/vast/tags/s;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "skipoffset"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/k;->f:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/g;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/explorestack/iab/vast/tags/k;->e:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Linear"

    .line 28
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "skipoffset"

    .line 29
    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/k;->g(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1126
    iput v3, p0, Lcom/explorestack/iab/vast/tags/k;->e:I

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Duration"

    .line 39
    invoke-static {v3, v5}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/k;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 2086
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/k;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, "MediaFiles"

    .line 41
    invoke-static {v3, v5}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3058
    invoke-interface {p1, v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3060
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_5

    .line 3061
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v0, :cond_2

    .line 3064
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaFile"

    .line 3065
    invoke-static {v6, v7}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3066
    new-instance v6, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-direct {v6, p1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3067
    invoke-virtual {v6}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->x_()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3068
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v6, "VastXmlTag"

    const-string v7, "MediaFile: is not valid. Skipping it."

    .line 3070
    invoke-static {v6, v7}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/k;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 3074
    :cond_4
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/k;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 3077
    :cond_5
    invoke-interface {p1, v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3094
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/k;->a:Ljava/util/List;

    goto :goto_0

    :cond_6
    const-string v4, "VideoClicks"

    .line 43
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 44
    new-instance v3, Lcom/explorestack/iab/vast/tags/s;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/s;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3102
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/k;->b:Lcom/explorestack/iab/vast/tags/s;

    goto :goto_0

    :cond_7
    const-string v4, "AdParameters"

    .line 45
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 46
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/k;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 3110
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/k;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v4, "TrackingEvents"

    .line 47
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 48
    new-instance v3, Lcom/explorestack/iab/vast/tags/n;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/n;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4055
    iget-object v3, v3, Lcom/explorestack/iab/vast/tags/n;->a:Ljava/util/EnumMap;

    .line 4118
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/k;->d:Ljava/util/EnumMap;

    goto/16 :goto_0

    .line 51
    :cond_9
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/k;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 54
    :cond_a
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/explorestack/iab/vast/tags/k;->f:[Ljava/lang/String;

    return-object v0
.end method
