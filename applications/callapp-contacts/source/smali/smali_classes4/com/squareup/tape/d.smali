.class public Lcom/squareup/tape/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tape/d$c;,
        Lcom/squareup/tape/d$a;,
        Lcom/squareup/tape/d$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:[B


# instance fields
.field final a:Ljava/io/RandomAccessFile;

.field b:I

.field private e:I

.field private f:Lcom/squareup/tape/d$a;

.field private g:Lcom/squareup/tape/d$a;

.field private final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/squareup/tape/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/tape/d;->c:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 61
    sput-object v0, Lcom/squareup/tape/d;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 108
    iput-object v1, p0, Lcom/squareup/tape/d;->h:[B

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1198
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    invoke-static {v1}, Lcom/squareup/tape/d;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v2

    const-wide/16 v3, 0x1000

    .line 1201
    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v3, 0x0

    .line 1202
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v0, [B

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v4, 0x1000

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    .line 1204
    invoke-static {v0, v3}, Lcom/squareup/tape/d;->a([B[I)V

    .line 1205
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1211
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1207
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    .line 116
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/squareup/tape/d;->a(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    .line 117
    invoke-direct {p0}, Lcom/squareup/tape/d;->d()V

    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 108
    iput-object v0, p0, Lcom/squareup/tape/d;->h:[B

    .line 122
    iput-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    .line 123
    invoke-direct {p0}, Lcom/squareup/tape/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/squareup/tape/d;I)I
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/tape/d;->b(I)I

    move-result p0

    return p0
.end method

.method private a(I)Lcom/squareup/tape/d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 189
    sget-object p1, Lcom/squareup/tape/d$a;->a:Lcom/squareup/tape/d$a;

    return-object p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/squareup/tape/d;->b(I[BII)V

    .line 191
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    invoke-static {v0, v2}, Lcom/squareup/tape/d;->b([BI)I

    move-result v0

    .line 192
    new-instance v1, Lcom/squareup/tape/d$a;

    invoke-direct {v1, p1, v0}, Lcom/squareup/tape/d$a;-><init>(II)V

    return-object v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/squareup/tape/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 251
    sget-object v0, Lcom/squareup/tape/d;->d:[B

    array-length v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/squareup/tape/d;->a(I[BII)V

    sub-int/2addr p2, v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-static {v0, v1}, Lcom/squareup/tape/d;->a([B[I)V

    .line 183
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/squareup/tape/d;->h:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private a(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1}, Lcom/squareup/tape/d;->b(I)I

    move-result p1

    add-int p3, p1, p4

    .line 235
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_0

    .line 236
    iget-object p3, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {p3, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 237
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, v1, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    sub-int/2addr v0, p1

    .line 242
    iget-object p3, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {p3, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 243
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 244
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 245
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    add-int/lit8 p3, v0, 0x0

    sub-int/2addr p4, v0

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private declared-synchronized a(Lcom/squareup/tape/d$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    const/4 v1, 0x0

    .line 432
    :goto_0
    iget v2, p0, Lcom/squareup/tape/d;->e:I

    if-ge v1, v2, :cond_0

    .line 433
    invoke-direct {p0, v0}, Lcom/squareup/tape/d;->a(I)Lcom/squareup/tape/d$a;

    move-result-object v0

    .line 434
    new-instance v2, Lcom/squareup/tape/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/squareup/tape/d$b;-><init>(Lcom/squareup/tape/d;Lcom/squareup/tape/d$a;Lcom/squareup/tape/d$1;)V

    iget v2, v0, Lcom/squareup/tape/d$a;->c:I

    invoke-interface {p1, v2}, Lcom/squareup/tape/d$c;->a(I)V

    .line 435
    iget v2, v0, Lcom/squareup/tape/d$a;->b:I

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lcom/squareup/tape/d$a;->c:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/squareup/tape/d;->b(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/squareup/tape/d;I[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/tape/d;->b(I[BII)V

    return-void
.end method

.method private static a([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 131
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 132
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 133
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 134
    aput-byte p2, p0, p1

    return-void
.end method

.method private static varargs a([B[I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 143
    aget v3, p1, v0

    .line 144
    invoke-static {p0, v1, v3}, Lcom/squareup/tape/d;->a([BII)V

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 1

    .line 221
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    return p1
.end method

.method private static b([BI)I
    .locals 2

    .line 151
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 445
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method private b(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Lcom/squareup/tape/d;->b(I)I

    move-result p1

    add-int v0, p1, p4

    .line 267
    iget v1, p0, Lcom/squareup/tape/d;->b:I

    if-gt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 269
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void

    :cond_0
    sub-int/2addr v1, p1

    .line 274
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 275
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 276
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 277
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method private c(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x4

    .line 1346
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    invoke-direct {p0}, Lcom/squareup/tape/d;->usedBytes()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    .line 366
    :cond_0
    iget v1, p0, Lcom/squareup/tape/d;->b:I

    :cond_1
    add-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, p1, :cond_1

    .line 375
    invoke-direct {p0, v1}, Lcom/squareup/tape/d;->d(I)V

    .line 378
    iget-object p1, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget p1, p1, Lcom/squareup/tape/d$a;->b:I

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->c:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/squareup/tape/d;->b(I)I

    move-result p1

    .line 381
    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    const/16 v2, 0x10

    if-gt p1, v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 383
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    int-to-long v3, v0

    invoke-virtual {v8, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p1, v2

    const-wide/16 v4, 0x10

    int-to-long v9, p1

    move-object v3, v8

    move-wide v6, v9

    .line 385
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-nez v0, :cond_2

    .line 388
    invoke-direct {p0, v2, p1}, Lcom/squareup/tape/d;->a(II)V

    goto :goto_0

    .line 386
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 392
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget p1, p1, Lcom/squareup/tape/d$a;->b:I

    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    if-ge p1, v0, :cond_4

    .line 393
    iget p1, p0, Lcom/squareup/tape/d;->b:I

    iget-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    .line 394
    iget v0, p0, Lcom/squareup/tape/d;->e:I

    iget-object v2, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->b:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/squareup/tape/d;->a(IIII)V

    .line 395
    new-instance v0, Lcom/squareup/tape/d$a;

    iget-object v2, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->c:I

    invoke-direct {v0, p1, v2}, Lcom/squareup/tape/d$a;-><init>(II)V

    iput-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    goto :goto_1

    .line 397
    :cond_4
    iget p1, p0, Lcom/squareup/tape/d;->e:I

    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    iget-object v2, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->b:I

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/squareup/tape/d;->a(IIII)V

    .line 400
    :goto_1
    iput v1, p0, Lcom/squareup/tape/d;->b:I

    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/squareup/tape/d;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 161
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/tape/d;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/squareup/tape/d;->b:I

    int-to-long v0, v0

    .line 162
    iget-object v2, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 164
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/squareup/tape/d;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/squareup/tape/d;->e:I

    .line 168
    iget-object v0, p0, Lcom/squareup/tape/d;->h:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/squareup/tape/d;->b([BI)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/squareup/tape/d;->h:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/squareup/tape/d;->b([BI)I

    move-result v1

    .line 170
    invoke-direct {p0, v0}, Lcom/squareup/tape/d;->a(I)Lcom/squareup/tape/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    .line 171
    invoke-direct {p0, v1}, Lcom/squareup/tape/d;->a(I)Lcom/squareup/tape/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is corrupt; length stored in header is 0."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File is truncated. Expected length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/tape/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 407
    iget-object p1, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    iget v0, p0, Lcom/squareup/tape/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 517
    iget-object v0, p0, Lcom/squareup/tape/d;->a:Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/squareup/tape/d;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v0, 0x0

    const/16 v1, 0x1000

    .line 518
    invoke-direct {p0, v1, v0, v0, v0}, Lcom/squareup/tape/d;->a(IIII)V

    .line 519
    iput v0, p0, Lcom/squareup/tape/d;->e:I

    .line 520
    sget-object v0, Lcom/squareup/tape/d$a;->a:Lcom/squareup/tape/d$a;

    iput-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    .line 521
    sget-object v0, Lcom/squareup/tape/d$a;->a:Lcom/squareup/tape/d$a;

    iput-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    .line 522
    iget v0, p0, Lcom/squareup/tape/d;->b:I

    if-le v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/squareup/tape/d;->d(I)V

    .line 523
    :cond_0
    iput v1, p0, Lcom/squareup/tape/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private usedBytes()I
    .locals 3

    .line 329
    iget v0, p0, Lcom/squareup/tape/d;->e:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    return v1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    iget-object v2, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->b:I

    if-lt v0, v2, :cond_1

    .line 333
    iget-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    iget-object v2, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->b:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->c:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v1, v1, Lcom/squareup/tape/d$a;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/squareup/tape/d;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v1, v1, Lcom/squareup/tape/d$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final declared-synchronized a([BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "buffer"

    .line 300
    invoke-static {p1, v0}, Lcom/squareup/tape/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int/lit8 v0, p2, 0x0

    if-ltz v0, :cond_3

    .line 301
    array-length v0, p1

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    .line 305
    invoke-direct {p0, p2}, Lcom/squareup/tape/d;->c(I)V

    .line 308
    invoke-direct {p0}, Lcom/squareup/tape/d;->e()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/16 v3, 0x10

    goto :goto_0

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v3, v3, Lcom/squareup/tape/d$a;->b:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v4, v4, Lcom/squareup/tape/d$a;->c:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/squareup/tape/d;->b(I)I

    move-result v3

    .line 310
    :goto_0
    new-instance v4, Lcom/squareup/tape/d$a;

    invoke-direct {v4, v3, p2}, Lcom/squareup/tape/d$a;-><init>(II)V

    .line 313
    iget-object v3, p0, Lcom/squareup/tape/d;->h:[B

    invoke-static {v3, v1, p2}, Lcom/squareup/tape/d;->a([BII)V

    .line 314
    iget v3, v4, Lcom/squareup/tape/d$a;->b:I

    iget-object v5, p0, Lcom/squareup/tape/d;->h:[B

    invoke-direct {p0, v3, v5, v1, v2}, Lcom/squareup/tape/d;->a(I[BII)V

    .line 317
    iget v3, v4, Lcom/squareup/tape/d$a;->b:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3, p1, v1, p2}, Lcom/squareup/tape/d;->a(I[BII)V

    if-eqz v0, :cond_1

    .line 320
    iget p1, v4, Lcom/squareup/tape/d$a;->b:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget p1, p1, Lcom/squareup/tape/d$a;->b:I

    .line 321
    :goto_1
    iget p2, p0, Lcom/squareup/tape/d;->b:I

    iget v1, p0, Lcom/squareup/tape/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v4, Lcom/squareup/tape/d$a;->b:I

    invoke-direct {p0, p2, v1, p1, v2}, Lcom/squareup/tape/d;->a(IIII)V

    .line 322
    iput-object v4, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    .line 323
    iget p1, p0, Lcom/squareup/tape/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/tape/d;->e:I

    if-eqz v0, :cond_2

    .line 324
    iput-object v4, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_2
    monitor-exit p0

    return-void

    .line 302
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/tape/d;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 413
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->c:I

    .line 414
    new-array v1, v0, [B

    .line 415
    iget-object v2, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v2, v2, Lcom/squareup/tape/d$a;->b:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/squareup/tape/d;->b(I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 487
    :try_start_0
    iget v0, p0, Lcom/squareup/tape/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 496
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/tape/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    iget v0, p0, Lcom/squareup/tape/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/squareup/tape/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 501
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v0, v0, Lcom/squareup/tape/d$a;->c:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    .line 503
    iget-object v3, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v3, v3, Lcom/squareup/tape/d$a;->b:I

    invoke-direct {p0, v3, v0}, Lcom/squareup/tape/d;->a(II)V

    .line 505
    iget-object v3, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    iget v3, v3, Lcom/squareup/tape/d$a;->b:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/squareup/tape/d;->b(I)I

    move-result v0

    .line 506
    iget-object v3, p0, Lcom/squareup/tape/d;->h:[B

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/squareup/tape/d;->b(I[BII)V

    .line 507
    iget-object v2, p0, Lcom/squareup/tape/d;->h:[B

    invoke-static {v2, v4}, Lcom/squareup/tape/d;->b([BI)I

    move-result v2

    .line 508
    iget v3, p0, Lcom/squareup/tape/d;->b:I

    iget v4, p0, Lcom/squareup/tape/d;->e:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    iget v5, v5, Lcom/squareup/tape/d$a;->b:I

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/squareup/tape/d;->a(IIII)V

    .line 509
    iget v3, p0, Lcom/squareup/tape/d;->e:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/squareup/tape/d;->e:I

    .line 510
    new-instance v1, Lcom/squareup/tape/d$a;

    invoke-direct {v1, v0, v2}, Lcom/squareup/tape/d$a;-><init>(II)V

    iput-object v1, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 496
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/tape/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/tape/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/tape/d;->f:Lcom/squareup/tape/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/tape/d;->g:Lcom/squareup/tape/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :try_start_0
    new-instance v1, Lcom/squareup/tape/d$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/tape/d$1;-><init>(Lcom/squareup/tape/d;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v1}, Lcom/squareup/tape/d;->a(Lcom/squareup/tape/d$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 553
    sget-object v2, Lcom/squareup/tape/d;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "]]"

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
