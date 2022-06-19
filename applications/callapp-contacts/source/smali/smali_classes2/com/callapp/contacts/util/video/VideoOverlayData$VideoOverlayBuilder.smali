.class public Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/video/VideoOverlayData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoOverlayBuilder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/video/VideoOverlayData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->b:Ljava/util/List;

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/callapp/contacts/util/video/VideoOverlayData;)Lcom/linkedin/android/litr/c/a;
    .locals 5

    .line 175
    :try_start_0
    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->isAnimated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getOverlayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 178
    new-instance v2, Lcom/bumptech/glide/load/engine/a/k;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/a/k;-><init>(J)V

    .line 179
    new-instance v3, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    .line 180
    new-instance v2, Lcom/bumptech/glide/b/e;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;)V

    .line 181
    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getOverlayUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/linkedin/android/litr/h/c;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int p1, v3

    invoke-interface {v2, v0, p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/InputStream;I)I

    .line 183
    new-instance p1, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;

    invoke-direct {p1, p0, v2}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;-><init>(Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;Lcom/bumptech/glide/b/a;)V

    .line 205
    new-instance v0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;

    new-instance v2, Lcom/linkedin/android/litr/c/c;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getSize()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {v2, v3, p2, v1}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    invoke-direct {v0, p1, v2}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;-><init>(Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;Lcom/linkedin/android/litr/c/c;)V

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Lcom/linkedin/android/litr/c/c;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getSize()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {v2, v3, p2, v1}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    invoke-direct {v0, p1, v2}, Lcom/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter;-><init>(Landroid/graphics/Bitmap;Lcom/linkedin/android/litr/c/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    const-class p2, Lcom/callapp/contacts/util/video/VideoOverlayData;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Failed to create a GlFilter"

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(IZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;
    .locals 12

    move-object v0, p0

    .line 145
    iget-object v1, v0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->b:Ljava/util/List;

    new-instance v11, Lcom/callapp/contacts/util/video/VideoOverlayData;

    iget-object v3, v0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a:Landroid/content/Context;

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    move-object v2, v11

    move v4, p1

    move v5, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Landroid/content/Context;IZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZFFLjava/lang/Float;)Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;
    .locals 13

    move-object v0, p0

    .line 155
    iget-object v1, v0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->b:Ljava/util/List;

    new-instance v12, Lcom/callapp/contacts/util/video/VideoOverlayData;

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v5, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    move-object v2, v12

    move-object v3, p1

    move v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/callapp/contacts/util/video/VideoOverlayData;-><init>(Ljava/lang/String;FIZFFFLjava/lang/Float;Lcom/callapp/contacts/util/video/VideoOverlayData$1;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/callapp/contacts/util/video/VideoTrackFormat;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/video/VideoTrackFormat;",
            ")",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c/a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/video/VideoOverlayData;

    .line 163
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getOverlayWidth()F

    move-result v3

    invoke-virtual {v1}, Lcom/callapp/contacts/util/video/VideoOverlayData;->getOverlayHeight()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/util/video/VideoOverlayData;->setSize(Landroid/graphics/PointF;)V

    .line 164
    iget-object v2, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(Landroid/content/Context;Lcom/callapp/contacts/util/video/VideoOverlayData;)Lcom/linkedin/android/litr/c/a;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
