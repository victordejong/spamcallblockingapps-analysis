.class public Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/video/CallAppTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformationBuilder"
.end annotation


# instance fields
.field public a:Lcom/linkedin/android/litr/b;

.field public b:F

.field public c:F

.field public d:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

.field private e:Landroid/content/Context;

.field private f:Ljava/io/File;

.field private g:Lcom/linkedin/android/litr/e;

.field private h:Lcom/callapp/contacts/util/video/SourceMedia;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Lcom/linkedin/android/litr/e;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "video/avc"

    .line 49
    iput-object v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->j:I

    const/16 v0, 0x780

    .line 51
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->k:I

    const/16 v0, 0x438

    .line 52
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->b:F

    .line 54
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->c:F

    const v0, 0xb71b00

    .line 55
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->m:I

    const/4 v0, 0x5

    .line 56
    iput v0, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->n:I

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->e:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->f:Ljava/io/File;

    .line 67
    new-instance p3, Lcom/callapp/contacts/util/video/SourceMedia;

    invoke-direct {p3, p2}, Lcom/callapp/contacts/util/video/SourceMedia;-><init>(Landroid/net/Uri;)V

    iput-object p3, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->h:Lcom/callapp/contacts/util/video/SourceMedia;

    .line 68
    new-instance p2, Lcom/linkedin/android/litr/b;

    invoke-direct {p2, p1}, Lcom/linkedin/android/litr/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a:Lcom/linkedin/android/litr/b;

    .line 69
    iput-object p4, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->o:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->g:Lcom/linkedin/android/litr/e;

    return-void
.end method

