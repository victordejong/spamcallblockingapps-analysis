.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final a:[B

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:[B

    .line 40
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static a([B[[BI)Ljava/lang/String;
    .locals 12

    .prologue
    .line 195
    const/4 v5, 0x0

    .line 196
    array-length v4, p0

    .line 197
    const/4 v6, 0x0

    .line 198
    :goto_0
    if-ge v5, v4, :cond_c

    .line 199
    add-int v0, v5, v4

    div-int/lit8 v0, v0, 0x2

    .line 202
    :goto_1
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 205
    :cond_0
    add-int/lit8 v9, v0, 0x1

    .line 208
    const/4 v0, 0x1

    .line 209
    :goto_2
    add-int v1, v9, v0

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 212
    :cond_1
    add-int v1, v9, v0

    sub-int v10, v1, v9

    .line 218
    const/4 v8, 0x0

    .line 219
    const/4 v7, 0x0

    .line 221
    const/4 v2, 0x0

    move v3, p2

    .line 224
    :goto_3
    if-eqz v2, :cond_2

    .line 225
    const/16 v1, 0x2e

    .line 226
    const/4 v2, 0x0

    .line 231
    :goto_4
    add-int v11, v9, v7

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    .line 233
    sub-int v11, v1, v11

    .line 234
    if-eqz v11, :cond_3

    move v2, v7

    move v1, v8

    .line 253
    :goto_5
    if-gez v11, :cond_7

    .line 254
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    :goto_6
    move v4, v0

    move v5, v1

    .line 275
    goto :goto_0

    .line 228
    :cond_2
    aget-object v1, p1, v3

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    goto :goto_4

    .line 236
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 237
    add-int/lit8 v1, v8, 0x1

    .line 238
    if-ne v7, v10, :cond_4

    move v2, v7

    goto :goto_5

    .line 240
    :cond_4
    aget-object v8, p1, v3

    array-length v8, v8

    if-ne v8, v1, :cond_6

    .line 243
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_5

    move v2, v7

    .line 244
    goto :goto_5

    .line 246
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 247
    const/4 v1, -0x1

    .line 248
    const/4 v2, 0x1

    :cond_6
    move v8, v1

    .line 251
    goto :goto_3

    .line 255
    :cond_7
    if-lez v11, :cond_8

    .line 256
    add-int/2addr v0, v9

    add-int/lit8 v1, v0, 0x1

    move v0, v4

    goto :goto_6

    .line 259
    :cond_8
    sub-int v7, v10, v2

    .line 260
    aget-object v2, p1, v3

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 261
    add-int/lit8 v1, v3, 0x1

    :goto_7
    array-length v3, p1

    if-ge v1, v3, :cond_9

    .line 262
    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 265
    :cond_9
    if-ge v2, v7, :cond_a

    .line 266
    add-int/lit8 v0, v9, -0x1

    move v1, v5

    goto :goto_6

    .line 267
    :cond_a
    if-le v2, v7, :cond_b

    .line 268
    add-int/2addr v0, v9

    add-int/lit8 v1, v0, 0x1

    move v0, v4

    goto :goto_6

    .line 271
    :cond_b
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/c;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v9, v10, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 276
    :goto_8
    return-object v0

    :cond_c
    move-object v0, v6

    goto :goto_8
.end method

.method public static a()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V

    .line 118
    :goto_0
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 123
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    array-length v0, p1

    new-array v6, v0, [[B

    move v0, v1

    .line 127
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 128
    aget-object v2, p1, v0

    sget-object v4, Lokhttp3/internal/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v6, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 134
    :goto_2
    array-length v2, v6

    if-ge v0, v2, :cond_d

    .line 135
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    invoke-static {v2, v6, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_5

    .line 148
    :goto_3
    array-length v0, v6

    if-le v0, v5, :cond_c

    .line 149
    invoke-virtual {v6}, [[B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v4, v1

    .line 150
    :goto_4
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_c

    .line 151
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:[B

    aput-object v5, v0, v4

    .line 152
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    invoke-static {v5, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_6

    move-object v4, v5

    .line 162
    :goto_5
    if-eqz v4, :cond_3

    .line 163
    :goto_6
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 164
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:[B

    invoke-static {v0, v6, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_7

    move-object v3, v0

    .line 173
    :cond_3
    if-eqz v3, :cond_8

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_4
    :goto_7
    return-object v0

    .line 134
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 163
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 177
    :cond_8
    if-nez v2, :cond_9

    if-nez v4, :cond_9

    .line 178
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[Ljava/lang/String;

    goto :goto_7

    .line 181
    :cond_9
    if-eqz v2, :cond_a

    .line 182
    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_8
    if-eqz v4, :cond_b

    .line 186
    const-string/jumbo v0, "\\."

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_9
    array-length v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_4

    move-object v0, v1

    .line 190
    goto :goto_7

    .line 183
    :cond_a
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:[Ljava/lang/String;

    goto :goto_8

    .line 187
    :cond_b
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:[Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object v4, v3

    goto :goto_5

    :cond_d
    move-object v2, v3

    goto :goto_3
.end method

.method private b()V
    .locals 5

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    .line 289
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const/4 v0, 0x1

    move v1, v0

    .line 296
    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    :try_start_1
    invoke-static {}, Lokhttp3/internal/e/f;->c()Lokhttp3/internal/e/f;

    move-result-object v2

    const/4 v3, 0x5

    const-string/jumbo v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/e/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 309
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string/jumbo v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 310
    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v1, La/j;

    invoke-static {v0}, La/l;->a(Ljava/io/InputStream;)La/s;

    move-result-object v0

    invoke-direct {v1, v0}, La/j;-><init>(La/s;)V

    invoke-static {v1}, La/l;->a(La/s;)La/e;

    move-result-object v1

    .line 314
    :try_start_0
    invoke-interface {v1}, La/e;->i()I

    move-result v0

    .line 315
    new-array v0, v0, [B

    .line 316
    invoke-interface {v1, v0}, La/e;->a([B)V

    .line 318
    invoke-interface {v1}, La/e;->i()I

    move-result v2

    .line 319
    new-array v2, v2, [B

    .line 320
    invoke-interface {v1, v2}, La/e;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v1}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[B

    .line 327
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:[B

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    throw v0

    .line 328
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 78
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 90
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    .line 92
    array-length v0, v0

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 98
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 101
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_2
    array-length v0, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
