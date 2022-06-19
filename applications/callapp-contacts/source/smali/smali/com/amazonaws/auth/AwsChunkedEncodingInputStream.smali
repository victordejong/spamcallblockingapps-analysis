.class public final Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final n:Lcom/amazonaws/logging/Log;


# instance fields
.field private b:Ljava/io/InputStream;

.field private final c:I

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Lcom/amazonaws/auth/AWS4Signer;

.field private j:Lcom/amazonaws/auth/ChunkContentIterator;

.field private k:Lcom/amazonaws/auth/DecodedStreamBuffer;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 45
    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a:[B

    .line 69
    const-class v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:Z

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Z

    .line 117
    instance-of v1, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    if-eqz v1, :cond_0

    .line 120
    check-cast p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    .line 121
    iget v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 122
    iget-object v0, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    .line 123
    iget-object p1, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    goto :goto_0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    .line 126
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    :goto_0
    const/high16 p1, 0x20000

    if-lt p2, p1, :cond_1

    .line 133
    iput p2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->c:I

    .line 134
    iput-object p3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->d:[B

    .line 135
    iput-object p4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->e:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->f:Ljava/lang/String;

    .line 137
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->g:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->h:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->i:Lcom/amazonaws/auth/AWS4Signer;

    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max buffer size should not be less than chunk size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 8

    const/high16 v2, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    return-void
.end method

.method public static a(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x20000

    .line 285
    div-long v4, p0, v2

    .line 286
    rem-long/2addr p0, v2

    .line 287
    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide v2

    mul-long v4, v4, v2

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 288
    invoke-static {p0, p1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    move-wide p0, v0

    :goto_0
    add-long/2addr v4, p0

    .line 289
    invoke-static {v0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b(J)J

    move-result-wide p0

    add-long/2addr v4, p0

    return-wide v4

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Nonnegative content length expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a([B)[B
    .locals 6

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AWS4-HMAC-SHA256-PAYLOAD\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    .line 357
    invoke-static {v3}, Lcom/amazonaws/auth/AWS4Signer;->c(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {p1}, Lcom/amazonaws/auth/AWS4Signer;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->d:[B

    sget-object v3, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-static {v1, v2, v3}, Lcom/amazonaws/auth/AWS4Signer;->a(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 361
    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->h:Ljava/lang/String;

    .line 362
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";chunk-signature="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 367
    sget-object v2, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 368
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 369
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    array-length v3, v0

    array-length v5, p1

    invoke-static {p1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    array-length v0, v0

    array-length p1, p1

    add-int/2addr v0, p1

    array-length p1, v1

    invoke-static {v1, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 376
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to sign the chunked data. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(J)J
    .locals 2

    .line 293
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/16 p0, 0x2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private c()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 312
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    .line 2068
    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    if-eq v7, v6, :cond_0

    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    iget v5, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    if-ge v7, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 314
    iget-object v5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    .line 2072
    iget-object v6, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    iget v7, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v5, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    aget-byte v5, v6, v7

    .line 314
    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_1
    sub-int v5, v0, v3

    .line 319
    iget-object v7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v7, v1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v6, :cond_5

    .line 321
    iget-object v7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v7, :cond_4

    .line 3052
    iput v6, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 3053
    iget v6, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/2addr v6, v5

    iget v8, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    if-le v6, v8, :cond_3

    .line 3054
    sget-object v6, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v6}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3055
    sget-object v6, Lcom/amazonaws/auth/DecodedStreamBuffer;->a:Lcom/amazonaws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Buffer size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has been exceeded and the input stream will not be repeatable. Freeing buffer memory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 3059
    :cond_2
    iput-boolean v4, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Z

    goto :goto_2

    .line 3062
    :cond_3
    iget-object v4, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->b:[B

    iget v6, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    invoke-static {v1, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3063
    iget v4, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    add-int/2addr v4, v5

    iput v4, v7, Lcom/amazonaws/auth/DecodedStreamBuffer;->d:I

    :cond_4
    :goto_2
    add-int/2addr v3, v5

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 331
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a:[B

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a([B)[B

    move-result-object v0

    .line 332
    new-instance v1, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v1, v0}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    return v4

    :cond_6
    if-ge v3, v0, :cond_7

    .line 336
    new-array v0, v3, [B

    .line 337
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 340
    :cond_7
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->a([B)[B

    move-result-object v0

    .line 341
    new-instance v1, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v1, v0}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    return v2
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b()V

    .line 221
    iget-boolean p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:Z

    if-eqz p1, :cond_3

    .line 225
    iget-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it\'s mark-supported)."

    .line 227
    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported)."

    .line 233
    invoke-interface {p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 236
    :cond_2
    new-instance p1, Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->c:I

    invoke-direct {p1, v0}, Lcom/amazonaws/auth/DecodedStreamBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chunk-encoded stream only supports mark() at the start of the stream."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 147
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "One byte read from the stream."

    .line 148
    invoke-interface {v0, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 150
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    :cond_1
    return v0
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b()V

    .line 161
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    .line 162
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/amazonaws/auth/ChunkContentIterator;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Z

    if-eqz v1, :cond_2

    return v2

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Z

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    if-nez p3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 1034
    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/auth/ChunkContentIterator;->a()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1036
    :cond_5
    iget-object v2, v1, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    array-length v2, v2

    iget v3, v1, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    sub-int/2addr v2, v3

    .line 1037
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1038
    iget-object p3, v1, Lcom/amazonaws/auth/ChunkContentIterator;->a:[B

    iget v3, v1, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    invoke-static {p3, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1039
    iget p1, v1, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    add-int/2addr p1, v2

    iput p1, v1, Lcom/amazonaws/auth/ChunkContentIterator;->b:I

    :goto_0
    if-lez v2, :cond_6

    .line 179
    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:Z

    .line 180
    sget-object p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " byte read from the stream."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_6
    return v2

    .line 163
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-static {}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 249
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->h:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 253
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported)."

    .line 254
    invoke-interface {v1, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 259
    :cond_1
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->n:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream)."

    .line 260
    invoke-interface {v1, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->k:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v1, :cond_4

    .line 1076
    iget-boolean v3, v1, Lcom/amazonaws/auth/DecodedStreamBuffer;->f:Z

    if-nez v3, :cond_3

    .line 1081
    iput v2, v1, Lcom/amazonaws/auth/DecodedStreamBuffer;->e:I

    .line 269
    :goto_0
    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->j:Lcom/amazonaws/auth/ChunkContentIterator;

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->l:Z

    .line 271
    iput-boolean v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 1077
    :cond_3
    :try_start_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The input stream is not repeatable since the buffer size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/amazonaws/auth/DecodedStreamBuffer;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has been exceeded."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset the stream because the mark is not set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v2, 0x40000

    .line 193
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 194
    new-array v2, v3, [B

    move-wide v4, p1

    :goto_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    const/4 v6, 0x0

    .line 196
    invoke-virtual {p0, v2, v6, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v4

    return-wide p1
.end method
