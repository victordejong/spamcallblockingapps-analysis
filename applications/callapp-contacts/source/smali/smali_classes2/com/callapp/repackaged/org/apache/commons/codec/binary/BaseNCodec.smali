.class public abstract Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# instance fields
.field private final a:I

.field protected final b:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final c:B

.field protected final d:I

.field private final e:I

.field private final f:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 6

    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    .line 159
    iput-byte v0, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->b:B

    .line 206
    iput p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a:I

    .line 207
    iput p2, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->e:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 209
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->d:I

    .line 210
    iput p4, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->f:I

    .line 212
    iput-byte p5, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->c:B

    return-void
.end method

.method static a([BILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 3

    .line 292
    iget-object v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2232
    iget-object v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    iget v2, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 294
    iget-object v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    iget v2, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    invoke-static {v0, v2, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget p0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    add-int/2addr p0, p1

    iput p0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    .line 296
    iget p0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    iget v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    if-lt p0, v0, :cond_1

    const/4 p0, 0x0

    .line 297
    iput-object p0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    :cond_1
    return p1

    .line 301
    :cond_2
    iget-boolean p0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->f:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method abstract a([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method protected abstract a(B)Z
.end method

.method protected final a(ILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 3

    .line 269
    iget-object v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    array-length v0, v0

    iget v1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    return-object p1

    .line 1249
    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1250
    invoke-virtual {p0}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    .line 1251
    iput v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->d:I

    .line 1252
    iput v0, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->e:I

    goto :goto_1

    .line 1254
    :cond_2
    iget-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    .line 1255
    iget-object v1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    iget-object v2, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    array-length v2, v2

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    iput-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    .line 1258
    :goto_1
    iget-object p1, p2, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;->c:[B

    return-object p1
.end method

.method abstract b([BIILcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method protected final b([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 521
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 522
    iget-byte v4, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->c:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final c([B)J
    .locals 6

    .line 540
    array-length p1, p1

    iget v0, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->e:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 541
    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->d:I

    if-lez p1, :cond_0

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 543
    div-long/2addr v2, v4

    iget p1, p0, Lcom/callapp/repackaged/org/apache/commons/codec/binary/BaseNCodec;->f:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method
