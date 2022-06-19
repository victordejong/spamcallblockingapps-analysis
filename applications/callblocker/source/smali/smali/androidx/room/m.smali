.class Landroidx/room/m;
.super Ljava/lang/Object;
.source "SQLiteCopyOpenHelper.java"

# interfaces
.implements Landroidx/i/a/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:Landroidx/i/a/c;

.field private f:Landroidx/room/a;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILandroidx/i/a/c;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/room/m;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroidx/room/m;->b:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroidx/room/m;->c:Ljava/io/File;

    .line 69
    iput p4, p0, Landroidx/room/m;->d:I

    .line 70
    iput-object p5, p0, Landroidx/room/m;->e:Landroidx/i/a/c;

    .line 71
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Landroidx/room/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroidx/room/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 187
    :goto_0
    const-string/jumbo v1, "room-copy-helper"

    const-string/jumbo v2, ".tmp"

    iget-object v3, p0, Landroidx/room/m;->a:Landroid/content/Context;

    .line 188
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 187
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 190
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 191
    invoke-static {v0, v2}, Landroidx/room/b/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create directories for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/room/m;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/room/m;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "copyFromAssetPath and copyFromFile == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to move intermediate file ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to destination ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Landroidx/room/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v0, p0, Landroidx/room/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 117
    iget-object v0, p0, Landroidx/room/m;->f:Landroidx/room/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/m;->f:Landroidx/room/a;

    iget-boolean v0, v0, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 119
    :goto_0
    new-instance v3, Landroidx/room/b/a;

    iget-object v4, p0, Landroidx/room/m;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroidx/room/b/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 123
    :try_start_0
    invoke-virtual {v3}, Landroidx/room/b/a;->a()V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 128
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/room/m;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    .line 173
    :goto_1
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unable to copy database file."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    .line 172
    throw v0

    .line 135
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroidx/room/m;->f:Landroidx/room/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    goto :goto_1

    .line 142
    :cond_3
    :try_start_4
    invoke-static {v2}, Landroidx/room/b/c;->a(Ljava/io/File;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    .line 148
    :try_start_5
    iget v4, p0, Landroidx/room/m;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v0, v4, :cond_4

    .line 171
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    :try_start_6
    const-string/jumbo v1, "ROOM"

    const-string/jumbo v2, "Unable to read database version."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    goto :goto_1

    .line 152
    :cond_4
    :try_start_7
    iget-object v4, p0, Landroidx/room/m;->f:Landroidx/room/a;

    iget v5, p0, Landroidx/room/m;->d:I

    invoke-virtual {v4, v0, v5}, Landroidx/room/a;->a(II)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    goto :goto_1

    .line 158
    :cond_5
    :try_start_8
    iget-object v0, p0, Landroidx/room/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    :try_start_9
    invoke-direct {p0, v2}, Landroidx/room/m;->a(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 171
    :goto_2
    invoke-virtual {v3}, Landroidx/room/b/a;->b()V

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 164
    :try_start_a
    const-string/jumbo v1, "ROOM"

    const-string/jumbo v2, "Unable to copy database file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 167
    :cond_6
    const-string/jumbo v0, "ROOM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to delete database file ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") for a copy destructive migration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroidx/room/m;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroidx/room/a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Landroidx/room/m;->f:Landroidx/room/a;

    .line 112
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroidx/room/m;->e:Landroidx/i/a/c;

    invoke-interface {v0, p1}, Landroidx/i/a/c;->a(Z)V

    .line 82
    return-void
.end method

.method public declared-synchronized b()Landroidx/i/a/b;
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/m;->g:Z

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Landroidx/room/m;->c()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/m;->g:Z

    .line 90
    :cond_0
    iget-object v0, p0, Landroidx/room/m;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/room/m;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->close()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/m;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
