.class public final Lcom/esotericsoftware/kryo/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/c/i;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/c/i;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/c/i;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-boolean v0, p1, Lcom/esotericsoftware/kryo/c/i;->c:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/c/i;->c:Z

    .line 55
    iget v0, p1, Lcom/esotericsoftware/kryo/c/i;->b:I

    iput v0, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    .line 57
    iget-object p1, p1, Lcom/esotericsoftware/kryo/c/i;->a:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/c/i;->c:Z

    .line 47
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    return-void
.end method

.method public constructor <init>(Z[III)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p4}, Lcom/esotericsoftware/kryo/c/i;-><init>(ZI)V

    .line 72
    iput p4, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    .line 73
    iget-object p1, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 63
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/esotericsoftware/kryo/c/i;-><init>(Z[III)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    iget v1, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    .line 78
    iget v1, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1300
    new-array v1, v0, [I

    .line 1301
    iget-object v2, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    .line 1302
    iget v3, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1303
    iput-object v1, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    move-object v0, v1

    .line 79
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/c/i;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 345
    :cond_1
    instance-of v1, p1, Lcom/esotericsoftware/kryo/c/i;

    if-nez v1, :cond_2

    return v2

    .line 346
    :cond_2
    check-cast p1, Lcom/esotericsoftware/kryo/c/i;

    .line 347
    iget-boolean v1, p1, Lcom/esotericsoftware/kryo/c/i;->c:Z

    if-nez v1, :cond_3

    return v2

    .line 348
    :cond_3
    iget v1, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    .line 349
    iget v3, p1, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-eq v1, v3, :cond_4

    return v2

    .line 350
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    .line 351
    iget-object p1, p1, Lcom/esotericsoftware/kryo/c/i;->a:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    .line 353
    aget v5, v3, v4

    aget v6, p1, v4

    if-eq v5, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 334
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/c/i;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    const/4 v1, 0x0

    .line 337
    iget v2, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 338
    aget v4, v0, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 358
    iget v0, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/i;->a:[I

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 362
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 363
    :goto_0
    iget v3, p0, Lcom/esotericsoftware/kryo/c/i;->b:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
