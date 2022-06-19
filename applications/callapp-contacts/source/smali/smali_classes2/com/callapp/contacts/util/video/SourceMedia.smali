.class public Lcom/callapp/contacts/util/video/SourceMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/video/MediaTrackFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 8

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/SourceMedia;->c:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/util/video/SourceMedia;->a:Landroid/net/Uri;

    .line 26
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/linkedin/android/litr/h/c;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/util/video/SourceMedia;->b:J

    const/4 v0, 0x0

    .line 29
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 30
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/util/video/SourceMedia;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 34
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 35
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "video"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    new-instance v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    invoke-direct {v4, p1, v3}, Lcom/callapp/contacts/util/video/VideoTrackFormat;-><init>(ILjava/lang/String;)V

    const-string/jumbo v3, "width"

    const/4 v5, -0x1

    .line 1057
    invoke-static {v2, v3, v5}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 41
    iput v3, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->c:I

    const-string v3, "height"

    .line 2057
    invoke-static {v2, v3, v5}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 42
    iput v3, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->d:I

    const-string v3, "durationUs"

    .line 2068
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2069
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    :cond_0
    const-wide/16 v6, -0x1

    .line 43
    :goto_1
    iput-wide v6, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->h:J

    const-string v3, "frame-rate"

    .line 3057
    invoke-static {v2, v3, v5}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 44
    iput v3, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->f:I

    const-string v3, "rotation-degrees"

    .line 45
    invoke-static {v2, v3, v0}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->i:I

    const-string v3, "i-frame-interval"

    .line 4057
    invoke-static {v2, v3, v5}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v3

    .line 46
    iput v3, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->g:I

    const-string v3, "bitrate"

    .line 5057
    invoke-static {v2, v3, v5}, Lcom/callapp/contacts/util/video/SourceMedia;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v2

    .line 47
    iput v2, v4, Lcom/callapp/contacts/util/video/VideoTrackFormat;->e:I

    .line 48
    iget-object v2, p0, Lcom/callapp/contacts/util/video/SourceMedia;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 52
    const-class v1, Lcom/callapp/contacts/util/video/SourceMedia;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Failed to extract sourceMedia"

    invoke-static {v1, p1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method
