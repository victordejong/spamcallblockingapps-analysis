.class final Lcom/mopub/nativeads/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field final a:[I

.field b:I

.field private final c:[I

.field private final d:[I

.field private e:I

.field private final f:[I

.field private final g:[Lcom/mopub/nativeads/NativeAd;


# direct methods
.method constructor <init>([I)V
    .locals 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v1, v0, [I

    .line 139
    iput-object v1, p0, Lcom/mopub/nativeads/f;->c:[I

    new-array v2, v0, [I

    .line 140
    iput-object v2, p0, Lcom/mopub/nativeads/f;->d:[I

    const/4 v3, 0x0

    .line 141
    iput v3, p0, Lcom/mopub/nativeads/f;->e:I

    new-array v4, v0, [I

    .line 142
    iput-object v4, p0, Lcom/mopub/nativeads/f;->f:[I

    new-array v4, v0, [I

    .line 143
    iput-object v4, p0, Lcom/mopub/nativeads/f;->a:[I

    new-array v4, v0, [Lcom/mopub/nativeads/NativeAd;

    .line 144
    iput-object v4, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    .line 145
    iput v3, p0, Lcom/mopub/nativeads/f;->b:I

    .line 151
    array-length v4, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/f;->e:I

    .line 152
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v0, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static a([III)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 521
    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method private static b([III)I
    .locals 1

    .line 479
    invoke-static {p0, p1, p2}, Lcom/mopub/nativeads/f;->a([III)I

    move-result p1

    if-gez p1, :cond_0

    not-int p0, p1

    return p0

    .line 487
    :cond_0
    aget p2, p0, p1

    :goto_0
    if-ltz p1, :cond_1

    .line 488
    aget v0, p0, p1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static c([III)I
    .locals 2

    .line 496
    invoke-static {p0, p1, p2}, Lcom/mopub/nativeads/f;->a([III)I

    move-result p2

    if-gez p2, :cond_0

    not-int p0, p2

    return p0

    .line 504
    :cond_0
    aget v0, p0, p2

    :goto_0
    if-ge p2, p1, :cond_1

    .line 505
    aget v1, p0, p2

    if-ne v1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method final a(II)I
    .locals 10

    .line 354
    iget v0, p0, Lcom/mopub/nativeads/f;->b:I

    new-array v1, v0, [I

    .line 355
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 360
    :goto_0
    iget v5, p0, Lcom/mopub/nativeads/f;->b:I

    if-ge v3, v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[I

    aget v6, v5, v3

    .line 362
    iget-object v7, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v8, v7, v3

    if-gt p1, v8, :cond_0

    if-ge v8, p2, :cond_0

    .line 366
    aput v6, v1, v4

    sub-int/2addr v8, v4

    .line 367
    aput v8, v0, v4

    .line 370
    iget-object v5, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 371
    iget-object v5, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    sub-int v9, v3, v4

    .line 376
    aput v6, v5, v9

    sub-int/2addr v8, v4

    .line 377
    aput v8, v7, v9

    .line 378
    iget-object v5, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v5, v3

    aput-object v6, v5, v9

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 390
    :cond_3
    aget p1, v0, v2

    .line 391
    iget-object p2, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v3, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {p2, v3, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result p1

    .line 393
    iget p2, p0, Lcom/mopub/nativeads/f;->e:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_4

    .line 394
    iget-object v3, p0, Lcom/mopub/nativeads/f;->c:[I

    add-int v5, p2, v4

    aget v6, v3, p2

    aput v6, v3, v5

    .line 395
    iget-object v3, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v6, v3, p2

    sub-int/2addr v6, v4

    aput v6, v3, v5

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v4, :cond_5

    .line 400
    iget-object p2, p0, Lcom/mopub/nativeads/f;->c:[I

    add-int v3, p1, v2

    aget v5, v1, v2

    aput v5, p2, v3

    .line 401
    iget-object p2, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v5, v0, v2

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 405
    :cond_5
    iget p1, p0, Lcom/mopub/nativeads/f;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/f;->e:I

    .line 406
    iget p1, p0, Lcom/mopub/nativeads/f;->b:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/f;->b:I

    return v4
.end method

.method final a(ILcom/mopub/nativeads/NativeAd;)V
    .locals 7

    .line 225
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 227
    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/f;->c:[I

    aget v1, v1, v0

    .line 235
    iget-object v3, p0, Lcom/mopub/nativeads/f;->f:[I

    iget v4, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v3, v4, v1}, Lcom/mopub/nativeads/f;->c([III)I

    move-result v3

    .line 237
    iget v4, p0, Lcom/mopub/nativeads/f;->b:I

    if-ge v3, v4, :cond_1

    sub-int/2addr v4, v3

    .line 239
    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[I

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v5, p0, Lcom/mopub/nativeads/f;->a:[I

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v5, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/f;->f:[I

    aput v1, v4, v3

    .line 246
    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:[I

    aput p1, v1, v3

    .line 247
    iget-object p1, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, p1, v3

    .line 248
    iget p1, p0, Lcom/mopub/nativeads/f;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/f;->b:I

    .line 251
    iget p1, p0, Lcom/mopub/nativeads/f;->e:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    .line 252
    iget-object p2, p0, Lcom/mopub/nativeads/f;->d:[I

    add-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget-object p2, p0, Lcom/mopub/nativeads/f;->c:[I

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget p1, p0, Lcom/mopub/nativeads/f;->e:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/f;->e:I

    .line 259
    :goto_0
    iget p1, p0, Lcom/mopub/nativeads/f;->e:I

    if-ge v0, p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget p2, p1, v0

    add-int/2addr p2, v2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v2

    .line 262
    :goto_1
    iget p1, p0, Lcom/mopub/nativeads/f;->b:I

    if-ge v3, p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/mopub/nativeads/f;->a:[I

    aget p2, p1, v3

    add-int/2addr p2, v2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 229
    :cond_4
    :goto_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Attempted to insert an ad at an invalid position"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method final a(I)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->c([III)I

    move-result p1

    .line 201
    iget v0, p0, Lcom/mopub/nativeads/f;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method final c(I)Lcom/mopub/nativeads/NativeAd;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->g:[Lcom/mopub/nativeads/NativeAd;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final d(I)I
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final e(I)I
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/f;->f:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->c([III)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method final f(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 343
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/f;->e(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final g(I)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/mopub/nativeads/f;->c:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 430
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/mopub/nativeads/f;->c:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 432
    iget-object v1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->f:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result p1

    .line 438
    :goto_1
    iget v0, p0, Lcom/mopub/nativeads/f;->b:I

    if-ge p1, v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/mopub/nativeads/f;->f:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 440
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final h(I)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/f;->c:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->c([III)I

    move-result v0

    .line 456
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/f;->e:I

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/mopub/nativeads/f;->c:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 458
    iget-object v1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->f:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->c([III)I

    move-result p1

    .line 464
    :goto_1
    iget v0, p0, Lcom/mopub/nativeads/f;->b:I

    if-ge p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/mopub/nativeads/f;->f:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 466
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
