.class public Lcom/allinone/callerid/d/f/c;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# direct methods
.method private static a([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    aput-byte v1, p0, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    .line 2
    aput-byte v1, p0, v0

    const/16 v0, 0x50

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 3
    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0xb

    const/16 v1, 0x80

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 4
    aput-byte v0, p0, v1

    and-int/lit16 v0, p1, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 5
    aput-byte v0, p0, v1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x5

    shl-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1f

    int-to-byte p1, p1

    .line 6
    aput-byte p1, p0, v0

    const/4 p1, 0x6

    const/4 v0, -0x4

    .line 7
    aput-byte v0, p0, p1

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "callscreen"

    if-nez p0, :cond_1

    .line 3
    sget-boolean p0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "mp4\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 4
    invoke-static {v1, p0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Landroid/media/MediaExtractor;

    invoke-direct {p0}, Landroid/media/MediaExtractor;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 9
    invoke-virtual {p0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "mime"

    .line 10
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "audio"

    .line 11
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v4

    move-object v2, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    :cond_4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v0, 0x19000

    if-eqz v2, :cond_5

    const-string v0, "max-input-size"

    .line 16
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 17
    :cond_5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 19
    :goto_2
    invoke-virtual {p0, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 20
    new-array v4, v2, [B

    .line 21
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v2, 0x7

    .line 22
    new-array v6, v5, [B

    .line 23
    invoke-static {v6, v5}, Lcom/allinone/callerid/d/f/c;->a([BI)V

    const/4 v5, 0x7

    .line 24
    invoke-static {v4, v3, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-virtual {p1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 29
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 30
    :goto_3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_7

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :goto_4
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method
