.class public Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/services/s3/OnFileDelete;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:J

.field private f:Lcom/amazonaws/services/s3/UploadObjectObserver;

.field private g:I

.field private h:J

.field private i:Ljava/io/FileOutputStream;

.field private j:Z

.field private k:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/32 v0, 0x500000

    .line 44
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:J

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:J

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a:Ljava/io/File;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMdd-hhmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/32 v0, 0x500000

    .line 44
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:J

    const-wide v0, 0x7fffffffffffffffL

    .line 45
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:J

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a:Ljava/io/File;

    .line 90
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b:Ljava/lang/String;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please specify a non-empty name prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must be a writable directory"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(I)Ljava/io/File;
    .locals 4

    .line 281
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b()Ljava/io/FileOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:Z

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->d:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:Lcom/amazonaws/services/s3/UploadObjectObserver;

    new-instance v2, Lcom/amazonaws/services/s3/internal/PartCreationEvent;

    iget v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    .line 184
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    invoke-direct {v2, v3, v4, v1, p0}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;-><init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V

    .line 186
    :cond_1
    iput v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    .line 187
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    .line 188
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c()V

    .line 189
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 191
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Ljava/io/FileOutputStream;

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Ljava/io/FileOutputStream;

    return-object v0

    .line 177
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->e:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Lcom/amazonaws/AbortedException;

    invoke-direct {v1, v0}, Lcom/amazonaws/AbortedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->k:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->j:Z

    .line 236
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 238
    iget v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ignoring failure to delete empty file "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->f:Lcom/amazonaws/services/s3/UploadObjectObserver;

    new-instance v2, Lcom/amazonaws/services/s3/internal/PartCreationEvent;

    iget v3, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    .line 247
    invoke-direct {p0, v3}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->a(I)Ljava/io/File;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->c:I

    invoke-direct {v2, v3, v4, v0, p0}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;-><init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V

    .line 246
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->i:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 135
    iget p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    .line 136
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 150
    iget v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    .line 151
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 165
    iget p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->g:I

    .line 166
    iget-wide p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/internal/MultiFileOutputStream;->h:J

    return-void
.end method
