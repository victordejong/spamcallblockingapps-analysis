.class public final Lcom/explorestack/iab/vast/tags/c;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field public a:Lcom/explorestack/iab/vast/tags/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "id"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/c;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Ad"

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

    const-string v4, "InLine"

    .line 21
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    new-instance v3, Lcom/explorestack/iab/vast/tags/j;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/j;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/c;->a:Lcom/explorestack/iab/vast/tags/a;

    goto :goto_0

    :cond_1
    const-string v4, "Wrapper"

    .line 23
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    new-instance v3, Lcom/explorestack/iab/vast/tags/t;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/t;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/c;->a:Lcom/explorestack/iab/vast/tags/a;

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/c;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/explorestack/iab/vast/tags/c;->b:[Ljava/lang/String;

    return-object v0
.end method
