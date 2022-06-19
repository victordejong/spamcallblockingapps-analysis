.class public final Lcom/explorestack/iab/vast/tags/s;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "VideoClicks"

    .line 16
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClickThrough"

    .line 22
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 23
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/s;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/s;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, "ClickTracking"

    .line 24
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/s;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1048
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->b:Ljava/util/List;

    if-nez v4, :cond_2

    .line 1049
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->b:Ljava/util/List;

    .line 1051
    :cond_2
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v4, "CustomClick"

    .line 26
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/s;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->c:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1060
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->c:Ljava/util/List;

    .line 1062
    :cond_4
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/s;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_5
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/s;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 32
    :cond_6
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
