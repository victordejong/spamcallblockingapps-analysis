.class public final Lcom/linkedin/android/litr/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/linkedin/android/litr/d/d;I)I
    .locals 17

    .line 130
    invoke-interface/range {p0 .. p1}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "bitrate"

    .line 131
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string v2, "durationUs"

    .line 134
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-nez v7, :cond_1

    return v5

    .line 139
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/linkedin/android/litr/d/d;->g()J

    move-result-wide v7

    long-to-float v7, v7

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/linkedin/android/litr/d/d;->a()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    const/high16 v10, 0x41000000    # 8.0f

    const-string v11, "height"

    const-string v12, "width"

    if-ge v5, v8, :cond_4

    move-object/from16 v13, p0

    .line 143
    invoke-interface {v13, v5}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v14

    const-string v15, "mime"

    .line 144
    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 145
    invoke-virtual {v14, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v14, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 146
    invoke-virtual {v14, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 147
    invoke-virtual {v14, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    int-to-float v11, v11

    long-to-float v12, v14

    div-float/2addr v12, v4

    mul-float v11, v11, v12

    div-float/2addr v11, v10

    sub-float/2addr v7, v11

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "video"

    .line 151
    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 152
    invoke-virtual {v14, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 153
    invoke-virtual {v14, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    mul-int v10, v10, v11

    int-to-float v10, v10

    .line 154
    invoke-virtual {v14, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    long-to-float v11, v11

    div-float/2addr v11, v4

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    mul-int v1, v1, v0

    int-to-float v0, v1

    mul-float v0, v0, v3

    cmpl-float v1, v9, v6

    if-lez v1, :cond_5

    mul-float v7, v7, v0

    div-float/2addr v7, v9

    :cond_5
    mul-float v7, v7, v10

    div-float/2addr v7, v3

    float-to-int v0, v7

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 8

    const-string v0, "Unable to close file descriptor from targetFile: "

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "r"

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmp-long p0, v6, v4

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 187
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 189
    sget-object v1, Lcom/linkedin/android/litr/h/c;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 182
    :goto_3
    :try_start_2
    sget-object v4, Lcom/linkedin/android/litr/h/c;->a:Ljava/lang/String;

    const-string v5, "Unable to extract length from targetFile: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 187
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 189
    sget-object v1, Lcom/linkedin/android/litr/h/c;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return-wide v2

    :goto_5
    if-eqz v1, :cond_4

    .line 187
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 189
    sget-object v2, Lcom/linkedin/android/litr/h/c;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :cond_4
    :goto_6
    throw p0

    .line 193
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 194
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_6
    return-wide v2
.end method

.method private static a(Lcom/linkedin/android/litr/c;)J
    .locals 5

    .line 8057
    iget-object v0, p0, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 220
    invoke-interface {v0}, Lcom/linkedin/android/litr/d/d;->h()Lcom/linkedin/android/litr/d/c;

    move-result-object v0

    .line 9040
    iget-wide v1, v0, Lcom/linkedin/android/litr/d/c;->b:J

    .line 10033
    iget-wide v3, v0, Lcom/linkedin/android/litr/d/c;->a:J

    sub-long/2addr v1, v3

    .line 10057
    iget-object v0, p0, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 10110
    iget p0, p0, Lcom/linkedin/android/litr/c;->g:I

    .line 224
    invoke-interface {v0, p0}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "durationUs"

    .line 228
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 233
    :goto_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/List;)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c;",
            ">;)J"
        }
    .end annotation

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkedin/android/litr/c;

    .line 55
    invoke-static {v5}, Lcom/linkedin/android/litr/h/c;->a(Lcom/linkedin/android/litr/c;)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkedin/android/litr/c;

    .line 1057
    iget-object v6, v5, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 1110
    iget v7, v5, Lcom/linkedin/android/litr/c;->g:I

    .line 59
    invoke-interface {v6, v7}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v6

    const/4 v7, -0x1

    const-string v8, "bitrate"

    .line 1212
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1213
    invoke-virtual {v6, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 61
    :cond_1
    invoke-static {v5}, Lcom/linkedin/android/litr/h/c;->a(Lcom/linkedin/android/litr/c;)J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-gez v11, :cond_2

    move-wide v9, v3

    :cond_2
    const/4 v11, 0x0

    const-string v12, "mime"

    .line 2204
    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2205
    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-eqz v11, :cond_5

    .line 3102
    iget-object v6, v5, Lcom/linkedin/android/litr/c;->f:Landroid/media/MediaFormat;

    if-eqz v6, :cond_4

    .line 4102
    iget-object v5, v5, Lcom/linkedin/android/litr/c;->f:Landroid/media/MediaFormat;

    .line 71
    invoke-virtual {v5, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_4
    const-string v5, "audio"

    .line 72
    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-gez v7, :cond_5

    const v7, 0x4e200

    :cond_5
    :goto_2
    if-gez v7, :cond_6

    const/4 v7, 0x0

    :cond_6
    int-to-float v5, v7

    long-to-float v6, v9

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v0, v5

    goto :goto_1

    :cond_7
    const/high16 p0, 0x41000000    # 8.0f

    div-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method
