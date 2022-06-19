.class public Landroidx/media2/common/FileMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/FileMediaItem$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/ParcelFileDescriptor;

.field public final b:J

.field public final c:J

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Landroidx/media2/common/FileMediaItem$a;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$a;)V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/FileMediaItem;->g:Ljava/lang/Object;

    .line 66
    iget-object v0, p1, Landroidx/media2/common/FileMediaItem$a;->a:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroidx/media2/common/FileMediaItem;->a:Landroid/os/ParcelFileDescriptor;

    .line 67
    iget-wide v0, p1, Landroidx/media2/common/FileMediaItem$a;->b:J

    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->b:J

    .line 68
    iget-wide v0, p1, Landroidx/media2/common/FileMediaItem$a;->c:J

    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 104
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    .line 106
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-void

    .line 109
    :cond_0
    iget v1, p0, Landroidx/media2/common/FileMediaItem;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/common/FileMediaItem;->h:I

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 6

    .line 120
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "FileMediaItem"

    const-string v2, "ParcelFileDescriptorClient is already closed."

    .line 122
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    iget v1, p0, Landroidx/media2/common/FileMediaItem;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media2/common/FileMediaItem;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v1, :cond_2

    .line 127
    :try_start_1
    iget-object v1, p0, Landroidx/media2/common/FileMediaItem;->a:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
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

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to close the ParcelFileDescriptor "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/media2/common/FileMediaItem;->a:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :goto_1
    :try_start_4
    iput-boolean v2, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    .line 134
    throw v1

    .line 136
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

.method public final c()Z
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/media2/common/FileMediaItem;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/common/FileMediaItem;->i:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
