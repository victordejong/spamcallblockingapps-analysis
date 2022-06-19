.class final Lcom/explorestack/iab/vast/tags/n;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/EnumMap;
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


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 14
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/n;->a:Ljava/util/EnumMap;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "TrackingEvents"

    .line 18
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tracking"

    .line 24
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    new-instance v3, Lcom/explorestack/iab/vast/tags/o;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/o;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v4, "event"

    .line 27
    invoke-virtual {v3, v4}, Lcom/explorestack/iab/vast/tags/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    :try_start_0
    invoke-static {v3}, Lcom/explorestack/iab/vast/TrackingEvent;->valueOf(Ljava/lang/String;)Lcom/explorestack/iab/vast/TrackingEvent;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "Event: %s is not valid. Skipping it."

    .line 32
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VastXmlTag"

    invoke-static {v4, v3}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 35
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/n;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 36
    iget-object v5, p0, Lcom/explorestack/iab/vast/tags/n;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 38
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/n;->a:Ljava/util/EnumMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/n;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/n;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 51
    :cond_4
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
