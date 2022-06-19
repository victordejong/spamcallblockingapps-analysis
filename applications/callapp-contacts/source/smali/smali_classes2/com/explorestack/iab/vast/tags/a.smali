.class public Lcom/explorestack/iab/vast/tags/a;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/explorestack/iab/vast/tags/b;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static a_(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/h;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Creatives"

    .line 67
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 70
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 73
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Creative"

    .line 74
    invoke-static {v4, v5}, Lcom/explorestack/iab/vast/tags/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    new-instance v4, Lcom/explorestack/iab/vast/tags/h;

    invoke-direct {v4, p0}, Lcom/explorestack/iab/vast/tags/h;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/explorestack/iab/vast/tags/a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {p0, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method static b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extensions"

    .line 85
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Extension"

    .line 93
    invoke-static {v4, v5}, Lcom/explorestack/iab/vast/tags/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    new-instance v4, Lcom/explorestack/iab/vast/tags/i;

    invoke-direct {v4, p0}, Lcom/explorestack/iab/vast/tags/i;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v5, "type"

    .line 95
    invoke-virtual {v4, v5}, Lcom/explorestack/iab/vast/tags/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appodeal"

    .line 96
    invoke-static {v4, v5}, Lcom/explorestack/iab/vast/tags/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    new-instance v4, Lcom/explorestack/iab/vast/tags/d;

    invoke-direct {v4, p0}, Lcom/explorestack/iab/vast/tags/d;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p0}, Lcom/explorestack/iab/vast/tags/a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p0}, Lcom/explorestack/iab/vast/tags/a;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {p0, v5, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method final a(Lcom/explorestack/iab/vast/tags/b;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/explorestack/iab/vast/tags/a;->e:Lcom/explorestack/iab/vast/tags/b;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->c:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
