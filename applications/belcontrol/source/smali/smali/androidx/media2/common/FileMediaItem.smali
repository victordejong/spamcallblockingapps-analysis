.class public Landroidx/media2/common/FileMediaItem;
.super Landroidx/media2/common/MediaItem;
.source ""


# instance fields
.field public e:Landroid/os/ParcelFileDescriptor;

.field public f:J

.field public g:J

.field public h:Ljava/lang/Integer;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->f:J

    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->g:J

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 6

    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->e:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iput-boolean v2, p0, Landroidx/media2/common/FileMediaItem;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "FileMediaItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close the ParcelFileDescriptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/media2/common/FileMediaItem;->e:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    iput-boolean v2, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    throw v1

    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Landroidx/media2/common/FileMediaItem;->g:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Landroidx/media2/common/FileMediaItem;->f:J

    return-wide v0
.end method

.method public m()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->e:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public n()V
    .locals 3

    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->h:Ljava/lang/Integer;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
