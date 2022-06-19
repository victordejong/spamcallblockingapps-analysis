.class public final Lcom/explorestack/iab/vast/tags/q;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "version"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/q;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "VAST"

    .line 18
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad"

    .line 24
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    new-instance v4, Lcom/explorestack/iab/vast/tags/c;

    invoke-direct {v4, p1}, Lcom/explorestack/iab/vast/tags/c;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/q;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/explorestack/iab/vast/tags/q;->b:[Ljava/lang/String;

    return-object v0
.end method
