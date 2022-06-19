.class public Lcom/esotericsoftware/kryo/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/c/l$a;,
        Lcom/esotericsoftware/kryo/c/l$c;,
        Lcom/esotericsoftware/kryo/c/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/c/l$b<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field c:[I

.field d:F

.field e:I

.field protected f:I

.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c/l;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 89
    iput p2, p0, Lcom/esotericsoftware/kryo/c/l;->d:F

    .line 91
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/c/m;->a(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 92
    iput p2, p0, Lcom/esotericsoftware/kryo/c/l;->e:I

    add-int/lit8 p2, p1, -0x1

    .line 93
    iput p2, p0, Lcom/esotericsoftware/kryo/c/l;->g:I

    int-to-long v0, p2

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/c/l;->f:I

    .line 96
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 97
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/l<",
            "+TK;>;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/c/l;->d:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/l;-><init>(IF)V

    .line 103
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/l;->c:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget p1, p1, Lcom/esotericsoftware/kryo/c/l;->a:I

    iput p1, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 248
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    .line 250
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b(I)V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 289
    iget v2, p0, Lcom/esotericsoftware/kryo/c/l;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/l;->e:I

    add-int/lit8 v1, p1, -0x1

    .line 290
    iput v1, p0, Lcom/esotericsoftware/kryo/c/l;->g:I

    int-to-long v1, v1

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/l;->f:I

    .line 293
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 294
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 296
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 297
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 299
    iget p1, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 301
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 302
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/esotericsoftware/kryo/c/l;->c(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->a(Ljava/lang/Object;)I

    move-result v1

    .line 166
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget v2, p0, Lcom/esotericsoftware/kryo/c/l;->g:I

    and-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/esotericsoftware/kryo/c/l;->f:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public final a(I)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l;->d:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/c/m;->a(IF)I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/c/l;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    .line 244
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->b(I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    aput p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 146
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 147
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    aput p2, p1, v0

    .line 148
    iget p1, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/l;->e:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->b(I)V

    :cond_1
    return-void
.end method

.method b(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->a(Ljava/lang/Object;)I

    move-result v1

    .line 132
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 134
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 131
    iget v2, p0, Lcom/esotericsoftware/kryo/c/l;->g:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/l;->b(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    aget p1, p2, p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 320
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/c/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 321
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/c/l;

    .line 322
    iget v1, p1, Lcom/esotericsoftware/kryo/c/l;->a:I

    iget v3, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    if-eq v1, v3, :cond_2

    return v2

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 325
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 326
    aget-object v6, v1, v5

    if-eqz v6, :cond_5

    .line 328
    invoke-virtual {p1, v6, v2}, Lcom/esotericsoftware/kryo/c/l;->b(Ljava/lang/Object;I)I

    move-result v7

    if-nez v7, :cond_4

    .line 1264
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/c/l;->b(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    return v2

    .line 330
    :cond_4
    aget v6, v3, v5

    if-eq v7, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 308
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    .line 309
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 311
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 312
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1377
    new-instance v0, Lcom/esotericsoftware/kryo/c/l$a;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/c/l$a;-><init>(Lcom/esotericsoftware/kryo/c/l;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1345
    iget v0, p0, Lcom/esotericsoftware/kryo/c/l;->a:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1348
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/l;->b:[Ljava/lang/Object;

    .line 1349
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/l;->c:[I

    .line 1350
    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 1352
    aget-object v3, v1, v4

    if-eqz v3, :cond_1

    .line 1354
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_4

    .line 1360
    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    const-string v6, ", "

    .line 1362
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1365
    aget v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x7d

    .line 1367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
