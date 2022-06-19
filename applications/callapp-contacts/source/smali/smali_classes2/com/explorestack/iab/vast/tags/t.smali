.class public final Lcom/explorestack/iab/vast/tags/t;
.super Lcom/explorestack/iab/vast/tags/a;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "followAdditionalWrappers"

    const-string v1, "allowMultipleAds"

    const-string v2, "fallbackOnNoAd"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/t;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/a;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Wrapper"

    .line 17
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creatives"

    .line 23
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->a_(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 1033
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v4, "Extensions"

    .line 25
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 1041
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/a;->b:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v4, "Impression"

    .line 27
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "Error"

    .line 29
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 30
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/t;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "AdSystem"

    .line 31
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    new-instance v3, Lcom/explorestack/iab/vast/tags/b;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/b;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/t;->a(Lcom/explorestack/iab/vast/tags/b;)V

    goto :goto_0

    :cond_5
    const-string v4, "VASTAdTagURI"

    .line 33
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 34
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1047
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/t;->e:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_6
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/t;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 39
    :cond_7
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/explorestack/iab/vast/tags/t;->f:[Ljava/lang/String;

    return-object v0
.end method
