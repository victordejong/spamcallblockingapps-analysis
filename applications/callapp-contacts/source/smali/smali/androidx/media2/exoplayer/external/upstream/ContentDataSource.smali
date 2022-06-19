.class public final Landroidx/media2/exoplayer/external/upstream/ContentDataSource;
.super Landroidx/media2/exoplayer/external/upstream/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private b:Landroid/net/Uri;

.field private c:Landroid/content/res/AssetFileDescriptor;

.field private d:Ljava/io/FileInputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/d;-><init>(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 127
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 128
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    .line 134
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 136
    :cond_3
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 140
    :cond_4
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 141
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    .line 143
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->a(I)V

    return p1

    :catch_0
    move-exception p1

    .line 130
    new-instance p2, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    .line 74
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->b:Landroid/net/Uri;

    .line 76
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d()V

    .line 77
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 78
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_4

    .line 82
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 83
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 85
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 86
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 87
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    .line 92
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 93
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    sub-long v6, v1, v3

    :goto_0
    iput-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    goto :goto_1

    :cond_2
    sub-long/2addr v1, v4

    .line 103
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    .line 111
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->b(Landroidx/media2/exoplayer/external/upstream/h;)V

    .line 113
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e:J

    return-wide v0

    .line 90
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 80
    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not open file descriptor for: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 107
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :cond_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 166
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_2

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 170
    :try_start_2
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_3

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e()V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 162
    :try_start_3
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 166
    :try_start_4
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 167
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 172
    :cond_4
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_5

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e()V

    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 170
    :try_start_5
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    :goto_2
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 173
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_6

    .line 174
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->f:Z

    .line 175
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ContentDataSource;->e()V

    :cond_6
    throw v2
.end method
