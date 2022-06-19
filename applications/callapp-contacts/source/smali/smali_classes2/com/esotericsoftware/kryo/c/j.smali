.class public final Lcom/esotericsoftware/kryo/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/c/j$a;,
        Lcom/esotericsoftware/kryo/c/j$c;,
        Lcom/esotericsoftware/kryo/c/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/c/j$b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field b:[I

.field c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field e:Z

.field protected f:I

.field protected g:I

.field private final h:F

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/j;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c/j;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 91
    iput p2, p0, Lcom/esotericsoftware/kryo/c/j;->h:F

    .line 93
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/c/m;->a(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 94
    iput p2, p0, Lcom/esotericsoftware/kryo/c/j;->i:I

    add-int/lit8 p2, p1, -0x1

    .line 95
    iput p2, p0, Lcom/esotericsoftware/kryo/c/j;->g:I

    int-to-long v0, p2

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/c/j;->f:I

    .line 98
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 99
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    return-void

    .line 90
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

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/j<",
            "+TV;>;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/j;->b:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/c/j;->h:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/j;-><init>(IF)V

    .line 105
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/j;->b:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v0, p1, Lcom/esotericsoftware/kryo/c/j;->a:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    .line 108
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    .line 109
    iget-boolean p1, p1, Lcom/esotericsoftware/kryo/c/j;->e:Z

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 179
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/j;->a(I)I

    move-result v1

    .line 180
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    .line 181
    aput p1, v0, v1

    .line 182
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 179
    iget v2, p0, Lcom/esotericsoftware/kryo/c/j;->g:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 134
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/j;->a(I)I

    move-result v1

    .line 135
    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 134
    iget v2, p0, Lcom/esotericsoftware/kryo/c/j;->g:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private d(I)V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 333
    iget v2, p0, Lcom/esotericsoftware/kryo/c/j;->h:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/j;->i:I

    add-int/lit8 v1, p1, -0x1

    .line 334
    iput v1, p0, Lcom/esotericsoftware/kryo/c/j;->g:I

    int-to-long v1, v1

    .line 335
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/j;->f:I

    .line 337
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 338
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    .line 340
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 341
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    .line 343
    iget p1, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 345
    aget v3, v1, p1

    if-eqz v3, :cond_0

    .line 346
    aget-object v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/esotericsoftware/kryo/c/j;->b(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    .line 127
    iget p1, p0, Lcom/esotericsoftware/kryo/c/j;->f:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    .line 145
    iput-object p2, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    .line 146
    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-nez p2, :cond_0

    .line 147
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    .line 148
    iget p2, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    :cond_0
    return-object p1

    .line 152
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/j;->c(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    aget-object v0, p1, v1

    .line 155
    aput-object p2, p1, v1

    return-object v0

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 159
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    aput p1, v2, v1

    .line 160
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    .line 161
    iget p1, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/j;->i:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/j;->d(I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 189
    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    return-object p1

    :cond_0
    return-object v0

    .line 190
    :cond_1
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/j;->c(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 369
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/c/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 370
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/c/j;

    .line 371
    iget v1, p1, Lcom/esotericsoftware/kryo/c/j;->a:I

    iget v3, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    if-eq v1, v3, :cond_2

    return v2

    .line 372
    :cond_2
    iget-boolean v1, p1, Lcom/esotericsoftware/kryo/c/j;->e:Z

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_5

    .line 374
    iget-object v1, p1, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    return v2

    .line 377
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 380
    :cond_5
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 381
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    .line 382
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_a

    .line 383
    aget v6, v1, v5

    if-eqz v6, :cond_9

    .line 385
    aget-object v7, v3, v5

    if-nez v7, :cond_8

    .line 387
    sget-object v7, Lcom/esotericsoftware/kryo/c/m;->a:Ljava/lang/Object;

    if-nez v6, :cond_6

    .line 1195
    iget-boolean v6, p1, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eqz v6, :cond_7

    iget-object v7, p1, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    goto :goto_1

    .line 1196
    :cond_6
    invoke-direct {p1, v6}, Lcom/esotericsoftware/kryo/c/j;->c(I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 1197
    iget-object v7, p1, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    aget-object v7, v7, v6

    :cond_7
    :goto_1
    if-eqz v7, :cond_9

    return v2

    .line 389
    :cond_8
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/c/j;->b(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    return v2

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 352
    iget v0, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    .line 353
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 355
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 356
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 357
    aget v5, v1, v3

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v0, v5

    .line 360
    aget-object v5, v2, v3

    if-eqz v5, :cond_1

    .line 361
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/esotericsoftware/kryo/c/j$b<",
            "TV;>;>;"
        }
    .end annotation

    .line 1451
    new-instance v0, Lcom/esotericsoftware/kryo/c/j$a;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/c/j$a;-><init>(Lcom/esotericsoftware/kryo/c/j;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 414
    iget v0, p0, Lcom/esotericsoftware/kryo/c/j;->a:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/j;->b:[I

    .line 418
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/j;->c:[Ljava/lang/Object;

    .line 419
    array-length v3, v1

    .line 420
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/c/j;->e:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    .line 421
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v4, p0, Lcom/esotericsoftware/kryo/c/j;->d:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 425
    aget v3, v1, v4

    if-eqz v3, :cond_2

    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_4

    .line 434
    aget v3, v1, v4

    if-eqz v3, :cond_3

    const-string v6, ", "

    .line 436
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x5d

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