.method private a(Lcom/callapp/contacts/util/video/TargetTrack;I)Landroid/media/MediaFormat;
    .locals 3

    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p1, Lcom/callapp/contacts/util/video/TargetTrack;->d:Lcom/callapp/contacts/util/video/MediaTrackFormat;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 197
    iget-object v1, p1, Lcom/callapp/contacts/util/video/TargetTrack;->d:Lcom/callapp/contacts/util/video/MediaTrackFormat;

    iget-object v1, v1, Lcom/callapp/contacts/util/video/MediaTrackFormat;->b:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object p1, p1, Lcom/callapp/contacts/util/video/TargetTrack;->d:Lcom/callapp/contacts/util/video/MediaTrackFormat;

    check-cast p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    .line 199
    iget-object v1, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->i:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/callapp/contacts/util/video/CallAppTransformation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 201
    iget p2, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->k:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 202
    iget p2, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->l:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    iget p2, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->m:I

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 204
    iget p2, p0, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->n:I

    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 205
    iget p1, p1, Lcom/callapp/contacts/util/video/VideoTrackFormat;->f:I

    const-string p2, "frame-rate"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v1, p0

    .line 112
    new-instance v0, Lcom/callapp/contacts/util/video/TargetMedia;

    iget-object v2, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->f:Ljava/io/File;

    iget-object v3, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->h:Lcom/callapp/contacts/util/video/SourceMedia;

    iget-object v3, v3, Lcom/callapp/contacts/util/video/SourceMedia;->c:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/callapp/contacts/util/video/TargetMedia;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 114
    invoke-virtual {v0}, Lcom/callapp/contacts/util/video/TargetMedia;->getIncludedTrackCount()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/util/video/TargetMedia;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v0, Lcom/callapp/contacts/util/video/TargetMedia;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 125
    :try_start_0
    iget-object v4, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->h:Lcom/callapp/contacts/util/video/SourceMedia;

    iget-object v4, v4, Lcom/callapp/contacts/util/video/SourceMedia;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/util/video/MediaTrackFormat;

    .line 126
    iget-object v6, v5, Lcom/callapp/contacts/util/video/MediaTrackFormat;->b:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    move-object v2, v5

    check-cast v2, Lcom/callapp/contacts/util/video/VideoTrackFormat;

    .line 128
    iget v3, v2, Lcom/callapp/contacts/util/video/VideoTrackFormat;->i:I

    :cond_3
    if-nez v3, :cond_4

    const/16 v4, 0x5a

    goto :goto_0

    :cond_4
    move v4, v3

    .line 136
    :goto_0
    new-instance v5, Lcom/linkedin/android/litr/d/b;

    iget-object v6, v0, Lcom/callapp/contacts/util/video/TargetMedia;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-virtual {v0}, Lcom/callapp/contacts/util/video/TargetMedia;->getIncludedTrackCount()I

    move-result v7

    iget v8, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->j:I

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/linkedin/android/litr/d/b;-><init>(Ljava/lang/String;III)V

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    new-instance v7, Lcom/linkedin/android/litr/d/a;

    iget-object v8, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->e:Landroid/content/Context;

    iget-object v9, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->h:Lcom/callapp/contacts/util/video/SourceMedia;

    iget-object v9, v9, Lcom/callapp/contacts/util/video/SourceMedia;->a:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Lcom/linkedin/android/litr/d/a;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 144
    iget-object v0, v0, Lcom/callapp/contacts/util/video/TargetMedia;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/util/video/TargetTrack;

    .line 145
    iget-boolean v9, v8, Lcom/callapp/contacts/util/video/TargetTrack;->b:Z

    if-eqz v9, :cond_5

    .line 148
    new-instance v9, Lcom/linkedin/android/litr/c$a;

    iget v10, v8, Lcom/callapp/contacts/util/video/TargetTrack;->a:I

    invoke-direct {v9, v7, v10, v5}, Lcom/linkedin/android/litr/c$a;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;)V

    .line 151
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 1170
    iput v10, v9, Lcom/linkedin/android/litr/c$a;->e:I

    .line 152
    invoke-direct {v1, v8, v4}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a(Lcom/callapp/contacts/util/video/TargetTrack;I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 2164
    iput-object v8, v9, Lcom/linkedin/android/litr/c$a;->d:Landroid/media/MediaFormat;

    .line 152
    new-instance v8, Lcom/linkedin/android/litr/b/e;

    invoke-direct {v8}, Lcom/linkedin/android/litr/b/e;-><init>()V

    .line 3158
    iput-object v8, v9, Lcom/linkedin/android/litr/c$a;->c:Lcom/linkedin/android/litr/b/b;

    .line 153
    new-instance v8, Lcom/linkedin/android/litr/b/d;

    invoke-direct {v8}, Lcom/linkedin/android/litr/b/d;-><init>()V

    .line 4146
    iput-object v8, v9, Lcom/linkedin/android/litr/c$a;->a:Lcom/linkedin/android/litr/b/a;

    .line 156
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, -0x1

    const/high16 v12, 0x3f000000    # 0.5f

    if-nez v3, :cond_6

    .line 161
    new-instance v13, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;

    invoke-direct {v13, v11}, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;-><init>(I)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v13, Lcom/linkedin/android/litr/c/b/a/a;

    new-instance v14, Lcom/linkedin/android/litr/c/c;

    new-instance v15, Landroid/graphics/PointF;

    iget v11, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->b:F

    iget v10, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->c:F

    invoke-direct {v15, v11, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v12, v12}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v11, 0x0

    invoke-direct {v14, v15, v10, v11}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    invoke-direct {v13, v14}, Lcom/linkedin/android/litr/c/b/a/a;-><init>(Lcom/linkedin/android/litr/c/c;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_6
    iget-object v10, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->d:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    if-eqz v10, :cond_8

    if-lez v3, :cond_7

    .line 167
    new-instance v10, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;

    const/4 v11, -0x1

    invoke-direct {v10, v11}, Lcom/callapp/contacts/util/video/videoFilters/SolidBackgroundColorFilter;-><init>(I)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v10, Lcom/linkedin/android/litr/c/b/a/a;

    new-instance v11, Lcom/linkedin/android/litr/c/c;

    new-instance v13, Landroid/graphics/PointF;

    iget v14, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->b:F

    iget v15, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->c:F

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v12, v12}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v12, 0x0

    invoke-direct {v11, v13, v14, v12}, Lcom/linkedin/android/litr/c/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    invoke-direct {v10, v11}, Lcom/linkedin/android/litr/c/b/a/a;-><init>(Lcom/linkedin/android/litr/c/c;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_7
    iget-object v10, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->d:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    invoke-virtual {v10, v2}, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(Lcom/callapp/contacts/util/video/VideoTrackFormat;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_8
    new-instance v10, Lcom/linkedin/android/litr/e/b;

    invoke-direct {v10, v8}, Lcom/linkedin/android/litr/e/b;-><init>(Ljava/util/List;)V

    .line 4152
    iput-object v10, v9, Lcom/linkedin/android/litr/c$a;->b:Lcom/linkedin/android/litr/e/d;

    .line 175
    invoke-virtual {v9}, Lcom/linkedin/android/litr/c$a;->a()Lcom/linkedin/android/litr/c;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 178
    :cond_9
    iget-object v0, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a:Lcom/linkedin/android/litr/b;

    iget-object v2, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->o:Ljava/lang/String;

    iget-object v3, v1, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->g:Lcom/linkedin/android/litr/e;

    invoke-virtual {v0, v2, v6, v3}, Lcom/linkedin/android/litr/b;->a(Ljava/lang/String;Ljava/util/List;Lcom/linkedin/android/litr/e;)V
    :try_end_0
    .catch Lcom/linkedin/android/litr/exception/MediaTransformationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/callapp/contacts/util/video/CallAppTransformation;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception when trying to perform track operation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
