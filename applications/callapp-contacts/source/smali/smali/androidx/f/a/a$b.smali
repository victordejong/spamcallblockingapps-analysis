.class final Landroidx/f/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:[B


# direct methods
.method constructor <init>(IIJ[B)V
    .locals 0

    .line 3096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3097
    iput p1, p0, Landroidx/f/a/a$b;->a:I

    .line 3098
    iput p2, p0, Landroidx/f/a/a$b;->b:I

    .line 3099
    iput-wide p3, p0, Landroidx/f/a/a$b;->c:J

    .line 3100
    iput-object p5, p0, Landroidx/f/a/a$b;->d:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 3092
    invoke-direct/range {v0 .. v5}, Landroidx/f/a/a$b;-><init>(IIJ[B)V

    return-void
.end method

.method public static a(ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 3114
    invoke-static {v0, p1}, Landroidx/f/a/a$b;->a([ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 3128
    invoke-static {v0, p2}, Landroidx/f/a/a$b;->a([JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/f/a/a$d;Ljava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/f/a/a$d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 3172
    invoke-static {v0, p1}, Landroidx/f/a/a$b;->a([Landroidx/f/a/a$d;Ljava/nio/ByteOrder;)Landroidx/f/a/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroidx/f/a/a$b;
    .locals 3

    .line 3156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroidx/f/a/a;->i:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3157
    new-instance v0, Landroidx/f/a/a$b;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Landroidx/f/a/a$b;-><init>(II[B)V

    return-object v0
.end method

.method private static a([ILjava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 5

    .line 3104
    sget-object v0, Landroidx/f/a/a;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v2, 0x1

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3106
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    .line 3107
    aget v4, p0, p1

    int-to-short v4, v4

    .line 3108
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3110
    :cond_0
    new-instance p0, Landroidx/f/a/a$b;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Landroidx/f/a/a$b;-><init>(II[B)V

    return-object p0
.end method

.method private static a([JLjava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 6

    .line 3118
    sget-object v0, Landroidx/f/a/a;->f:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v2, 0x1

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3120
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    .line 3121
    aget-wide v4, p0, p1

    long-to-int v5, v4

    .line 3122
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3124
    :cond_0
    new-instance p0, Landroidx/f/a/a$b;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Landroidx/f/a/a$b;-><init>(II[B)V

    return-object p0
.end method

.method private static a([Landroidx/f/a/a$d;Ljava/nio/ByteOrder;)Landroidx/f/a/a$b;
    .locals 7

    .line 3161
    sget-object v0, Landroidx/f/a/a;->f:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v2, 0x1

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3163
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    .line 3164
    aget-object v4, p0, p1

    .line 3165
    iget-wide v5, v4, Landroidx/f/a/a$d;->a:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3166
    iget-wide v4, v4, Landroidx/f/a/a$d;->b:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3168
    :cond_0
    new-instance p0, Landroidx/f/a/a$b;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Landroidx/f/a/a$b;-><init>(II[B)V

    return-object p0
.end method


# virtual methods
.method final a(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3213
    :try_start_0
    new-instance v3, Landroidx/f/a/a$a;

    iget-object v4, p0, Landroidx/f/a/a$b;->d:[B

    invoke-direct {v3, v4}, Landroidx/f/a/a$a;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8504
    :try_start_1
    iput-object p1, v3, Landroidx/f/a/a$a;->a:Ljava/nio/ByteOrder;

    .line 3215
    iget p1, p0, Landroidx/f/a/a$b;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3324
    :try_start_2
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto/16 :goto_17

    .line 3309
    :pswitch_0
    :try_start_3
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [D

    .line 3310
    :goto_0
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_0

    .line 3311
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readDouble()D

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3324
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p1

    .line 3302
    :pswitch_1
    :try_start_5
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [D

    .line 3303
    :goto_2
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_1

    .line 3304
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readFloat()F

    move-result v4

    float-to-double v6, v4

    aput-wide v6, p1, v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3324
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object p1

    .line 3293
    :pswitch_2
    :try_start_7
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [Landroidx/f/a/a$d;

    .line 3294
    :goto_4
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_2

    .line 3295
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readInt()I

    move-result v4

    int-to-long v6, v4

    .line 3296
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 3297
    new-instance v4, Landroidx/f/a/a$d;

    invoke-direct {v4, v6, v7, v8, v9}, Landroidx/f/a/a$d;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3324
    :cond_2
    :try_start_8
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object p1

    .line 3286
    :pswitch_3
    :try_start_9
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [I

    .line 3287
    :goto_6
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_3

    .line 3288
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readInt()I

    move-result v4

    aput v4, p1, v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3324
    :cond_3
    :try_start_a
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-object p1

    .line 3279
    :pswitch_4
    :try_start_b
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [I

    .line 3280
    :goto_8
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_4

    .line 3281
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readShort()S

    move-result v4

    aput v4, p1, v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 3324
    :cond_4
    :try_start_c
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_9

    :catch_4
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-object p1

    .line 3270
    :pswitch_5
    :try_start_d
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [Landroidx/f/a/a$d;

    .line 3271
    :goto_a
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_5

    .line 3272
    invoke-virtual {v3}, Landroidx/f/a/a$a;->a()J

    move-result-wide v6

    .line 3273
    invoke-virtual {v3}, Landroidx/f/a/a$a;->a()J

    move-result-wide v8

    .line 3274
    new-instance v4, Landroidx/f/a/a$d;

    invoke-direct {v4, v6, v7, v8, v9}, Landroidx/f/a/a$d;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 3324
    :cond_5
    :try_start_e
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_b

    :catch_5
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return-object p1

    .line 3263
    :pswitch_6
    :try_start_f
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [J

    .line 3264
    :goto_c
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_6

    .line 3265
    invoke-virtual {v3}, Landroidx/f/a/a$a;->a()J

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 3324
    :cond_6
    :try_start_10
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_d

    :catch_6
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-object p1

    .line 3256
    :pswitch_7
    :try_start_11
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    new-array p1, p1, [I

    .line 3257
    :goto_e
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_7

    .line 3258
    invoke-virtual {v3}, Landroidx/f/a/a$a;->readUnsignedShort()I

    move-result v4

    aput v4, p1, v5
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 3324
    :cond_7
    :try_start_12
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_f

    :catch_7
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-object p1

    .line 3227
    :pswitch_8
    :try_start_13
    iget p1, p0, Landroidx/f/a/a$b;->b:I

    sget-object v6, Landroidx/f/a/a;->g:[B

    array-length v6, v6

    if-lt p1, v6, :cond_a

    const/4 p1, 0x0

    .line 3229
    :goto_10
    sget-object v6, Landroidx/f/a/a;->g:[B

    array-length v6, v6

    if-ge p1, v6, :cond_9

    .line 3230
    iget-object v6, p0, Landroidx/f/a/a$b;->d:[B

    aget-byte v6, v6, p1

    sget-object v7, Landroidx/f/a/a;->g:[B

    aget-byte v7, v7, p1

    if-eq v6, v7, :cond_8

    const/4 v4, 0x0

    goto :goto_11

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_9
    :goto_11
    if-eqz v4, :cond_a

    .line 3236
    sget-object p1, Landroidx/f/a/a;->g:[B

    array-length v5, p1

    .line 3240
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3241
    :goto_12
    iget v4, p0, Landroidx/f/a/a$b;->b:I

    if-ge v5, v4, :cond_c

    .line 3242
    iget-object v4, p0, Landroidx/f/a/a$b;->d:[B

    aget-byte v4, v4, v5

    if-eqz v4, :cond_c

    const/16 v6, 0x20

    if-lt v4, v6, :cond_b

    int-to-char v4, v4

    .line 3247
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_b
    const/16 v4, 0x3f

    .line 3249
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 3253
    :cond_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3324
    :try_start_14
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_14

    :catch_8
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-object p1

    .line 3219
    :pswitch_9
    :try_start_15
    iget-object p1, p0, Landroidx/f/a/a$b;->d:[B

    array-length v6, p1

    if-ne v6, v4, :cond_d

    aget-byte v6, p1, v5

    if-ltz v6, :cond_d

    aget-byte p1, p1, v5

    if-gt p1, v4, :cond_d

    .line 3220
    new-instance p1, Ljava/lang/String;

    new-array v4, v4, [C

    iget-object v6, p0, Landroidx/f/a/a$b;->d:[B

    aget-byte v6, v6, v5

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v5

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3324
    :try_start_16
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_15

    :catch_9
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-object p1

    .line 3222
    :cond_d
    :try_start_17
    new-instance p1, Ljava/lang/String;

    iget-object v4, p0, Landroidx/f/a/a$b;->d:[B

    sget-object v5, Landroidx/f/a/a;->i:Ljava/nio/charset/Charset;

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 3324
    :try_start_18
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_16

    :catch_a
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-object p1

    :catch_b
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-object v2

    :catch_c
    move-exception p1

    goto :goto_18

    :catchall_0
    move-exception p1

    goto :goto_1a

    :catch_d
    move-exception p1

    move-object v3, v2

    :goto_18
    :try_start_19
    const-string v4, "IOException occurred during reading a value"

    .line 3319
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v3, :cond_e

    .line 3324
    :try_start_1a
    invoke-virtual {v3}, Landroidx/f/a/a$a;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_19

    :catch_e
    move-exception p1

    .line 3326
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_19
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_1a
    if-eqz v2, :cond_f

    .line 3324
    :try_start_1b
    invoke-virtual {v2}, Landroidx/f/a/a$a;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    goto :goto_1b

    :catch_f
    move-exception v2

    .line 3326
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3329
    :cond_f
    :goto_1b
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/nio/ByteOrder;)I
    .locals 4

    .line 3372
    invoke-virtual {p0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3376
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3377
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3379
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3380
    check-cast p1, [J

    .line 3381
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 3382
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 3384
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3386
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 3387
    check-cast p1, [I

    .line 3388
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 3389
    aget p1, p1, v1

    return p1

    .line 3391
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3393
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3374
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    .line 3397
    invoke-virtual {p0, p1}, Landroidx/f/a/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3401
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3402
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3405
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3406
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 3407
    check-cast p1, [J

    .line 3408
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    .line 3409
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3410
    array-length v0, p1

    if-eq v4, v0, :cond_2

    .line 3411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3414
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3416
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    .line 3417
    check-cast p1, [I

    .line 3418
    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_6

    .line 3419
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3420
    array-length v0, p1

    if-eq v4, v0, :cond_5

    .line 3421
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3424
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3426
    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    .line 3427
    check-cast p1, [D

    .line 3428
    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_9

    .line 3429
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3430
    array-length v0, p1

    if-eq v4, v0, :cond_8

    .line 3431
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3434
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3436
    :cond_a
    instance-of v2, p1, [Landroidx/f/a/a$d;

    if-eqz v2, :cond_d

    .line 3437
    check-cast p1, [Landroidx/f/a/a$d;

    .line 3438
    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v4, v0, :cond_c

    .line 3439
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroidx/f/a/a$d;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 3440
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3441
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroidx/f/a/a$d;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3442
    array-length v0, p1

    if-eq v4, v0, :cond_b

    .line 3443
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3446
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/f/a/a;->e:[Ljava/lang/String;

    iget v2, p0, Landroidx/f/a/a$b;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/f/a/a$b;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
