.class public Lcom/explorestack/iab/vast/tags/MediaFileTag;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "delivery"

    const-string v1, "type"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "codec"

    const-string v5, "id"

    const-string v6, "bitrate"

    const-string v7, "minBitrate"

    const-string v8, "maxBitrate"

    const-string v9, "scalable"

    const-string v10, "maintainAspectRatio"

    const-string v11, "apiFramework"

    .line 9
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    const-string v0, "apiFramework"

    .line 63
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    .line 59
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final x_()Z
    .locals 3

    const-string v0, "type"

    .line 35
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    .line 36
    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    .line 37
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
