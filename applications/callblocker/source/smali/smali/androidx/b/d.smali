.class public Landroidx/b/d;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[J

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/b/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/b/d;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/b/d;->b:Z

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget-object v0, Landroidx/b/c;->b:[J

    iput-object v0, p0, Landroidx/b/d;->c:[J

    .line 75
    sget-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p1}, Landroidx/b/c;->b(I)I

    move-result v0

    .line 78
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/b/d;->c:[J

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 217
    iget v3, p0, Landroidx/b/d;->e:I

    .line 219
    iget-object v4, p0, Landroidx/b/d;->c:[J

    .line 220
    iget-object v5, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 222
    :goto_0
    if-ge v1, v3, :cond_2

    .line 223
    aget-object v6, v5, v1

    .line 225
    sget-object v7, Landroidx/b/d;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 226
    if-eq v1, v0, :cond_0

    .line 227
    aget-wide v8, v4, v1

    aput-wide v8, v4, v0

    .line 228
    aput-object v6, v5, v0

    .line 229
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    iput-boolean v2, p0, Landroidx/b/d;->b:Z

    .line 237
    iput v0, p0, Landroidx/b/d;->e:I

    .line 240
    return-void
.end method


# virtual methods
.method public a()Landroidx/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/d;

    .line 89
    iget-object v1, p0, Landroidx/b/d;->c:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/b/d;->c:[J

    .line 90
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/b/d;->d:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    .line 120
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/b/d;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    sget-object v1, Landroidx/b/d;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/b/d;->b:Z

    .line 175
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 331
    :cond_0
    iget v0, p0, Landroidx/b/d;->e:I

    return v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 357
    :cond_0
    iget-object v0, p0, Landroidx/b/d;->c:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Landroidx/b/d;->c(J)V

    .line 133
    return-void
.end method

.method public b(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 248
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    .line 250
    if-ltz v0, :cond_0

    .line 251
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 292
    :goto_0
    return-void

    .line 253
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 255
    iget v1, p0, Landroidx/b/d;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/d;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 256
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 257
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 261
    :cond_1
    iget-boolean v1, p0, Landroidx/b/d;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/b/d;->e:I

    iget-object v2, p0, Landroidx/b/d;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 262
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 265
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 268
    :cond_2
    iget v1, p0, Landroidx/b/d;->e:I

    iget-object v2, p0, Landroidx/b/d;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 269
    iget v1, p0, Landroidx/b/d;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/b/c;->b(I)I

    move-result v1

    .line 271
    new-array v2, v1, [J

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    .line 275
    iget-object v3, p0, Landroidx/b/d;->c:[J

    iget-object v4, p0, Landroidx/b/d;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v3, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iput-object v2, p0, Landroidx/b/d;->c:[J

    .line 279
    iput-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    .line 282
    :cond_3
    iget v1, p0, Landroidx/b/d;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 284
    iget-object v1, p0, Landroidx/b/d;->c:[J

    iget-object v2, p0, Landroidx/b/d;->c:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/b/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/b/d;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    :cond_4
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 289
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 290
    iget v0, p0, Landroidx/b/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/d;->e:I

    goto/16 :goto_0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 373
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 377
    :cond_0
    iget-object v0, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    .line 142
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/d;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    sget-object v2, Landroidx/b/d;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/b/d;->b:Z

    .line 147
    :cond_0
    return-void
.end method

.method public c(JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 456
    iget v0, p0, Landroidx/b/d;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Landroidx/b/d;->b(JLjava/lang/Object;)V

    .line 483
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/b/d;->e:I

    iget-object v1, p0, Landroidx/b/d;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 462
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 465
    :cond_1
    iget v0, p0, Landroidx/b/d;->e:I

    .line 466
    iget-object v1, p0, Landroidx/b/d;->c:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 467
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/b/c;->b(I)I

    move-result v1

    .line 469
    new-array v2, v1, [J

    .line 470
    new-array v1, v1, [Ljava/lang/Object;

    .line 473
    iget-object v3, p0, Landroidx/b/d;->c:[J

    iget-object v4, p0, Landroidx/b/d;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iget-object v3, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iput-object v2, p0, Landroidx/b/d;->c:[J

    .line 477
    iput-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    .line 480
    :cond_2
    iget-object v1, p0, Landroidx/b/d;->c:[J

    aput-wide p1, v1, v0

    .line 481
    iget-object v1, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/d;->e:I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Landroidx/b/d;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroidx/b/d;->a()Landroidx/b/d;

    move-result-object v0

    return-object v0
.end method

.method public d(J)I
    .locals 3

    .prologue
    .line 399
    iget-boolean v0, p0, Landroidx/b/d;->b:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Landroidx/b/d;->e()V

    .line 403
    :cond_0
    iget-object v0, p0, Landroidx/b/d;->c:[J

    iget v1, p0, Landroidx/b/d;->e:I

    invoke-static {v0, v1, p1, p2}, Landroidx/b/c;->a([JIJ)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 440
    iget v2, p0, Landroidx/b/d;->e:I

    .line 441
    iget-object v3, p0, Landroidx/b/d;->d:[Ljava/lang/Object;

    move v0, v1

    .line 443
    :goto_0
    if-ge v0, v2, :cond_0

    .line 444
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    iput v1, p0, Landroidx/b/d;->e:I

    .line 448
    iput-boolean v1, p0, Landroidx/b/d;->b:Z

    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 494
    invoke-virtual {p0}, Landroidx/b/d;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 495
    const-string/jumbo v0, "{}"

    .line 515
    :goto_0
    return-object v0

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/b/d;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 499
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/b/d;->e:I

    if-ge v0, v2, :cond_3

    .line 501
    if-lez v0, :cond_1

    .line 502
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/b/d;->b(I)J

    move-result-wide v2

    .line 505
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0, v0}, Landroidx/b/d;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 508
    if-eq v2, p0, :cond_2

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_2
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
