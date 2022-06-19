.class public final Lcom/esotericsoftware/a/p;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Lcom/esotericsoftware/a/l;

.field g:Lcom/esotericsoftware/a/p;

.field h:Lcom/esotericsoftware/a/i;

.field i:Lcom/esotericsoftware/a/p;

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/p;->k:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/esotericsoftware/a/p;->k:[I

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/p;->j:I

    iget-object v2, p0, Lcom/esotericsoftware/a/p;->k:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/a/p;->k:[I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/p;->k:[I

    iget v1, p0, Lcom/esotericsoftware/a/p;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/a/p;->j:I

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lcom/esotericsoftware/a/p;->j:I

    aput p2, v0, v2

    return-void
.end method


# virtual methods
.method final a()Lcom/esotericsoftware/a/p;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    return-object v0
.end method

.method final a(Lcom/esotericsoftware/a/d;IZ)V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    rsub-int/lit8 p2, p2, -0x1

    iget p3, p1, Lcom/esotericsoftware/a/d;->b:I

    invoke-direct {p0, p2, p3}, Lcom/esotericsoftware/a/p;->a(II)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_0
    iget p3, p1, Lcom/esotericsoftware/a/d;->b:I

    invoke-direct {p0, p2, p3}, Lcom/esotericsoftware/a/p;->a(II)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget p3, p0, Lcom/esotericsoftware/a/p;->c:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_2
    iget p3, p0, Lcom/esotericsoftware/a/p;->c:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method final a(Lcom/esotericsoftware/a/p;JI)V
    .locals 9

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget v4, v0, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v5, v4, 0x800

    if-nez v5, :cond_9

    or-int/lit16 v4, v4, 0x800

    iput v4, v0, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v5, v4, 0x100

    if-eqz v5, :cond_6

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    .line 1000
    iget v4, p1, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/esotericsoftware/a/p;->k:[I

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget v5, v5, v4

    iget-object v6, p1, Lcom/esotericsoftware/a/p;->k:[I

    aget v6, v6, v4

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_6

    new-instance v2, Lcom/esotericsoftware/a/i;

    invoke-direct {v2}, Lcom/esotericsoftware/a/i;-><init>()V

    iget v3, v0, Lcom/esotericsoftware/a/p;->d:I

    iput v3, v2, Lcom/esotericsoftware/a/i;->a:I

    iget-object v3, p1, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v3, v3, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iput-object v3, v2, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget-object v3, v0, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iput-object v3, v2, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iput-object v2, v0, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    goto :goto_4

    .line 2000
    :cond_3
    iget v4, v0, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v5, v4, 0x400

    const/16 v6, 0x20

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/esotericsoftware/a/p;->k:[I

    ushr-long v7, p2, v6

    long-to-int v8, v7

    aget v5, v5, v8

    long-to-int v7, p2

    and-int/2addr v5, v7

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_9

    and-int/lit16 v3, v4, 0x400

    if-nez v3, :cond_5

    or-int/lit16 v3, v4, 0x400

    .line 3000
    iput v3, v0, Lcom/esotericsoftware/a/p;->a:I

    div-int/lit8 v3, p4, 0x20

    add-int/2addr v3, v2

    new-array v2, v3, [I

    iput-object v2, v0, Lcom/esotericsoftware/a/p;->k:[I

    :cond_5
    iget-object v2, v0, Lcom/esotericsoftware/a/p;->k:[I

    ushr-long v3, p2, v6

    long-to-int v4, v3

    aget v3, v2, v4

    long-to-int v5, p2

    or-int/2addr v3, v5

    aput v3, v2, v4

    :cond_6
    :goto_4
    iget-object v2, v0, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    :goto_5
    if-eqz v2, :cond_9

    iget v3, v0, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v3, v3, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    if-eq v2, v3, :cond_8

    :cond_7
    iget-object v3, v2, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget-object v3, v3, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iput-object v1, v3, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    iget-object v1, v2, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    :cond_8
    iget-object v2, v2, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method final a(I[B)Z
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/esotericsoftware/a/p;->a:I

    iput p1, p0, Lcom/esotericsoftware/a/p;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/esotericsoftware/a/p;->j:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/esotericsoftware/a/p;->k:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ltz v0, :cond_3

    sub-int v0, p1, v0

    const/16 v5, -0x8000

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7fff

    if-le v0, v5, :cond_2

    :cond_0
    add-int/lit8 v1, v2, -0x1

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa8

    if-gt v5, v6, :cond_1

    add-int/lit8 v5, v5, 0x31

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x14

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    :goto_1
    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    goto :goto_2

    :cond_3
    add-int/2addr v0, p1

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
