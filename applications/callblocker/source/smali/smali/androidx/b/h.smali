.class public Landroidx/b/h;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

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

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/b/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/b/h;-><init>(I)V

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

    iput-boolean v0, p0, Landroidx/b/h;->b:Z

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget-object v0, Landroidx/b/c;->a:[I

    iput-object v0, p0, Landroidx/b/h;->c:[I

    .line 75
    sget-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p1}, Landroidx/b/c;->a(I)I

    move-result v0

    .line 78
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/b/h;->c:[I

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 230
    iget v3, p0, Landroidx/b/h;->e:I

    .line 232
    iget-object v4, p0, Landroidx/b/h;->c:[I

    .line 233
    iget-object v5, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 235
    :goto_0
    if-ge v1, v3, :cond_2

    .line 236
    aget-object v6, v5, v1

    .line 238
    sget-object v7, Landroidx/b/h;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 239
    if-eq v1, v0, :cond_0

    .line 240
    aget v7, v4, v1

    aput v7, v4, v0

    .line 241
    aput-object v6, v5, v0

    .line 242
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_2
    iput-boolean v2, p0, Landroidx/b/h;->b:Z

    .line 250
    iput v0, p0, Landroidx/b/h;->e:I

    .line 253
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 419
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 423
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/b/h;->e:I

    if-ge v0, v1, :cond_2

    .line 424
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 427
    :goto_1
    return v0

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Landroidx/b/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/h",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/b/h;

    .line 89
    iget-object v1, p0, Landroidx/b/h;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/b/h;->c:[I

    .line 90
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/b/h;->d:[Ljava/lang/Object;
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

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    invoke-static {v0, v1, p1}, Landroidx/b/c;->a([III)I

    move-result v0

    .line 120
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/h;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 344
    :cond_0
    iget v0, p0, Landroidx/b/h;->e:I

    return v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    invoke-static {v0, v1, p1}, Landroidx/b/c;->a([III)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    .line 142
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/h;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    sget-object v2, Landroidx/b/h;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/b/h;->b:Z

    .line 147
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    invoke-static {v0, v1, p1}, Landroidx/b/c;->a([III)I

    move-result v0

    .line 263
    if-ltz v0, :cond_0

    .line 264
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 305
    :goto_0
    return-void

    .line 266
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 268
    iget v1, p0, Landroidx/b/h;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroidx/b/h;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 269
    iget-object v1, p0, Landroidx/b/h;->c:[I

    aput p1, v1, v0

    .line 270
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 274
    :cond_1
    iget-boolean v1, p0, Landroidx/b/h;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/b/h;->e:I

    iget-object v2, p0, Landroidx/b/h;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 275
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 278
    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    invoke-static {v0, v1, p1}, Landroidx/b/c;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 281
    :cond_2
    iget v1, p0, Landroidx/b/h;->e:I

    iget-object v2, p0, Landroidx/b/h;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 282
    iget v1, p0, Landroidx/b/h;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/b/c;->a(I)I

    move-result v1

    .line 284
    new-array v2, v1, [I

    .line 285
    new-array v1, v1, [Ljava/lang/Object;

    .line 288
    iget-object v3, p0, Landroidx/b/h;->c:[I

    iget-object v4, p0, Landroidx/b/h;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v3, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object v2, p0, Landroidx/b/h;->c:[I

    .line 292
    iput-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    .line 295
    :cond_3
    iget v1, p0, Landroidx/b/h;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Landroidx/b/h;->c:[I

    iget-object v2, p0, Landroidx/b/h;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/b/h;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroidx/b/h;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :cond_4
    iget-object v1, p0, Landroidx/b/h;->c:[I

    aput p1, v1, v0

    .line 302
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 303
    iget v0, p0, Landroidx/b/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/h;->e:I

    goto/16 :goto_0
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 365
    :cond_0
    iget-object v0, p0, Landroidx/b/h;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 444
    iget v2, p0, Landroidx/b/h;->e:I

    .line 445
    iget-object v3, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    move v0, v1

    .line 447
    :goto_0
    if-ge v0, v2, :cond_0

    .line 448
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iput v1, p0, Landroidx/b/h;->e:I

    .line 452
    iput-boolean v1, p0, Landroidx/b/h;->b:Z

    .line 453
    return-void
.end method

.method public c(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 460
    iget v0, p0, Landroidx/b/h;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 487
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/b/h;->e:I

    iget-object v1, p0, Landroidx/b/h;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 466
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 469
    :cond_1
    iget v0, p0, Landroidx/b/h;->e:I

    .line 470
    iget-object v1, p0, Landroidx/b/h;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 471
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/b/c;->a(I)I

    move-result v1

    .line 473
    new-array v2, v1, [I

    .line 474
    new-array v1, v1, [Ljava/lang/Object;

    .line 477
    iget-object v3, p0, Landroidx/b/h;->c:[I

    iget-object v4, p0, Landroidx/b/h;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iget-object v3, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iput-object v2, p0, Landroidx/b/h;->c:[I

    .line 481
    iput-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    .line 484
    :cond_2
    iget-object v1, p0, Landroidx/b/h;->c:[I

    aput p1, v1, v0

    .line 485
    iget-object v1, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 486
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/h;->e:I

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroidx/b/h;->a()Landroidx/b/h;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 375
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 379
    :cond_0
    iget-object v0, p0, Landroidx/b/h;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public e(I)I
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Landroidx/b/h;->b:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Landroidx/b/h;->d()V

    .line 405
    :cond_0
    iget-object v0, p0, Landroidx/b/h;->c:[I

    iget v1, p0, Landroidx/b/h;->e:I

    invoke-static {v0, v1, p1}, Landroidx/b/c;->a([III)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Landroidx/b/h;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 499
    const-string/jumbo v0, "{}"

    .line 519
    :goto_0
    return-object v0

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/b/h;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/b/h;->e:I

    if-ge v0, v2, :cond_3

    .line 505
    if-lez v0, :cond_1

    .line 506
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/b/h;->c(I)I

    move-result v2

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0, v0}, Landroidx/b/h;->d(I)Ljava/lang/Object;

    move-result-object v2

    .line 512
    if-eq v2, p0, :cond_2

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    :cond_2
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 518
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
