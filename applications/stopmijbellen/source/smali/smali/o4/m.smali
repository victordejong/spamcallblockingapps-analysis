.class public final Lo4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lo4/n;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v9, Ljava/io/DataInputStream;

    .line 2
    invoke-direct {v9, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, -0x2e002e01

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/play/core/internal/zzck;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected magic="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const-wide/16 v1, 0x0

    move-wide v10, v1

    :goto_1
    sub-long v7, p3, v10

    .line 8
    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v12, v1, :cond_5

    if-eqz v12, :cond_4

    const-string v2, "Unexpected end of patch"

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_2

    .line 9
    :pswitch_0
    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 10
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 11
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_3

    .line 12
    :pswitch_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    .line 13
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 14
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_3

    .line 15
    :pswitch_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    .line 16
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 17
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_3

    .line 18
    :pswitch_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 19
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12

    if-eq v12, v1, :cond_2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 20
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_3

    .line 21
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 22
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    int-to-long v4, v1

    .line 24
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 25
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_3

    .line 26
    :pswitch_5
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    int-to-long v4, v1

    .line 27
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 28
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto :goto_3

    .line 29
    :pswitch_6
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v4, v3

    .line 30
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12

    if-eq v12, v1, :cond_3

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 31
    invoke-static/range {v1 .. v8}, Lo4/m;->b([BLo4/n;Ljava/io/OutputStream;JIJ)V

    goto :goto_3

    .line 32
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 33
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 35
    invoke-static/range {v1 .. v6}, Lo4/m;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V

    goto :goto_3

    .line 36
    :pswitch_8
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 37
    invoke-static/range {v1 .. v6}, Lo4/m;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V

    goto :goto_3

    :goto_2
    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 38
    invoke-static/range {v1 .. v6}, Lo4/m;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    int-to-long v1, v12

    add-long/2addr v10, v1

    goto/16 :goto_1

    .line 39
    :cond_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v10

    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Patch file overrun"

    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 42
    throw v0

    .line 43
    :cond_6
    new-instance v0, Lcom/google/android/play/core/internal/zzck;

    const/16 v2, 0x1e

    const-string v3, "Unexpected version="

    invoke-static {v2, v3, v1}, Landroid/support/v4/media/b;->d(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xf7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b([BLo4/n;Ljava/io/OutputStream;JIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p5

    if-ltz v1, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_4

    int-to-long v8, v1

    cmp-long v4, v8, p6

    if-gtz v4, :cond_3

    .line 1
    :try_start_0
    new-instance v10, Lo4/o;

    move-object v4, v10

    move-object v5, p1

    move-wide v6, p3

    .line 2
    invoke-direct/range {v4 .. v9}, Lo4/o;-><init>(Lo4/n;JJ)V

    .line 3
    monitor-enter v10
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v10}, Lo4/o;->d()J

    move-result-wide v4

    invoke-virtual {v10, v2, v3, v4, v5}, Lo4/o;->k(JJ)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-lez v1, :cond_2

    const/16 v3, 0x4000

    .line 5
    :try_start_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    sub-int v6, v3, v5

    .line 6
    invoke-virtual {v2, p0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "truncated input stream"

    .line 7
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v5, p2

    .line 8
    invoke-virtual {p2, p0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_2
    move-exception v0

    .line 11
    monitor-exit v10

    throw v0
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "patch underrun"

    .line 13
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output length overrun"

    .line 15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputOffset negative"

    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "copyLength negative"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    int-to-long v0, p3

    cmp-long v2, v0, p4

    if-gtz v2, :cond_1

    :goto_0
    if-lez p3, :cond_0

    const/16 p4, 0x4000

    .line 1
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    const/4 p5, 0x0

    .line 2
    invoke-virtual {p1, p0, p5, p4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 3
    invoke-virtual {p2, p0, p5, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p3, p4

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "patch underrun"

    .line 4
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Output length overrun"

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "copyLength negative"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
