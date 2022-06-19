.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Lcom/google/android/exoplayer2/upstream/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
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

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/d;-><init>(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

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

    .line 130
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    .line 137
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 139
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 143
    :cond_4
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 144
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    .line 146
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->a(I)V

    return p1

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    .line 67
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Landroid/net/Uri;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d()V

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->a:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_6

    .line 75
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 76
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 78
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 79
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 80
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    .line 85
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 86
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v3, v1, v6

    if-nez v3, :cond_3

    .line 92
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-nez v3, :cond_1

    .line 95
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    cmp-long v0, v1, v8

    if-ltz v0, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    sub-long/2addr v1, v4

    .line 103
    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v1, v8

    if-ltz v0, :cond_4

    :goto_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e:J

    return-wide v0

    .line 105
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 83
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 73
    :cond_6
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v1, "Could not open file descriptor for: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 169
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_2

    .line 177
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 173
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_3

    .line 177
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e()V

    .line 180
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 165
    :try_start_3
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->d:Ljava/io/FileInputStream;

    .line 169
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 170
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_5

    .line 177
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e()V

    .line 181
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 173
    :try_start_5
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 175
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->c:Landroid/content/res/AssetFileDescriptor;

    .line 176
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    if-eqz v0, :cond_6

    .line 177
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->f:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->e()V

    .line 180
    :cond_6
    throw v2
.end method
