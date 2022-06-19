.class public final Lcom/explorestack/iab/vast/tags/j;
.super Lcom/explorestack/iab/vast/tags/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/a;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "InLine"

    .line 9
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Creatives"

    .line 15
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/j;->a_(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 1033
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v4, "Extensions"

    .line 17
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/j;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 1041
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/a;->b:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string v4, "Impression"

    .line 19
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/j;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "Error"

    .line 21
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/j;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "AdSystem"

    .line 23
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    new-instance v3, Lcom/explorestack/iab/vast/tags/b;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/b;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/tags/j;->a(Lcom/explorestack/iab/vast/tags/b;)V

    goto :goto_0

    .line 26
    :cond_5
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/j;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 29
    :cond_6
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
