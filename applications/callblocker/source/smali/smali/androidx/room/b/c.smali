.class public Landroidx/room/b/c;
.super Ljava/lang/Object;
.source "DBUtil.java"


# direct methods
.method public static a(Ljava/io/File;)I
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 140
    const/4 v1, 0x0

    .line 142
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 144
    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    .line 145
    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 146
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 147
    if-eq v2, v7, :cond_1

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Bad database header, unable to read 4 bytes at offset 60"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 156
    :cond_0
    throw v0

    .line 150
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 153
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 151
    :cond_2
    return v0
.end method

.method public static a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p0, p1, p3}, Landroidx/room/i;->a(Landroidx/i/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    if-eqz p2, :cond_1

    instance-of v0, v1, Landroid/database/AbstractWindowedCursor;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 85
    check-cast v0, Landroid/database/AbstractWindowedCursor;

    .line 86
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getCount()I

    move-result v3

    .line 88
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    .line 93
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    if-ge v2, v3, :cond_1

    .line 94
    :cond_0
    invoke-static {v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    :cond_1
    return-object v1

    :cond_2
    move v2, v3

    .line 91
    goto :goto_0
.end method

.method public static a(Landroidx/i/a/b;)V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const-string/jumbo v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v1}, Landroidx/i/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 114
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    throw v0

    .line 118
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    const-string/jumbo v2, "room_fts_content_sync_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/i/a/b;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_2
    return-void
.end method
