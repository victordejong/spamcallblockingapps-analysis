.class public Lcom/esotericsoftware/kryo/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/c/m$a;,
        Lcom/esotericsoftware/kryo/c/m$c;,
        Lcom/esotericsoftware/kryo/c/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/c/m$b<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field public b:I

.field c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field e:F

.field f:I

.field protected g:I

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/c/m;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/m;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/c/m;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 86
    iput p2, p0, Lcom/esotericsoftware/kryo/c/m;->e:F

    .line 88
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/c/m;->a(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 89
    iput p2, p0, Lcom/esotericsoftware/kryo/c/m;->f:I

    add-int/lit8 p2, p1, -0x1

    .line 90
    iput p2, p0, Lcom/esotericsoftware/kryo/c/m;->h:I

    int-to-long v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/c/m;->g:I

    .line 93
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    return-void

    .line 85
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

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c/m<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/c/m;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/m;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p1, p1, Lcom/esotericsoftware/kryo/c/m;->b:I

    iput p1, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    return-void
.end method

.method public static a(IF)I
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    int-to-float v1, p0

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/m;->b(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_0

    return p1

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "The required capacity is too large: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "capacity must be >= 0: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 301
    iget v2, p0, Lcom/esotericsoftware/kryo/c/m;->e:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/m;->f:I

    add-int/lit8 v1, p1, -0x1

    .line 302
    iput v1, p0, Lcom/esotericsoftware/kryo/c/m;->h:I

    int-to-long v1, v1

    .line 303
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/m;->g:I

    .line 305
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    .line 308
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 309
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    .line 311
    iget p1, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 313
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 314
    aget-object v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/esotericsoftware/kryo/c/m;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method private b()V
    .locals 2

    .line 241
    iget v0, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    .line 243
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->a(Ljava/lang/Object;)I

    move-result v1

    .line 166
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget v2, p0, Lcom/esotericsoftware/kryo/c/m;->h:I

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

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long v0, v0, v2

    iget p1, p0, Lcom/esotericsoftware/kryo/c/m;->g:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 141
    aput-object p2, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 145
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 146
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 147
    iget p1, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    iget p2, p0, Lcom/esotericsoftware/kryo/c/m;->f:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->a(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 231
    iget v0, p0, Lcom/esotericsoftware/kryo/c/m;->e:F

    const/16 v1, 0x800

    invoke-static {v1, v0}, Lcom/esotericsoftware/kryo/c/m;->a(IF)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v1, v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/c/m;->b()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 236
    iput v1, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    .line 237
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/c/m;->a(I)V

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

    .line 127
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->a(Ljava/lang/Object;)I

    move-result v1

    .line 129
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 131
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 128
    iget v2, p0, Lcom/esotericsoftware/kryo/c/m;->h:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(TT;)TV;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->b(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/c/m;->b(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 336
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/c/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 337
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/c/m;

    .line 338
    iget v1, p1, Lcom/esotericsoftware/kryo/c/m;->b:I

    iget v3, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    if-eq v1, v3, :cond_2

    return v2

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 340
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    .line 341
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 342
    aget-object v6, v1, v5

    if-eqz v6, :cond_5

    .line 344
    aget-object v7, v3, v5

    if-nez v7, :cond_4

    .line 346
    sget-object v7, Lcom/esotericsoftware/kryo/c/m;->a:Ljava/lang/Object;

    .line 1183
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/c/m;->b(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_1

    .line 1184
    :cond_3
    iget-object v7, p1, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    aget-object v7, v7, v6

    :goto_1
    if-eqz v7, :cond_5

    return v2

    .line 348
    :cond_4
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/c/m;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 320
    iget v0, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    .line 321
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    .line 323
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 324
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 327
    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 328
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1413
    new-instance v0, Lcom/esotericsoftware/kryo/c/m$a;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/c/m$a;-><init>(Lcom/esotericsoftware/kryo/c/m;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1379
    iget v0, p0, Lcom/esotericsoftware/kryo/c/m;->b:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 1380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1382
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/m;->c:[Ljava/lang/Object;

    .line 1383
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/m;->d:[Ljava/lang/Object;

    .line 1384
    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    const-string v6, "(this)"

    if-lez v3, :cond_4

    .line 1386
    aget-object v3, v1, v4

    if-eqz v3, :cond_3

    if-ne v3, p0, :cond_1

    move-object v3, v6

    .line 1388
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1390
    aget-object v3, v2, v4

    if-ne v3, p0, :cond_2

    move-object v3, v6

    .line 1391
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_8

    .line 1395
    aget-object v4, v1, v3

    if-eqz v4, :cond_7

    const-string v7, ", "

    .line 1397
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_5

    move-object v4, v6

    .line 1398
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1400
    aget-object v4, v2, v3

    if-ne v4, p0, :cond_6

    move-object v4, v6

    .line 1401
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    move v4, v3

    goto :goto_1

    :cond_8
    const/16 v1, 0x7d

    .line 1403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
