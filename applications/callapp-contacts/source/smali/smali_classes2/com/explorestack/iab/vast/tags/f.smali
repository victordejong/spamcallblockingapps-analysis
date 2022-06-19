.class public final Lcom/explorestack/iab/vast/tags/f;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/explorestack/iab/vast/tags/m;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "width"

    const-string v1, "height"

    const-string v2, "id"

    const-string v3, "assetWidth"

    const-string v4, "assetHeight"

    const-string v5, "expandedWidth"

    const-string v6, "expandedHeight"

    const-string v7, "apiFramework"

    const-string v8, "adSlotID"

    const-string v9, "required"

    .line 17
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/f;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Companion"

    .line 40
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StaticResource"

    .line 46
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    new-instance v3, Lcom/explorestack/iab/vast/tags/m;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/m;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/m;->x_()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1076
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->d:Lcom/explorestack/iab/vast/tags/m;

    goto :goto_0

    :cond_1
    const-string v4, "IFrameResource"

    .line 51
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1084
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "HTMLResource"

    .line 53
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1092
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "CompanionClickThrough"

    .line 55
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->g:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v4, "CompanionClickTracking"

    .line 57
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 58
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/f;->a:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/iab/vast/tags/f;->a:Ljava/util/List;

    .line 1111
    :cond_5
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v4, "TrackingEvents"

    .line 59
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 60
    new-instance v3, Lcom/explorestack/iab/vast/tags/n;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/n;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2055
    iget-object v3, v3, Lcom/explorestack/iab/vast/tags/n;->a:Ljava/util/EnumMap;

    .line 2120
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->b:Ljava/util/Map;

    goto/16 :goto_0

    :cond_7
    const-string v4, "AdParameters"

    .line 62
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 63
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 2128
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/f;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_8
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/f;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 68
    :cond_9
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->d:Lcom/explorestack/iab/vast/tags/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    .line 148
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/f;->g:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 151
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/m;->getText()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "<script type=\'text/javascript\'>document.write(\'<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; max-width: 100%%; max-height: 100%%;\"src=\"%s\"/></a>\');</script>"

    .line 148
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "width"

    .line 2177
    invoke-virtual {p0, v4}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v4

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "height"

    .line 2181
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/explorestack/iab/vast/tags/f;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>"

    .line 154
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/f;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0}, Lcom/explorestack/iab/mraid/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->d:Lcom/explorestack/iab/vast/tags/m;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcom/explorestack/iab/vast/tags/f;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final x_()Z
    .locals 2

    const-string v0, "width"

    .line 138
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    .line 139
    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/tags/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
