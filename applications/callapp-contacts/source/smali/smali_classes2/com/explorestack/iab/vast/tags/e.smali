.class public final Lcom/explorestack/iab/vast/tags/e;
.super Lcom/explorestack/iab/vast/tags/g;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/f;",
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

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/g;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/e;->a:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "CompanionAds"

    .line 15
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Companion"

    .line 21
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    new-instance v3, Lcom/explorestack/iab/vast/tags/f;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/f;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 23
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/f;->x_()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "VastXmlTag"

    const-string v4, "Creative Companion: is not valid. Skipping it."

    .line 26
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/e;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
