.class final Lcom/esotericsoftware/a/r;
.super Lcom/esotericsoftware/a/q;


# instance fields
.field private A:Lcom/esotericsoftware/a/d;

.field private B:I

.field private C:[I

.field private D:[I

.field private E:I

.field private F:Lcom/esotericsoftware/a/n;

.field private G:Lcom/esotericsoftware/a/n;

.field private H:I

.field private I:Lcom/esotericsoftware/a/d;

.field private J:I

.field private K:Lcom/esotericsoftware/a/d;

.field private L:I

.field private M:Lcom/esotericsoftware/a/d;

.field private N:I

.field private O:Lcom/esotericsoftware/a/d;

.field private P:I

.field private Q:Lcom/esotericsoftware/a/b;

.field private R:Lcom/esotericsoftware/a/b;

.field private S:Lcom/esotericsoftware/a/c;

.field private T:Z

.field private U:I

.field private final V:I

.field private W:Lcom/esotericsoftware/a/p;

.field private X:Lcom/esotericsoftware/a/p;

.field private Y:Lcom/esotericsoftware/a/p;

.field private Z:I

.field private aa:I

.field final c:Lcom/esotericsoftware/a/g;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field h:[I

.field private i:I

.field private final j:I

.field private final k:I

.field private final l:Ljava/lang/String;

.field private m:Lcom/esotericsoftware/a/d;

.field private n:Lcom/esotericsoftware/a/b;

.field private o:Lcom/esotericsoftware/a/b;

.field private p:Lcom/esotericsoftware/a/b;

.field private q:Lcom/esotericsoftware/a/b;

.field private r:[Lcom/esotericsoftware/a/b;

.field private s:[Lcom/esotericsoftware/a/b;

.field private t:I

.field private u:Lcom/esotericsoftware/a/c;

.field private v:Lcom/esotericsoftware/a/d;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Lcom/esotericsoftware/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/q;-><init>(I)V

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v0, p1, Lcom/esotericsoftware/a/g;->t:Lcom/esotericsoftware/a/r;

    if-nez v0, :cond_0

    iput-object p0, p1, Lcom/esotericsoftware/a/g;->t:Lcom/esotericsoftware/a/r;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/esotericsoftware/a/g;->u:Lcom/esotericsoftware/a/r;

    iput-object p0, v0, Lcom/esotericsoftware/a/r;->b:Lcom/esotericsoftware/a/q;

    :goto_0
    iput-object p0, p1, Lcom/esotericsoftware/a/g;->u:Lcom/esotericsoftware/a/r;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iput p2, p0, Lcom/esotericsoftware/a/r;->i:I

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/esotericsoftware/a/r;->i:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/a/r;->i:I

    :cond_1
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/esotericsoftware/a/r;->j:I

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/esotericsoftware/a/r;->k:I

    iput-object p4, p0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p6, :cond_2

    array-length p4, p6

    if-lez p4, :cond_2

    array-length p4, p6

    iput p4, p0, Lcom/esotericsoftware/a/r;->g:I

    new-array p4, p4, [I

    iput-object p4, p0, Lcom/esotericsoftware/a/r;->h:[I

    const/4 p4, 0x0

    :goto_1
    iget p5, p0, Lcom/esotericsoftware/a/r;->g:I

    if-ge p4, p5, :cond_2

    iget-object p5, p0, Lcom/esotericsoftware/a/r;->h:[I

    aget-object v0, p6, p4

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result v0

    aput v0, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-eqz p8, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p7, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x2

    :goto_2
    iput p3, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez p7, :cond_5

    if-eqz p8, :cond_7

    :cond_5
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/a/t;->e(Ljava/lang/String;)I

    move-result p3

    shr-int/lit8 p1, p3, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    iput p1, p0, Lcom/esotericsoftware/a/r;->x:I

    iput p1, p0, Lcom/esotericsoftware/a/r;->y:I

    new-instance p1, Lcom/esotericsoftware/a/p;

    invoke-direct {p1}, Lcom/esotericsoftware/a/p;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    iget p2, p1, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Lcom/esotericsoftware/a/p;->a:I

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/p;)V

    :cond_7
    return-void
.end method

.method private a(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->D:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->D:[I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->D:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method private static a([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static a([I[III)I
    .locals 3

    sub-int v0, p3, p2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget v2, p0, v1

    if-ge p2, v2, :cond_0

    aget v2, p0, v1

    if-gt v2, p3, :cond_0

    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    aget v2, p0, v1

    if-ge p3, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p2, :cond_1

    aget v2, p1, v1

    sub-int/2addr v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a(Lcom/esotericsoftware/a/l;)V
    .locals 10

    iget-object v0, p1, Lcom/esotericsoftware/a/l;->c:[I

    iget-object v1, p1, Lcom/esotericsoftware/a/l;->d:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    const v7, 0x1000003

    const v8, 0x1000004

    if-ge v3, v6, :cond_3

    aget v6, v0, v3

    const/high16 v9, 0x1000000

    add-int/lit8 v5, v5, 0x1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1
    if-eq v6, v8, :cond_1

    if-ne v6, v7, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_6

    aget v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget p1, p1, Lcom/esotericsoftware/a/p;->c:I

    invoke-direct {p0, p1, v4, v5}, Lcom/esotericsoftware/a/r;->a(III)I

    move-result p1

    const/4 v3, 0x0

    :goto_3
    if-lez v4, :cond_9

    aget v5, v0, v3

    iget-object v6, p0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v9, p1, 0x1

    aput v5, v6, p1

    if-eq v5, v8, :cond_7

    if-ne v5, v7, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    move p1, v9

    goto :goto_3

    :cond_9
    :goto_4
    array-length v0, v1

    if-ge v2, v0, :cond_c

    aget v0, v1, v2

    iget-object v3, p0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v4, p1, 0x1

    aput v0, v3, p1

    if-eq v0, v8, :cond_a

    if-ne v0, v7, :cond_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->d()V

    return-void
.end method

.method private a(Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/16 v1, 0xab

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    invoke-direct {p0, v2, p1}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    invoke-virtual {p1}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object p1

    iget v0, p1, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Lcom/esotericsoftware/a/p;->a:I

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    invoke-direct {p0, v2, v0}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v0

    iget v1, v0, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/esotericsoftware/a/p;->a:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    :goto_1
    array-length p1, p2

    if-ge v2, p1, :cond_1

    iget p1, p0, Lcom/esotericsoftware/a/r;->Z:I

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->c()V

    :cond_2
    return-void
.end method

.method private static a([BII)V
    .locals 1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private static a([I[ILcom/esotericsoftware/a/p;)V
    .locals 2

    iget v0, p2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p2, Lcom/esotericsoftware/a/p;->c:I

    invoke-static {p0, p1, v0, v1}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result p0

    iput p0, p2, Lcom/esotericsoftware/a/p;->c:I

    iget p0, p2, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p2, Lcom/esotericsoftware/a/p;->a:I

    :cond_0
    return-void
.end method

.method private static b([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    check-cast p1, Lcom/esotericsoftware/a/p;

    iget p1, p1, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method private static c([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/p;

    invoke-direct {v0}, Lcom/esotericsoftware/a/p;-><init>()V

    new-instance v1, Lcom/esotericsoftware/a/l;

    invoke-direct {v1}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v1, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v1, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iput-object v0, v1, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v2, v2, Lcom/esotericsoftware/a/d;->a:[B

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/a/p;->a(I[B)Z

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iput-object v0, v1, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    iput v1, v0, Lcom/esotericsoftware/a/p;->e:I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    return-void
.end method

.method private c(ILcom/esotericsoftware/a/p;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/a/i;

    invoke-direct {v0}, Lcom/esotericsoftware/a/i;-><init>()V

    iput p1, v0, Lcom/esotericsoftware/a/i;->a:I

    iput-object p2, v0, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget-object p1, p1, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iput-object p1, v0, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iput-object v0, p1, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->C:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    :cond_0
    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->e()V

    iget v0, p0, Lcom/esotericsoftware/a/r;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/r;->z:I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->D:[I

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->C:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->D:[I

    return-void
.end method

.method private e()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->D:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v1, v1, v4

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v4, v4, Lcom/esotericsoftware/a/g;->e:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v7, 0x32

    if-ge v4, v7, :cond_0

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->D:[I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/2addr v3, v6

    invoke-direct {v0, v6, v3}, Lcom/esotericsoftware/a/r;->e(II)V

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/r;->e(II)V

    return-void

    :cond_0
    iget-object v4, v0, Lcom/esotericsoftware/a/r;->C:[I

    aget v7, v4, v2

    iget v8, v0, Lcom/esotericsoftware/a/r;->z:I

    if-nez v8, :cond_1

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->D:[I

    aget v4, v4, v5

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/esotericsoftware/a/r;->D:[I

    aget v8, v8, v5

    aget v4, v4, v5

    sub-int/2addr v8, v4

    add-int/lit8 v4, v8, -0x1

    :goto_0
    const/16 v8, 0xfc

    const/16 v9, 0xf8

    const/16 v10, 0xf7

    const/16 v11, 0x40

    const/16 v12, 0xff

    const/16 v13, 0xfb

    if-nez v1, :cond_3

    sub-int v2, v3, v7

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/16 v14, 0xfc

    goto :goto_3

    :pswitch_1
    if-ge v4, v11, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    const/16 v14, 0xfb

    goto :goto_3

    :pswitch_2
    move v7, v3

    const/16 v14, 0xf8

    goto :goto_3

    :cond_3
    if-ne v3, v7, :cond_5

    if-ne v1, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_4

    const/16 v14, 0x40

    goto :goto_1

    :cond_4
    const/16 v14, 0xf7

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_2
    const/16 v14, 0xff

    :goto_3
    if-eq v14, v12, :cond_7

    const/4 v15, 0x3

    :goto_4
    if-ge v5, v7, :cond_7

    iget-object v6, v0, Lcom/esotericsoftware/a/r;->D:[I

    aget v6, v6, v15

    iget-object v12, v0, Lcom/esotericsoftware/a/r;->C:[I

    aget v12, v12, v15

    if-eq v6, v12, :cond_6

    const/16 v14, 0xff

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    const/16 v12, 0xff

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v14, :cond_d

    if-eq v14, v11, :cond_c

    if-eq v14, v10, :cond_b

    if-eq v14, v9, :cond_a

    if-eq v14, v13, :cond_9

    if-eq v14, v8, :cond_8

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v5, 0x3

    add-int/2addr v3, v5

    invoke-direct {v0, v5, v3}, Lcom/esotericsoftware/a/r;->e(II)V

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/r;->e(II)V

    return-void

    :cond_8
    const/4 v5, 0x3

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/2addr v7, v5

    add-int/2addr v3, v5

    invoke-direct {v0, v7, v3}, Lcom/esotericsoftware/a/r;->e(II)V

    return-void

    :cond_9
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_a
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    add-int/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void

    :cond_b
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/esotericsoftware/a/r;->e(II)V

    return-void

    :cond_c
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    add-int/2addr v4, v11

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/esotericsoftware/a/r;->e(II)V

    return-void

    :cond_d
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e(II)V
    .locals 8

    :goto_0
    if-ge p1, p2, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->D:[I

    aget v0, v0, p1

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x7

    const/high16 v3, 0x1700000

    const/high16 v4, 0xff00000

    const v5, 0xfffff

    if-nez v1, :cond_2

    and-int v1, v0, v5

    and-int/2addr v0, v4

    if-eq v0, v3, :cond_1

    const/high16 v2, 0x1800000

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v2, v2, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    aget-object v1, v2, v1

    iget v1, v1, Lcom/esotericsoftware/a/o;->c:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v3, v2, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    goto/16 :goto_5

    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v1, v1, 0x1c

    :goto_2
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_3

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v7

    goto :goto_2

    :cond_3
    and-int v1, v0, v4

    if-ne v1, v3, :cond_4

    const/16 v1, 0x4c

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v1, v1, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    and-int/2addr v0, v5

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4a

    goto :goto_3

    :pswitch_0
    const/16 v0, 0x53

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x43

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x42

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_3

    :cond_5
    const/16 v0, 0x44

    goto :goto_3

    :cond_6
    const/16 v0, 0x46

    goto :goto_3

    :cond_7
    const/16 v0, 0x49

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/esotericsoftware/a/a;
    .locals 7

    new-instance v3, Lcom/esotericsoftware/a/d;

    invoke-direct {v3}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v3, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    new-instance v6, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    return-object v6
.end method

.method public final a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/a/b;->a(ILcom/esotericsoftware/a/u;Lcom/esotericsoftware/a/d;)V

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget p2, v4, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(ILcom/esotericsoftware/a/u;[Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;[ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 5

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    iget v2, v2, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lcom/esotericsoftware/a/p;->c:I

    aget-object v4, p3, v1

    iget v4, v4, Lcom/esotericsoftware/a/p;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lcom/esotericsoftware/a/u;->a:[B

    iget p4, p2, Lcom/esotericsoftware/a/u;->b:I

    aget-byte p3, p3, p4

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    iget-object p4, p2, Lcom/esotericsoftware/a/u;->a:[B

    iget p2, p2, Lcom/esotericsoftware/a/u;->b:I

    invoke-virtual {v0, p4, p2, p3}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :goto_1
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p2, p6}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance v1, Lcom/esotericsoftware/a/b;

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const/4 p3, 0x1

    iget p1, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 p6, p1, -0x2

    move-object p1, v1

    move-object p4, v0

    move-object p5, v0

    invoke-direct/range {p1 .. p6}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p7, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    iput-object p1, v1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object v1, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    iput-object p1, v1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object v1, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    :goto_2
    return-object v1
.end method

.method public final a(ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    const-string v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/esotericsoftware/a/r;->t:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/r;->t:I

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const/4 v2, 0x0

    const/4 p2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p2, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/a/t;->d(Ljava/lang/String;)[Lcom/esotericsoftware/a/t;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lcom/esotericsoftware/a/b;

    iput-object p3, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    :cond_1
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    aget-object p3, p3, p1

    iput-object p3, p2, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    aput-object p2, p3, p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-static {p3}, Lcom/esotericsoftware/a/t;->d(Ljava/lang/String;)[Lcom/esotericsoftware/a/t;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lcom/esotericsoftware/a/b;

    iput-object p3, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    :cond_3
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    aget-object p3, p3, p1

    iput-object p3, p2, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    aput-object p2, p3, p1

    :goto_0
    return-object p2
.end method

.method public final a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    sget-object v1, Lcom/esotericsoftware/a/l;->a:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_1
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :goto_0
    const/16 v0, 0xac

    if-lt p1, v0, :cond_2

    const/16 v0, 0xb1

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->c()V

    :cond_4
    return-void
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_1
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_2
    :goto_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final varargs a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v2, v1, Lcom/esotericsoftware/a/d;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v0, v2}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :goto_0
    array-length p1, p4

    if-ge v4, p1, :cond_0

    aget-object p1, p4, v4

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {p1, p2, v0, v2}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    return-void
.end method

.method public final a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget v4, v0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v4, :cond_12

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->C:[I

    const/high16 v4, 0x1700000

    if-nez v1, :cond_b

    .line 1000
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {v0, v8, v1, v8}, Lcom/esotericsoftware/a/r;->a(III)I

    move-result v1

    iget v10, v0, Lcom/esotericsoftware/a/r;->i:I

    and-int/lit8 v11, v10, 0x8

    if-nez v11, :cond_2

    const/high16 v11, 0x80000

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v1, v1, 0x1

    iget-object v11, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v12, v11, Lcom/esotericsoftware/a/g;->o:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v11, v4

    aput v11, v10, v7

    goto :goto_0

    :cond_1
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x6

    aput v11, v10, v7

    :cond_2
    :goto_0
    const/4 v10, 0x1

    :goto_1
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x46

    if-eq v11, v13, :cond_a

    const/16 v13, 0x3b

    const/16 v14, 0x4c

    if-eq v11, v14, :cond_8

    const/16 v15, 0x53

    if-eq v11, v15, :cond_7

    const/16 v15, 0x49

    if-eq v11, v15, :cond_7

    const/16 v15, 0x4a

    if-eq v11, v15, :cond_6

    const/16 v15, 0x5a

    if-eq v11, v15, :cond_7

    const/16 v15, 0x5b

    if-eq v11, v15, :cond_3

    packed-switch v11, :pswitch_data_0

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->D:[I

    sub-int/2addr v1, v7

    aput v1, v5, v9

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/r;->d()V

    goto/16 :goto_6

    :pswitch_0
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v11, v1, 0x1

    aput v7, v10, v1

    goto :goto_4

    :cond_3
    :goto_2
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v15, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v14, :cond_5

    :goto_3
    add-int/lit8 v12, v12, 0x1

    iget-object v11, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v13, :cond_5

    goto :goto_3

    :cond_5
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v13, v1, 0x1

    iget-object v14, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v15, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    add-int/2addr v12, v9

    invoke-virtual {v15, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v10

    or-int/2addr v10, v4

    aput v10, v11, v1

    move v10, v12

    move v1, v13

    goto :goto_1

    :cond_6
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v11, v1, 0x1

    aput v5, v10, v1

    goto :goto_4

    :cond_7
    :pswitch_1
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v11, v1, 0x1

    aput v9, v10, v1

    :goto_4
    move v1, v11

    move v10, v12

    goto :goto_1

    :cond_8
    move v10, v12

    :goto_5
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v13, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v13, v1, 0x1

    iget-object v14, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v15, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    add-int/lit8 v16, v10, 0x1

    invoke-virtual {v15, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v10

    or-int/2addr v10, v4

    aput v10, v11, v1

    move v1, v13

    move/from16 v10, v16

    goto/16 :goto_1

    :cond_a
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v11, v1, 0x1

    aput v6, v10, v1

    goto :goto_4

    :cond_b
    :goto_6
    iput v2, v0, Lcom/esotericsoftware/a/r;->y:I

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/esotericsoftware/a/r;->a(III)I

    move-result v1

    const/4 v5, 0x0

    :goto_7
    const-string v6, ""

    const/high16 v7, 0x1800000

    if-ge v5, v2, :cond_e

    aget-object v9, p3, v5

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v6, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v9, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    aget-object v10, p3, v5

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v9, v4

    aput v9, v6, v1

    :goto_8
    move v1, v7

    goto :goto_9

    :cond_c
    aget-object v9, p3, v5

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_d

    iget-object v6, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v7, v1, 0x1

    aget-object v9, p3, v5

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v1

    goto :goto_8

    :cond_d
    iget-object v9, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v10, v1, 0x1

    iget-object v11, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    aget-object v12, p3, v5

    check-cast v12, Lcom/esotericsoftware/a/p;

    iget v12, v12, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v11, v6, v12}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v6, v7

    aput v6, v9, v1

    move v1, v10

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    :goto_a
    if-ge v8, v3, :cond_11

    aget-object v2, p5, v8

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v9, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    aget-object v10, p5, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v9, v4

    aput v9, v2, v1

    :goto_b
    move v1, v5

    goto :goto_c

    :cond_f
    aget-object v2, p5, v8

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v5, v1, 0x1

    aget-object v9, p5, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v2, v1

    goto :goto_b

    :cond_10
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->D:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v9, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    aget-object v10, p5, v8

    check-cast v10, Lcom/esotericsoftware/a/p;

    iget v10, v10, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v9, v6, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;I)I

    move-result v9

    or-int/2addr v9, v7

    aput v9, v2, v1

    goto :goto_b

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/r;->d()V

    goto/16 :goto_13

    :cond_12
    iget-object v4, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-nez v4, :cond_13

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v4, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v4, v4, Lcom/esotericsoftware/a/d;->b:I

    goto :goto_d

    :cond_13
    iget-object v4, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v4, v4, Lcom/esotericsoftware/a/d;->b:I

    iget v10, v0, Lcom/esotericsoftware/a/r;->B:I

    sub-int/2addr v4, v10

    sub-int/2addr v4, v9

    if-gez v4, :cond_15

    if-ne v1, v7, :cond_14

    return-void

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_15
    :goto_d
    if-eqz v1, :cond_1c

    if-eq v1, v9, :cond_1b

    const/16 v10, 0xfb

    if-eq v1, v6, :cond_19

    const/16 v2, 0x40

    if-eq v1, v7, :cond_18

    if-eq v1, v5, :cond_16

    goto/16 :goto_12

    :cond_16
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-ge v4, v2, :cond_17

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_e

    :cond_17
    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :goto_e
    aget-object v1, p5, v8

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/r;->b(Ljava/lang/Object;)V

    goto :goto_12

    :cond_18
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-ge v4, v2, :cond_1a

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_12

    :cond_19
    iget v1, v0, Lcom/esotericsoftware/a/r;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/a/r;->y:I

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    sub-int/2addr v10, v2

    :cond_1a
    invoke-virtual {v1, v10}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    goto :goto_12

    :cond_1b
    iget v1, v0, Lcom/esotericsoftware/a/r;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/a/r;->y:I

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    add-int/lit16 v5, v2, 0xfb

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :goto_f
    if-ge v8, v2, :cond_1e

    aget-object v1, p3, v8

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/r;->b(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1c
    iput v2, v0, Lcom/esotericsoftware/a/r;->y:I

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_1d

    aget-object v4, p3, v1

    invoke-direct {v0, v4}, Lcom/esotericsoftware/a/r;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :goto_11
    if-ge v8, v3, :cond_1e

    aget-object v1, p5, v8

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/r;->b(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1e
    :goto_12
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    iput v1, v0, Lcom/esotericsoftware/a/r;->B:I

    iget v1, v0, Lcom/esotericsoftware/a/r;->z:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/esotericsoftware/a/r;->z:I

    :goto_13
    iget v1, v0, Lcom/esotericsoftware/a/r;->w:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/esotericsoftware/a/r;->w:I

    iget v1, v0, Lcom/esotericsoftware/a/r;->x:I

    iget v2, v0, Lcom/esotericsoftware/a/r;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/esotericsoftware/a/r;->x:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILcom/esotericsoftware/a/p;)V
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget v6, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v6, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    invoke-virtual {v0, p1, v3, v4, v4}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v0

    iget v6, v0, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Lcom/esotericsoftware/a/p;->a:I

    invoke-direct {p0, v3, p2}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    if-eq p1, v2, :cond_3

    new-instance v4, Lcom/esotericsoftware/a/p;

    invoke-direct {v4}, Lcom/esotericsoftware/a/p;-><init>()V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    iget v0, p2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    iget v0, p2, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p2, Lcom/esotericsoftware/a/p;->a:I

    iget v0, p0, Lcom/esotericsoftware/a/r;->U:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/esotericsoftware/a/r;->U:I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget v4, v0, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Lcom/esotericsoftware/a/p;->a:I

    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/2addr v0, v5

    invoke-direct {p0, v0, p2}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    new-instance v4, Lcom/esotericsoftware/a/p;

    invoke-direct {v4}, Lcom/esotericsoftware/a/p;-><init>()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    sget-object v6, Lcom/esotericsoftware/a/l;->a:[I

    aget v6, v6, p1

    add-int/2addr v0, v6

    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    invoke-direct {p0, v0, p2}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    :cond_3
    :goto_0
    iget v0, p2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget v0, p2, Lcom/esotericsoftware/a/p;->c:I

    iget-object v6, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v6, v6, Lcom/esotericsoftware/a/d;->b:I

    sub-int/2addr v0, v6

    const/16 v6, -0x8000

    if-ge v0, v6, :cond_8

    const/16 v0, 0xc8

    if-ne p1, v2, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_3

    :cond_4
    if-ne p1, v1, :cond_5

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    iget v1, v4, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Lcom/esotericsoftware/a/p;->a:I

    :cond_6
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v3, 0xa6

    if-gt p1, v3, :cond_7

    add-int/lit8 v3, p1, 0x1

    xor-int/2addr v3, v5

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_7
    xor-int/lit8 v3, p1, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v0, Lcom/esotericsoftware/a/d;->b:I

    sub-int/2addr v1, v5

    invoke-virtual {p2, v0, v1, v5}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v0, Lcom/esotericsoftware/a/d;->b:I

    sub-int/2addr v1, v5

    invoke-virtual {p2, v0, v1, v3}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    :goto_4
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz p2, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/p;)V

    :cond_9
    if-ne p1, v2, :cond_a

    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->c()V

    :cond_a
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p2

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_1
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p2, p2, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p2, p3, p4}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz p3, :cond_9

    iget v0, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p3, p3, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object p4, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p3, p1, v1, p4, p2}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/4 p4, 0x1

    const/4 v0, -0x2

    const/16 v2, 0x4a

    const/16 v3, 0x44

    packed-switch p1, :pswitch_data_0

    iget p4, p0, Lcom/esotericsoftware/a/r;->Z:I

    if-eq p3, v3, :cond_7

    if-ne p3, v2, :cond_4

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    if-eq p3, v3, :cond_1

    if-ne p3, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    goto :goto_2

    :pswitch_1
    iget p4, p0, Lcom/esotericsoftware/a/r;->Z:I

    if-eq p3, v3, :cond_4

    if-ne p3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_0
    add-int/2addr v0, p4

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    if-eq p3, v3, :cond_5

    if-ne p3, v2, :cond_6

    :cond_5
    const/4 p4, 0x2

    :cond_6
    add-int/2addr v0, p4

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, -0x3

    goto :goto_0

    :goto_2
    iget p3, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, p3, :cond_8

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_8
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p2, p2, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {p3, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;

    move-result-object p2

    iget p3, p2, Lcom/esotericsoftware/a/o;->c:I

    iget-object p5, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    iget v1, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v1, :cond_0

    iget-object p5, p5, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p5, p1, v0, v1, p2}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p4}, Lcom/esotericsoftware/a/t;->e(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/esotericsoftware/a/o;->c:I

    :cond_1
    const/16 p5, 0xb8

    if-ne p1, p5, :cond_2

    iget p5, p0, Lcom/esotericsoftware/a/r;->Z:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    iget p5, p0, Lcom/esotericsoftware/a/r;->Z:I

    shr-int/lit8 v1, p3, 0x2

    sub-int/2addr p5, v1

    and-int/lit8 v1, p3, 0x3

    add-int/2addr p5, v1

    :goto_0
    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le p5, v1, :cond_3

    iput p5, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_3
    iput p5, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_4
    :goto_1
    const/16 p5, 0xb9

    if-ne p1, p5, :cond_6

    if-nez p3, :cond_5

    invoke-static {p4}, Lcom/esotericsoftware/a/t;->e(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/esotericsoftware/a/o;->c:I

    :cond_5
    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p2, p2, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {p1, p5, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    shr-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    return-void

    :cond_6
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p2, p2, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {p3, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final a(Lcom/esotericsoftware/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->u:Lcom/esotericsoftware/a/c;

    iput-object v0, p1, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->u:Lcom/esotericsoftware/a/c;

    return-void
.end method

.method final a(Lcom/esotericsoftware/a/d;)V
    .locals 12

    iget v0, p0, Lcom/esotericsoftware/a/r;->i:I

    const/high16 v1, 0x40000

    and-int v2, v0, v1

    div-int/lit8 v2, v2, 0x40

    const/high16 v3, 0xe0000

    or-int/2addr v2, v3

    not-int v2, v2

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v2, p0, Lcom/esotericsoftware/a/r;->j:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v2, p0, Lcom/esotericsoftware/a/r;->k:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget v0, p0, Lcom/esotericsoftware/a/r;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v0, v0, Lcom/esotericsoftware/a/g;->d:Lcom/esotericsoftware/a/e;

    iget-object v0, v0, Lcom/esotericsoftware/a/e;->a:[B

    iget v1, p0, Lcom/esotericsoftware/a/r;->e:I

    iget v2, p0, Lcom/esotericsoftware/a/r;->f:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/esotericsoftware/a/r;->g:I

    if-lez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v4, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x31

    const v6, 0xffff

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v4, v4, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_3

    iget v4, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v4, p0, Lcom/esotericsoftware/a/r;->i:I

    const/high16 v7, 0x20000

    and-int/2addr v4, v7

    if-eqz v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    if-eqz v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    if-eqz v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    if-eqz v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    if-eqz v4, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    iget-object v4, p0, Lcom/esotericsoftware/a/r;->u:Lcom/esotericsoftware/a/c;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/esotericsoftware/a/c;->a()I

    move-result v4

    add-int/2addr v0, v4

    :cond_f
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    const-string v4, "RuntimeInvisibleTypeAnnotations"

    const-string v8, "RuntimeVisibleTypeAnnotations"

    const/4 v9, 0x2

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v0, v0, 0xc

    iget v10, p0, Lcom/esotericsoftware/a/r;->E:I

    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_10

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_10
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_11

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_11
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_12

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_12
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_13

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_13
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Lcom/esotericsoftware/a/b;->b()I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_14
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/esotericsoftware/a/b;->b()I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v10

    :cond_15
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->S:Lcom/esotericsoftware/a/c;

    if-eqz v10, :cond_16

    iget-object v11, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v10, v11}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;)I

    move-result v10

    add-int/2addr v0, v10

    :cond_16
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v11, "Code"

    invoke-virtual {v10, v11}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget v0, p0, Lcom/esotericsoftware/a/r;->w:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->x:I

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v10, v10, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v11, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v11, v11, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {v0, v10, v2, v11}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iget v0, p0, Lcom/esotericsoftware/a/r;->E:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget v0, p0, Lcom/esotericsoftware/a/r;->E:I

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    :goto_1
    if-eqz v0, :cond_17

    iget-object v10, v0, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    iget v10, v10, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {p1, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v10

    iget-object v11, v0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iget v11, v11, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v10, v11}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v10

    iget-object v11, v0, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    iget v11, v11, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v10, v11}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v10

    iget v11, v0, Lcom/esotericsoftware/a/n;->e:I

    invoke-virtual {v10, v11}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_1

    :cond_17
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_2

    :cond_18
    const/4 v0, 0x0

    :goto_2
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-eqz v10, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    if-eqz v10, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    if-eqz v10, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->S:Lcom/esotericsoftware/a/c;

    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Lcom/esotericsoftware/a/c;->a()I

    move-result v10

    add-int/2addr v0, v10

    :cond_1e
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v10, "LocalVariableTable"

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v0, v9

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->J:I

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v10}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_1f
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v10, "LocalVariableTypeTable"

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v0, v9

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->L:I

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v10}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_20
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v10, "LineNumberTable"

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v0, v9

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->N:I

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v10}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_21
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v0, v0, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v0, v6

    const/16 v10, 0x32

    if-lt v0, v10, :cond_22

    const/4 v0, 0x1

    goto :goto_3

    :cond_22
    const/4 v0, 0x0

    :goto_3
    iget-object v10, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    if-eqz v0, :cond_23

    const-string v0, "StackMapTable"

    goto :goto_4

    :cond_23
    const-string v0, "StackMap"

    :goto_4
    invoke-virtual {v10, v0}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v0, v9

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->z:I

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v10}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_24
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_25
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_26
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->S:Lcom/esotericsoftware/a/c;

    if-eqz v0, :cond_27

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v10, p1}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/d;)V

    :cond_27
    iget v0, p0, Lcom/esotericsoftware/a/r;->g:I

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v10, "Exceptions"

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v10, p0, Lcom/esotericsoftware/a/r;->g:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget v0, p0, Lcom/esotericsoftware/a/r;->g:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v0, 0x0

    :goto_5
    iget v10, p0, Lcom/esotericsoftware/a/r;->g:I

    if-ge v0, v10, :cond_28

    iget-object v10, p0, Lcom/esotericsoftware/a/r;->h:[I

    aget v10, v10, v0

    invoke-virtual {p1, v10}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_28
    iget v0, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v0, v0, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v0, v6

    if-lt v0, v5, :cond_29

    iget v0, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    :cond_29
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :cond_2a
    iget v0, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :cond_2b
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_2c
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    iget v1, p0, Lcom/esotericsoftware/a/r;->H:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_2d
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    iget-object v0, v0, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_2e
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_2f
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_30
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_31
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_32
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    iget v1, p0, Lcom/esotericsoftware/a/r;->t:I

    invoke-static {v0, v1, p1}, Lcom/esotericsoftware/a/b;->a([Lcom/esotericsoftware/a/b;ILcom/esotericsoftware/a/d;)V

    :cond_33
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    iget v1, p0, Lcom/esotericsoftware/a/r;->t:I

    invoke-static {v0, v1, p1}, Lcom/esotericsoftware/a/b;->a([Lcom/esotericsoftware/a/b;ILcom/esotericsoftware/a/d;)V

    :cond_34
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->u:Lcom/esotericsoftware/a/c;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/d;)V

    :cond_35
    return-void
.end method

.method public final a(Lcom/esotericsoftware/a/p;)V
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/a/r;->T:Z

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v2, v2, Lcom/esotericsoftware/a/d;->a:[B

    invoke-virtual {p1, v1, v2}, Lcom/esotericsoftware/a/p;->a(I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/esotericsoftware/a/r;->T:Z

    iget v0, p1, Lcom/esotericsoftware/a/p;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/esotericsoftware/a/p;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget v1, v1, Lcom/esotericsoftware/a/p;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget v1, v0, Lcom/esotericsoftware/a/p;->a:I

    iget v2, p1, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/a/p;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iput-object v0, p1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    :cond_2
    iput-object p1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget-object v0, p1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    if-nez v0, :cond_3

    new-instance v0, Lcom/esotericsoftware/a/l;

    invoke-direct {v0}, Lcom/esotericsoftware/a/l;-><init>()V

    iput-object v0, p1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v0, p1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iput-object p1, v0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/esotericsoftware/a/p;->c:I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iget v1, v1, Lcom/esotericsoftware/a/p;->c:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iget v1, v0, Lcom/esotericsoftware/a/p;->a:I

    iget v2, p1, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/esotericsoftware/a/p;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iput-object v0, p1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    return-void

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    iput-object p1, v0, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    :cond_5
    iput-object p1, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    return-void

    :cond_6
    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/esotericsoftware/a/r;->aa:I

    iput v1, v0, Lcom/esotericsoftware/a/p;->e:I

    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/a/r;->c(ILcom/esotericsoftware/a/p;)V

    :cond_7
    iput-object p1, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iput v2, p0, Lcom/esotericsoftware/a/r;->Z:I

    iput v2, p0, Lcom/esotericsoftware/a/r;->aa:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    if-eqz v0, :cond_8

    iput-object p1, v0, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    :cond_8
    iput-object p1, p0, Lcom/esotericsoftware/a/r;->X:Lcom/esotericsoftware/a/p;

    :cond_9
    return-void
.end method

.method public final a(Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/a/r;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/r;->E:I

    new-instance v0, Lcom/esotericsoftware/a/n;

    invoke-direct {v0}, Lcom/esotericsoftware/a/n;-><init>()V

    iput-object p1, v0, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    iput-object p2, v0, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    iput-object p3, v0, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    iput-object p4, v0, Lcom/esotericsoftware/a/n;->d:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, p4}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Lcom/esotericsoftware/a/n;->e:I

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->G:Lcom/esotericsoftware/a/n;

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    goto :goto_1

    :cond_1
    iput-object v0, p1, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    :goto_1
    iput-object v0, p0, Lcom/esotericsoftware/a/r;->G:Lcom/esotericsoftware/a/n;

    return-void
.end method

.method public final a(Lcom/esotericsoftware/a/p;[I[Lcom/esotericsoftware/a/p;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v2, v1, Lcom/esotericsoftware/a/d;->b:I

    rem-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    array-length v3, p3

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :goto_0
    array-length v1, p3

    if-ge v4, v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    aget v3, p2, v4

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    aget-object v1, p3, v4

    iget-object v3, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v1, v3, v0, v2}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/d;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v1, 0x12

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_4

    iget v4, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v4, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v1, v4, v5, p1}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_2

    :cond_0
    iget v0, p1, Lcom/esotericsoftware/a/o;->b:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Lcom/esotericsoftware/a/o;->b:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    add-int/lit8 v0, v0, 0x2

    :goto_1
    iget v4, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, v4, :cond_3

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_3
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_4
    :goto_2
    iget v0, p1, Lcom/esotericsoftware/a/o;->a:I

    iget v4, p1, Lcom/esotericsoftware/a/o;->b:I

    if-eq v4, v3, :cond_7

    iget p1, p1, Lcom/esotericsoftware/a/o;->b:I

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 p1, 0x100

    if-lt v0, p1, :cond_6

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void

    :cond_6
    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    return-void

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/r;->H:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/m;[Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    .line 2000
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/a/d;

    invoke-direct {v1}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    :cond_0
    move-object v7, v1

    iget v8, v7, Lcom/esotericsoftware/a/d;->b:I

    invoke-virtual {p3}, Lcom/esotericsoftware/a/m;->hashCode()I

    move-result v9

    iget v2, p3, Lcom/esotericsoftware/a/m;->a:I

    iget-object v3, p3, Lcom/esotericsoftware/a/m;->b:Ljava/lang/String;

    iget-object v4, p3, Lcom/esotericsoftware/a/m;->c:Ljava/lang/String;

    iget-object v5, p3, Lcom/esotericsoftware/a/m;->d:Ljava/lang/String;

    .line 3000
    iget-boolean v6, p3, Lcom/esotericsoftware/a/m;->e:Z

    move-object v1, v0

    .line 4000
    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;

    move-result-object p3

    iget p3, p3, Lcom/esotericsoftware/a/o;->a:I

    .line 2000
    invoke-virtual {v7, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    array-length p3, p4

    invoke-virtual {v7, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    aget-object v3, p4, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v9, v4

    .line 5000
    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/Object;)Lcom/esotericsoftware/a/o;

    move-result-object v3

    iget v3, v3, Lcom/esotericsoftware/a/o;->a:I

    .line 2000
    invoke-virtual {v7, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p4, v7, Lcom/esotericsoftware/a/d;->a:[B

    add-int/lit8 p3, p3, 0x2

    shl-int/lit8 p3, p3, 0x1

    const v2, 0x7fffffff

    and-int/2addr v2, v9

    iget-object v3, v0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    array-length v4, v3

    rem-int v4, v2, v4

    aget-object v3, v3, v4

    :goto_1
    if-eqz v3, :cond_5

    iget v4, v3, Lcom/esotericsoftware/a/o;->b:I

    const/16 v5, 0x21

    if-ne v4, v5, :cond_4

    iget v4, v3, Lcom/esotericsoftware/a/o;->h:I

    if-eq v4, v2, :cond_2

    goto :goto_3

    :cond_2
    iget v4, v3, Lcom/esotericsoftware/a/o;->c:I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p3, :cond_5

    add-int v6, v8, v5

    aget-byte v6, p4, v6

    add-int v9, v4, v5

    aget-byte v9, p4, v9

    if-eq v6, v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v3, v3, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget p3, v3, Lcom/esotericsoftware/a/o;->a:I

    iput v8, v7, Lcom/esotericsoftware/a/d;->b:I

    goto :goto_4

    :cond_6
    iget p3, v0, Lcom/esotericsoftware/a/g;->p:I

    add-int/lit8 p4, p3, 0x1

    iput p4, v0, Lcom/esotericsoftware/a/g;->p:I

    new-instance p4, Lcom/esotericsoftware/a/o;

    invoke-direct {p4, p3}, Lcom/esotericsoftware/a/o;-><init>(I)V

    invoke-virtual {p4, v8, v2}, Lcom/esotericsoftware/a/o;->a(II)V

    invoke-virtual {v0, p4}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :goto_4
    iget-object p4, v0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-virtual {p4, p1, p2, p3}, Lcom/esotericsoftware/a/o;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p4, v0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p4}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object p4

    if-nez p4, :cond_7

    const/16 p4, 0x12

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p4, p3, p1}, Lcom/esotericsoftware/a/g;->a(III)V

    new-instance p4, Lcom/esotericsoftware/a/o;

    iget p1, v0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p3, p1, 0x1

    iput p3, v0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p3, v0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-direct {p4, p1, p3}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {v0, p4}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_7
    iget p1, p4, Lcom/esotericsoftware/a/o;->c:I

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v0, 0xba

    if-eqz p3, :cond_b

    iget v2, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v2, :cond_8

    iget-object p1, p3, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, v0, v1, p2, p4}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    invoke-static {p2}, Lcom/esotericsoftware/a/t;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p4, Lcom/esotericsoftware/a/o;->c:I

    :cond_9
    iget p2, p0, Lcom/esotericsoftware/a/r;->Z:I

    shr-int/lit8 p3, p1, 0x2

    sub-int/2addr p2, p3

    and-int/lit8 p1, p1, 0x3

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iget p1, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le p2, p1, :cond_a

    iput p2, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_a
    iput p2, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p2, p4, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {p1, v0, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/a/d;

    invoke-direct {v1}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/a/r;->L:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/a/r;->L:I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    iget v2, p4, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v2, p5, Lcom/esotericsoftware/a/p;->c:I

    iget v3, p4, Lcom/esotericsoftware/a/p;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v2, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_1
    iget-object p3, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    if-nez p3, :cond_2

    new-instance p3, Lcom/esotericsoftware/a/d;

    invoke-direct {p3}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object p3, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    :cond_2
    iget p3, p0, Lcom/esotericsoftware/a/r;->J:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/esotericsoftware/a/r;->J:I

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    iget v1, p4, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {p3, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p3

    iget p5, p5, Lcom/esotericsoftware/a/p;->c:I

    iget p4, p4, Lcom/esotericsoftware/a/p;->c:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p3

    iget-object p4, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p4, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    iget-object p3, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p3, p2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget p1, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    iget p1, p0, Lcom/esotericsoftware/a/r;->x:I

    if-le p6, p1, :cond_5

    iput p6, p0, Lcom/esotericsoftware/a/r;->x:I

    :cond_5
    return-void
.end method

.method final b()I
    .locals 9

    iget v0, p0, Lcom/esotericsoftware/a/r;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/r;->f:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xffff

    const/16 v6, 0x8

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    if-gt v0, v5, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "Code"

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v0, v0, 0x12

    iget v7, p0, Lcom/esotericsoftware/a/r;->E:I

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v7

    add-int/2addr v0, v6

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    iget v7, v7, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_1
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v8, "LocalVariableTypeTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    iget v7, v7, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_2
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v8, "LineNumberTable"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget v7, v7, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_3
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v7, v7, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v7, v5

    const/16 v8, 0x32

    if-lt v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    if-eqz v7, :cond_5

    const-string v7, "StackMapTable"

    goto :goto_1

    :cond_5
    const-string v7, "StackMap"

    :goto_1
    invoke-virtual {v8, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->A:Lcom/esotericsoftware/a/d;

    iget v7, v7, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_6
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_7
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_8
    iget-object v7, p0, Lcom/esotericsoftware/a/r;->S:Lcom/esotericsoftware/a/c;

    if-eqz v7, :cond_b

    iget-object v8, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x8

    :cond_b
    :goto_2
    iget v7, p0, Lcom/esotericsoftware/a/r;->g:I

    if-lez v7, :cond_c

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v8, "Exceptions"

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget v7, p0, Lcom/esotericsoftware/a/r;->g:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    :cond_c
    iget v7, p0, Lcom/esotericsoftware/a/r;->i:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v7, v7, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v5, v7

    const/16 v7, 0x31

    if-lt v5, v7, :cond_d

    iget v5, p0, Lcom/esotericsoftware/a/r;->i:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-eqz v5, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "Synthetic"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_e
    iget v5, p0, Lcom/esotericsoftware/a/r;->i:I

    const/high16 v7, 0x20000

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "Deprecated"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_f
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "Signature"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v7, p0, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_10
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "MethodParameters"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->I:Lcom/esotericsoftware/a/d;

    iget v5, v5, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, v5, 0x7

    add-int/2addr v0, v5

    :cond_11
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "AnnotationDefault"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->m:Lcom/esotericsoftware/a/d;

    iget v5, v5, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v0, v5

    :cond_12
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "RuntimeVisibleAnnotations"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->n:Lcom/esotericsoftware/a/b;

    invoke-virtual {v5}, Lcom/esotericsoftware/a/b;->b()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_13
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v7, "RuntimeInvisibleAnnotations"

    invoke-virtual {v5, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->o:Lcom/esotericsoftware/a/b;

    invoke-virtual {v5}, Lcom/esotericsoftware/a/b;->b()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_14
    iget-object v5, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->p:Lcom/esotericsoftware/a/b;

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    add-int/2addr v2, v6

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->q:Lcom/esotericsoftware/a/b;

    invoke-virtual {v1}, Lcom/esotericsoftware/a/b;->b()I

    move-result v1

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    array-length v2, v1

    iget v5, p0, Lcom/esotericsoftware/a/r;->t:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_3
    iget v2, p0, Lcom/esotericsoftware/a/r;->t:I

    if-lt v1, v2, :cond_18

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->r:[Lcom/esotericsoftware/a/b;

    aget-object v5, v2, v1

    if-nez v5, :cond_17

    const/4 v2, 0x0

    goto :goto_4

    :cond_17
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_18
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    array-length v2, v1

    iget v5, p0, Lcom/esotericsoftware/a/r;->t:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v0, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    :goto_5
    iget v2, p0, Lcom/esotericsoftware/a/r;->t:I

    if-lt v1, v2, :cond_1a

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->s:[Lcom/esotericsoftware/a/b;

    aget-object v3, v2, v1

    if-nez v3, :cond_19

    const/4 v2, 0x0

    goto :goto_6

    :cond_19
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1a
    iget-object v1, p0, Lcom/esotericsoftware/a/r;->u:Lcom/esotericsoftware/a/c;

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method public final b(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    const v0, -0xffff01

    and-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/a/r;->P:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/a/b;->a(ILcom/esotericsoftware/a/u;Lcom/esotericsoftware/a/d;)V

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget p2, v4, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final b(II)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v1, 0x100

    const/16 v2, 0xa9

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    iget v3, v0, Lcom/esotericsoftware/a/p;->a:I

    or-int/2addr v3, v1

    iput v3, v0, Lcom/esotericsoftware/a/p;->a:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    iget v3, p0, Lcom/esotericsoftware/a/r;->Z:I

    iput v3, v0, Lcom/esotericsoftware/a/p;->d:I

    invoke-direct {p0}, Lcom/esotericsoftware/a/r;->c()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    sget-object v3, Lcom/esotericsoftware/a/l;->a:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/esotericsoftware/a/r;->aa:I

    if-le v0, v3, :cond_2

    iput v0, p0, Lcom/esotericsoftware/a/r;->aa:I

    :cond_2
    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_3
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x37

    if-eq p1, v0, :cond_5

    const/16 v0, 0x39

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p2, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v0, p2, 0x2

    :goto_2
    iget v4, p0, Lcom/esotericsoftware/a/r;->x:I

    if-le v0, v4, :cond_6

    iput v0, p0, Lcom/esotericsoftware/a/r;->x:I

    :cond_6
    const/4 v0, 0x4

    const/16 v4, 0x36

    if-ge p2, v0, :cond_8

    if-eq p1, v2, :cond_8

    if-ge p1, v4, :cond_7

    add-int/lit8 v0, p1, -0x15

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1a

    goto :goto_3

    :cond_7
    add-int/lit8 v0, p1, -0x36

    shl-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3b

    :goto_3
    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    if-lt p2, v1, :cond_9

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    goto :goto_4

    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    :goto_4
    if-lt p1, v4, :cond_a

    iget p1, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez p1, :cond_a

    iget p1, p0, Lcom/esotericsoftware/a/r;->E:I

    if-lez p1, :cond_a

    new-instance p1, Lcom/esotericsoftware/a/p;

    invoke-direct {p1}, Lcom/esotericsoftware/a/p;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/p;)V

    :cond_a
    return-void
.end method

.method public final b(ILcom/esotericsoftware/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/r;->N:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget p2, p2, Lcom/esotericsoftware/a/p;->c:I

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v1, 0xc5

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v2, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/esotericsoftware/a/r;->Z:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final c(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/a/b;->a(ILcom/esotericsoftware/a/u;Lcom/esotericsoftware/a/d;)V

    iget-object p1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget-object v1, p0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget p2, v4, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->Q:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/r;->R:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final c(II)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v0, v0, Lcom/esotericsoftware/a/d;->b:I

    iput v0, p0, Lcom/esotericsoftware/a/r;->P:I

    iget-object v0, p0, Lcom/esotericsoftware/a/r;->Y:Lcom/esotericsoftware/a/p;

    const/16 v1, 0x84

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/l;->a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/a/r;->V:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/esotericsoftware/a/r;->x:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lcom/esotericsoftware/a/r;->x:I

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_3

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_3

    const/16 v0, -0x80

    if-ge p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final d(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/esotericsoftware/a/r;->T:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_24

    .line 6000
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v2, v2, Lcom/esotericsoftware/a/d;->a:[B

    new-array v8, v6, [I

    new-array v9, v6, [I

    iget-object v10, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    new-array v10, v10, [Z

    const/4 v11, 0x3

    :goto_0
    if-ne v11, v5, :cond_0

    const/4 v11, 0x2

    :cond_0
    const/4 v13, 0x0

    :goto_1
    array-length v14, v2

    const/16 v15, 0xc9

    const/4 v12, 0x4

    if-ge v13, v14, :cond_d

    aget-byte v14, v2, v13

    and-int/lit16 v14, v14, 0xff

    sget-object v18, Lcom/esotericsoftware/a/g;->c:[B

    aget-byte v18, v18, v14

    packed-switch v18, :pswitch_data_0

    :cond_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x4

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v12, v13, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v14, 0x84

    if-ne v12, v14, :cond_1

    add-int/lit8 v13, v13, 0x6

    goto/16 :goto_9

    :pswitch_2
    if-ne v11, v7, :cond_2

    invoke-static {v8, v9, v6, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v12

    and-int/2addr v12, v5

    neg-int v12, v12

    goto :goto_2

    :cond_2
    aget-boolean v12, v10, v13

    if-nez v12, :cond_3

    and-int/lit8 v12, v13, 0x3

    aput-boolean v7, v10, v13

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    add-int/lit8 v14, v13, 0x4

    and-int/lit8 v13, v13, 0x3

    sub-int/2addr v14, v13

    add-int/lit8 v13, v14, 0x4

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    mul-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v4

    add-int/2addr v14, v13

    move v13, v14

    goto/16 :goto_a

    :pswitch_3
    if-ne v11, v7, :cond_4

    invoke-static {v8, v9, v6, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v14

    and-int/2addr v14, v5

    neg-int v14, v14

    goto :goto_3

    :cond_4
    aget-boolean v14, v10, v13

    if-nez v14, :cond_5

    and-int/lit8 v14, v13, 0x3

    aput-boolean v7, v10, v13

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    add-int/lit8 v15, v13, 0x4

    and-int/lit8 v13, v13, 0x3

    sub-int/2addr v15, v13

    add-int/lit8 v13, v15, 0x8

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    add-int/lit8 v4, v15, 0x4

    invoke-static {v2, v4}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v4

    sub-int/2addr v13, v4

    add-int/2addr v13, v7

    mul-int/lit8 v13, v13, 0x4

    add-int/lit8 v13, v13, 0xc

    add-int/2addr v15, v13

    move v12, v14

    move v13, v15

    goto :goto_a

    :pswitch_4
    if-le v14, v15, :cond_7

    const/16 v4, 0xda

    if-ge v14, v4, :cond_6

    add-int/lit8 v14, v14, -0x31

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, -0x14

    :goto_4
    add-int/lit8 v4, v13, 0x1

    invoke-static {v2, v4}, Lcom/esotericsoftware/a/r;->a([BI)I

    move-result v4

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v13, 0x1

    invoke-static {v2, v4}, Lcom/esotericsoftware/a/r;->b([BI)S

    move-result v4

    :goto_5
    add-int/2addr v4, v13

    invoke-static {v8, v9, v13, v4}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v4

    const/16 v12, -0x8000

    if-lt v4, v12, :cond_8

    const/16 v12, 0x7fff

    if-le v4, v12, :cond_b

    :cond_8
    aget-boolean v4, v10, v13

    if-nez v4, :cond_b

    const/16 v4, 0xa7

    if-eq v14, v4, :cond_a

    const/16 v4, 0xa8

    if-ne v14, v4, :cond_9

    goto :goto_6

    :cond_9
    const/16 v17, 0x5

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v17, 0x2

    :goto_7
    aput-boolean v7, v10, v13

    move/from16 v12, v17

    goto :goto_8

    :cond_b
    const/4 v12, 0x0

    :goto_8
    add-int/lit8 v13, v13, 0x3

    goto :goto_a

    :pswitch_5
    add-int/lit8 v13, v13, 0x5

    goto :goto_9

    :pswitch_6
    add-int/lit8 v13, v13, 0x3

    goto :goto_9

    :pswitch_7
    add-int/lit8 v13, v13, 0x2

    goto :goto_9

    :pswitch_8
    add-int/lit8 v13, v13, 0x1

    :goto_9
    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_c

    array-length v4, v8

    add-int/2addr v4, v7

    new-array v4, v4, [I

    array-length v14, v9

    add-int/2addr v14, v7

    new-array v14, v14, [I

    array-length v15, v8

    invoke-static {v8, v6, v4, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v15, v9

    invoke-static {v9, v6, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    aput v13, v4, v8

    array-length v8, v9

    aput v12, v14, v8

    move-object v8, v4

    move-object v9, v14

    if-lez v12, :cond_c

    const/4 v11, 0x3

    :cond_c
    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_d
    if-ge v11, v5, :cond_e

    add-int/lit8 v11, v11, -0x1

    :cond_e
    if-nez v11, :cond_23

    new-instance v4, Lcom/esotericsoftware/a/d;

    iget-object v11, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v11, v11, Lcom/esotericsoftware/a/d;->b:I

    invoke-direct {v4, v11}, Lcom/esotericsoftware/a/d;-><init>(I)V

    const/4 v11, 0x0

    :goto_b
    iget-object v13, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v13, v13, Lcom/esotericsoftware/a/d;->b:I

    if-ge v11, v13, :cond_18

    aget-byte v13, v2, v11

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lcom/esotericsoftware/a/g;->c:[B

    aget-byte v14, v14, v13

    packed-switch v14, :pswitch_data_1

    :pswitch_9
    const/4 v5, 0x5

    invoke-virtual {v4, v2, v11, v12}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_15

    :pswitch_a
    add-int/lit8 v13, v11, 0x1

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0x84

    if-ne v13, v14, :cond_f

    const/4 v13, 0x6

    invoke-virtual {v4, v2, v11, v13}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    add-int/lit8 v11, v11, 0x6

    goto :goto_b

    :cond_f
    invoke-virtual {v4, v2, v11, v12}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    add-int/lit8 v11, v11, 0x4

    goto :goto_b

    :pswitch_b
    add-int/lit8 v13, v11, 0x4

    and-int/lit8 v14, v11, 0x3

    sub-int/2addr v13, v14

    const/16 v14, 0xab

    invoke-virtual {v4, v14}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget v14, v4, Lcom/esotericsoftware/a/d;->b:I

    rem-int/2addr v14, v12

    rsub-int/lit8 v14, v14, 0x4

    rem-int/2addr v14, v12

    invoke-virtual {v4, v3, v6, v14}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v14

    add-int/2addr v14, v11

    add-int/2addr v13, v12

    invoke-static {v8, v9, v11, v14}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v14

    add-int/2addr v13, v12

    invoke-virtual {v4, v14}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :goto_c
    if-lez v14, :cond_10

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v13, v13, 0x4

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v5

    add-int/2addr v5, v11

    add-int/2addr v13, v12

    invoke-static {v8, v9, v11, v5}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x3

    goto :goto_c

    :cond_10
    move v11, v13

    goto :goto_e

    :pswitch_c
    add-int/lit8 v5, v11, 0x4

    and-int/lit8 v13, v11, 0x3

    sub-int/2addr v5, v13

    const/16 v13, 0xaa

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    iget v13, v4, Lcom/esotericsoftware/a/d;->b:I

    rem-int/2addr v13, v12

    rsub-int/lit8 v13, v13, 0x4

    rem-int/2addr v13, v12

    invoke-virtual {v4, v3, v6, v13}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    add-int/2addr v13, v11

    add-int/2addr v5, v12

    invoke-static {v8, v9, v11, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    add-int/2addr v5, v12

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v14

    sub-int/2addr v14, v13

    add-int/2addr v14, v7

    add-int/2addr v5, v12

    add-int/lit8 v13, v5, -0x4

    invoke-static {v2, v13}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :goto_d
    if-lez v14, :cond_11

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v13

    add-int/2addr v13, v11

    add-int/lit8 v5, v5, 0x4

    invoke-static {v8, v9, v11, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    :cond_11
    move v11, v5

    :goto_e
    const/4 v5, 0x5

    goto/16 :goto_15

    :pswitch_d
    add-int/lit8 v5, v11, 0x1

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->c([BI)I

    move-result v5

    add-int/2addr v5, v11

    invoke-static {v8, v9, v11, v5}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v5

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    goto :goto_13

    :pswitch_e
    if-le v13, v15, :cond_13

    const/16 v5, 0xda

    if-ge v13, v5, :cond_12

    add-int/lit8 v13, v13, -0x31

    goto :goto_f

    :cond_12
    add-int/lit8 v13, v13, -0x14

    :goto_f
    add-int/lit8 v5, v11, 0x1

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->a([BI)I

    move-result v5

    goto :goto_10

    :cond_13
    add-int/lit8 v5, v11, 0x1

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->b([BI)S

    move-result v5

    :goto_10
    add-int/2addr v5, v11

    invoke-static {v8, v9, v11, v5}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v5

    aget-boolean v14, v10, v11

    if-eqz v14, :cond_17

    const/16 v14, 0xa7

    if-ne v13, v14, :cond_14

    const/16 v13, 0xc8

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_12

    :cond_14
    const/16 v14, 0xa8

    if-ne v13, v14, :cond_15

    invoke-virtual {v4, v15}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    goto :goto_12

    :cond_15
    const/16 v14, 0xa6

    if-gt v13, v14, :cond_16

    add-int/lit8 v13, v13, 0x1

    xor-int/2addr v13, v7

    sub-int/2addr v13, v7

    goto :goto_11

    :cond_16
    xor-int/lit8 v13, v13, 0x1

    :goto_11
    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/16 v13, 0xc8

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v5, v5, -0x3

    :goto_12
    invoke-virtual {v4, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    goto :goto_14

    :cond_17
    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    goto :goto_14

    :pswitch_f
    const/4 v5, 0x5

    invoke-virtual {v4, v2, v11, v5}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :goto_13
    add-int/lit8 v11, v11, 0x5

    goto :goto_15

    :pswitch_10
    const/4 v5, 0x5

    const/4 v13, 0x3

    invoke-virtual {v4, v2, v11, v13}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :goto_14
    add-int/lit8 v11, v11, 0x3

    goto :goto_15

    :pswitch_11
    const/4 v5, 0x5

    const/4 v13, 0x2

    invoke-virtual {v4, v2, v11, v13}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    add-int/lit8 v11, v11, 0x2

    goto :goto_15

    :pswitch_12
    const/4 v5, 0x5

    invoke-virtual {v4, v13}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v11, v11, 0x1

    :goto_15
    const/4 v5, 0x3

    goto/16 :goto_b

    :cond_18
    iget v2, v0, Lcom/esotericsoftware/a/r;->V:I

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    :goto_16
    if-eqz v2, :cond_1a

    iget v5, v2, Lcom/esotericsoftware/a/p;->c:I

    const/4 v11, 0x3

    sub-int/2addr v5, v11

    if-ltz v5, :cond_19

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_19

    iget v5, v2, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Lcom/esotericsoftware/a/p;->a:I

    :cond_19
    invoke-static {v8, v9, v2}, Lcom/esotericsoftware/a/r;->a([I[ILcom/esotericsoftware/a/p;)V

    iget-object v2, v2, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_16

    :cond_1a
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v2, v2, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    :goto_17
    iget-object v5, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v5, v5, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    array-length v5, v5

    if-ge v2, v5, :cond_1d

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v5, v5, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    aget-object v5, v5, v2

    if-eqz v5, :cond_1b

    iget v10, v5, Lcom/esotericsoftware/a/o;->b:I

    const/16 v11, 0x1f

    if-ne v10, v11, :cond_1b

    iget v10, v5, Lcom/esotericsoftware/a/o;->c:I

    invoke-static {v8, v9, v6, v10}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v10

    iput v10, v5, Lcom/esotericsoftware/a/o;->c:I

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1c
    iget v2, v0, Lcom/esotericsoftware/a/r;->z:I

    if-lez v2, :cond_1d

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iput-boolean v7, v2, Lcom/esotericsoftware/a/g;->v:Z

    :cond_1d
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    :goto_18
    if-eqz v2, :cond_1e

    iget-object v5, v2, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    invoke-static {v8, v9, v5}, Lcom/esotericsoftware/a/r;->a([I[ILcom/esotericsoftware/a/p;)V

    iget-object v5, v2, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    invoke-static {v8, v9, v5}, Lcom/esotericsoftware/a/r;->a([I[ILcom/esotericsoftware/a/p;)V

    iget-object v5, v2, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    invoke-static {v8, v9, v5}, Lcom/esotericsoftware/a/r;->a([I[ILcom/esotericsoftware/a/p;)V

    iget-object v2, v2, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_18

    :cond_1e
    const/4 v2, 0x0

    const/4 v5, 0x2

    :goto_19
    if-ge v2, v5, :cond_21

    if-nez v2, :cond_1f

    iget-object v10, v0, Lcom/esotericsoftware/a/r;->K:Lcom/esotericsoftware/a/d;

    goto :goto_1a

    :cond_1f
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->M:Lcom/esotericsoftware/a/d;

    :goto_1a
    if-eqz v10, :cond_20

    iget-object v11, v10, Lcom/esotericsoftware/a/d;->a:[B

    const/4 v12, 0x0

    :goto_1b
    iget v13, v10, Lcom/esotericsoftware/a/d;->b:I

    if-ge v12, v13, :cond_20

    invoke-static {v11, v12}, Lcom/esotericsoftware/a/r;->a([BI)I

    move-result v13

    invoke-static {v8, v9, v6, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v14

    invoke-static {v11, v12, v14}, Lcom/esotericsoftware/a/r;->a([BII)V

    add-int/lit8 v15, v12, 0x2

    invoke-static {v11, v15}, Lcom/esotericsoftware/a/r;->a([BI)I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v8, v9, v6, v13}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v13

    sub-int/2addr v13, v14

    invoke-static {v11, v15, v13}, Lcom/esotericsoftware/a/r;->a([BII)V

    add-int/lit8 v12, v12, 0xa

    goto :goto_1b

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_21
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    if-eqz v2, :cond_22

    iget-object v2, v2, Lcom/esotericsoftware/a/d;->a:[B

    const/4 v5, 0x0

    :goto_1c
    iget-object v10, v0, Lcom/esotericsoftware/a/r;->O:Lcom/esotericsoftware/a/d;

    iget v10, v10, Lcom/esotericsoftware/a/d;->b:I

    if-ge v5, v10, :cond_22

    invoke-static {v2, v5}, Lcom/esotericsoftware/a/r;->a([BI)I

    move-result v10

    invoke-static {v8, v9, v6, v10}, Lcom/esotericsoftware/a/r;->a([I[III)I

    move-result v10

    invoke-static {v2, v5, v10}, Lcom/esotericsoftware/a/r;->a([BII)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_1c

    :cond_22
    iput-object v4, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    goto :goto_1d

    :cond_23
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_24
    :goto_1d
    iget v2, v0, Lcom/esotericsoftware/a/r;->V:I

    const/16 v4, 0x20

    if-nez v2, :cond_4e

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    :goto_1e
    const-string v2, "java/lang/Throwable"

    const/high16 v5, 0x1700000

    if-eqz v1, :cond_27

    iget-object v8, v1, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    invoke-virtual {v8}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v8

    iget-object v9, v1, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    invoke-virtual {v9}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v9

    iget-object v10, v1, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    invoke-virtual {v10}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v10

    iget-object v11, v1, Lcom/esotericsoftware/a/n;->d:Ljava/lang/String;

    if-nez v11, :cond_25

    goto :goto_1f

    :cond_25
    iget-object v2, v1, Lcom/esotericsoftware/a/n;->d:Ljava/lang/String;

    :goto_1f
    iget-object v11, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v11, v2}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v5

    iget v5, v9, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v9, Lcom/esotericsoftware/a/p;->a:I

    :goto_20
    if-eq v8, v10, :cond_26

    new-instance v5, Lcom/esotericsoftware/a/i;

    invoke-direct {v5}, Lcom/esotericsoftware/a/i;-><init>()V

    iput v2, v5, Lcom/esotericsoftware/a/i;->a:I

    iput-object v9, v5, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget-object v11, v8, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iput-object v11, v5, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iput-object v5, v8, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v8, v8, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_20

    :cond_26
    iget-object v1, v1, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_1e

    :cond_27
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    iget-object v1, v1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget-object v8, v0, Lcom/esotericsoftware/a/r;->l:Ljava/lang/String;

    invoke-static {v8}, Lcom/esotericsoftware/a/t;->d(Ljava/lang/String;)[Lcom/esotericsoftware/a/t;

    move-result-object v8

    iget-object v9, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget v10, v0, Lcom/esotericsoftware/a/r;->i:I

    iget v11, v0, Lcom/esotericsoftware/a/r;->x:I

    .line 7000
    new-array v12, v11, [I

    iput-object v12, v1, Lcom/esotericsoftware/a/l;->c:[I

    new-array v12, v6, [I

    iput-object v12, v1, Lcom/esotericsoftware/a/l;->d:[I

    and-int/lit8 v12, v10, 0x8

    if-nez v12, :cond_29

    const/high16 v12, 0x80000

    and-int/2addr v10, v12

    if-nez v10, :cond_28

    iget-object v10, v1, Lcom/esotericsoftware/a/l;->c:[I

    iget-object v12, v9, Lcom/esotericsoftware/a/g;->o:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v12

    or-int/2addr v12, v5

    aput v12, v10, v6

    goto :goto_21

    :cond_28
    iget-object v10, v1, Lcom/esotericsoftware/a/l;->c:[I

    const v12, 0x1000006

    aput v12, v10, v6

    :goto_21
    const/4 v10, 0x1

    goto :goto_22

    :cond_29
    const/4 v10, 0x0

    :goto_22
    const/4 v12, 0x0

    :goto_23
    array-length v13, v8

    const v14, 0x1000003

    const v15, 0x1000004

    const/high16 v5, 0x1000000

    if-ge v12, v13, :cond_2c

    aget-object v13, v8, v12

    invoke-virtual {v13}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;)I

    move-result v13

    iget-object v6, v1, Lcom/esotericsoftware/a/l;->c:[I

    add-int/lit8 v17, v10, 0x1

    aput v13, v6, v10

    if-eq v13, v15, :cond_2b

    if-ne v13, v14, :cond_2a

    goto :goto_24

    :cond_2a
    move/from16 v10, v17

    goto :goto_25

    :cond_2b
    :goto_24
    iget-object v6, v1, Lcom/esotericsoftware/a/l;->c:[I

    add-int/lit8 v10, v17, 0x1

    aput v5, v6, v17

    :goto_25
    add-int/lit8 v12, v12, 0x1

    const/high16 v5, 0x1700000

    const/4 v6, 0x0

    goto :goto_23

    :cond_2c
    :goto_26
    if-ge v10, v11, :cond_2d

    iget-object v6, v1, Lcom/esotericsoftware/a/l;->c:[I

    add-int/lit8 v8, v10, 0x1

    aput v5, v6, v10

    move v10, v8

    goto :goto_26

    :cond_2d
    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/l;)V

    iget-object v1, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    const/4 v6, 0x0

    :goto_27
    if-eqz v1, :cond_47

    iget-object v8, v1, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    iput-object v3, v1, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    iget-object v9, v1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget v10, v1, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_2e

    iget v10, v1, Lcom/esotericsoftware/a/p;->a:I

    or-int/2addr v10, v4

    iput v10, v1, Lcom/esotericsoftware/a/p;->a:I

    :cond_2e
    iget v10, v1, Lcom/esotericsoftware/a/p;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v1, Lcom/esotericsoftware/a/p;->a:I

    iget-object v10, v9, Lcom/esotericsoftware/a/l;->d:[I

    array-length v10, v10

    iget v11, v1, Lcom/esotericsoftware/a/p;->e:I

    add-int/2addr v10, v11

    if-le v10, v6, :cond_2f

    move v6, v10

    :cond_2f
    iget-object v1, v1, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    :goto_28
    if-eqz v1, :cond_46

    iget-object v10, v1, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    invoke-virtual {v10}, Lcom/esotericsoftware/a/p;->a()Lcom/esotericsoftware/a/p;

    move-result-object v10

    iget-object v11, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v12, v10, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget v13, v1, Lcom/esotericsoftware/a/i;->a:I

    .line 8000
    iget-object v3, v9, Lcom/esotericsoftware/a/l;->c:[I

    array-length v3, v3

    iget-object v4, v9, Lcom/esotericsoftware/a/l;->d:[I

    array-length v4, v4

    iget-object v7, v12, Lcom/esotericsoftware/a/l;->c:[I

    if-nez v7, :cond_30

    new-array v7, v3, [I

    iput-object v7, v12, Lcom/esotericsoftware/a/l;->c:[I

    const/4 v7, 0x1

    goto :goto_29

    :cond_30
    const/4 v7, 0x0

    :goto_29
    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_2a
    const v19, 0x7fffff

    if-ge v7, v3, :cond_37

    iget-object v14, v9, Lcom/esotericsoftware/a/l;->e:[I

    if-eqz v14, :cond_35

    iget-object v14, v9, Lcom/esotericsoftware/a/l;->e:[I

    array-length v14, v14

    if-ge v7, v14, :cond_35

    iget-object v14, v9, Lcom/esotericsoftware/a/l;->e:[I

    aget v14, v14, v7

    if-eqz v14, :cond_35

    const/high16 v20, -0x10000000

    and-int v20, v14, v20

    const/high16 v21, 0xf000000

    and-int v15, v14, v21

    if-ne v15, v5, :cond_31

    goto :goto_2c

    :cond_31
    const/high16 v5, 0x2000000

    if-ne v15, v5, :cond_32

    iget-object v5, v9, Lcom/esotericsoftware/a/l;->c:[I

    and-int v15, v14, v19

    aget v5, v5, v15

    goto :goto_2b

    :cond_32
    iget-object v5, v9, Lcom/esotericsoftware/a/l;->d:[I

    and-int v15, v14, v19

    sub-int v15, v4, v15

    aget v5, v5, v15

    :goto_2b
    add-int v20, v20, v5

    move/from16 v5, v20

    const/high16 v15, 0x800000

    and-int/2addr v14, v15

    if-eqz v14, :cond_34

    const v14, 0x1000004

    if-eq v5, v14, :cond_33

    const v14, 0x1000003

    if-ne v5, v14, :cond_34

    :cond_33
    const/high16 v14, 0x1000000

    goto :goto_2c

    :cond_34
    move v14, v5

    goto :goto_2c

    :cond_35
    iget-object v5, v9, Lcom/esotericsoftware/a/l;->c:[I

    aget v14, v5, v7

    :goto_2c
    iget-object v5, v9, Lcom/esotericsoftware/a/l;->h:[I

    if-eqz v5, :cond_36

    invoke-virtual {v9, v11, v14}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I)I

    move-result v14

    :cond_36
    iget-object v5, v12, Lcom/esotericsoftware/a/l;->c:[I

    invoke-static {v11, v14, v5, v7}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I[II)Z

    move-result v5

    or-int v18, v18, v5

    add-int/lit8 v7, v7, 0x1

    const/high16 v5, 0x1000000

    const v14, 0x1000003

    const v15, 0x1000004

    goto :goto_2a

    :cond_37
    if-lez v13, :cond_3a

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_38

    iget-object v5, v9, Lcom/esotericsoftware/a/l;->c:[I

    aget v5, v5, v4

    iget-object v7, v12, Lcom/esotericsoftware/a/l;->c:[I

    invoke-static {v11, v5, v7, v4}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I[II)Z

    move-result v5

    or-int v18, v18, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_38
    iget-object v3, v12, Lcom/esotericsoftware/a/l;->d:[I

    if-nez v3, :cond_39

    const/4 v3, 0x1

    new-array v4, v3, [I

    iput-object v4, v12, Lcom/esotericsoftware/a/l;->d:[I

    const/16 v18, 0x1

    :cond_39
    iget-object v3, v12, Lcom/esotericsoftware/a/l;->d:[I

    const/4 v4, 0x0

    invoke-static {v11, v13, v3, v4}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I[II)Z

    move-result v3

    or-int v3, v18, v3

    const v14, 0x1000003

    goto/16 :goto_32

    :cond_3a
    iget-object v3, v9, Lcom/esotericsoftware/a/l;->d:[I

    array-length v3, v3

    iget-object v5, v9, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget v5, v5, Lcom/esotericsoftware/a/p;->d:I

    add-int/2addr v3, v5

    iget-object v5, v12, Lcom/esotericsoftware/a/l;->d:[I

    if-nez v5, :cond_3b

    iget v5, v9, Lcom/esotericsoftware/a/l;->g:I

    add-int/2addr v5, v3

    new-array v5, v5, [I

    iput-object v5, v12, Lcom/esotericsoftware/a/l;->d:[I

    const/16 v18, 0x1

    :cond_3b
    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v3, :cond_3d

    iget-object v7, v9, Lcom/esotericsoftware/a/l;->d:[I

    aget v7, v7, v5

    iget-object v13, v9, Lcom/esotericsoftware/a/l;->h:[I

    if-eqz v13, :cond_3c

    invoke-virtual {v9, v11, v7}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I)I

    move-result v7

    :cond_3c
    iget-object v13, v12, Lcom/esotericsoftware/a/l;->d:[I

    invoke-static {v11, v7, v13, v5}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I[II)Z

    move-result v7

    or-int v18, v18, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_3d
    const/4 v5, 0x0

    :goto_2f
    iget v7, v9, Lcom/esotericsoftware/a/l;->g:I

    if-ge v5, v7, :cond_44

    iget-object v7, v9, Lcom/esotericsoftware/a/l;->f:[I

    aget v7, v7, v5

    const/high16 v13, -0x10000000

    and-int/2addr v13, v7

    const/high16 v14, 0xf000000

    and-int/2addr v14, v7

    const/high16 v15, 0x1000000

    if-ne v14, v15, :cond_3f

    move v13, v7

    :cond_3e
    const v7, 0x1000004

    const v14, 0x1000003

    goto :goto_31

    :cond_3f
    const/high16 v15, 0x2000000

    if-ne v14, v15, :cond_40

    iget-object v14, v9, Lcom/esotericsoftware/a/l;->c:[I

    and-int v15, v7, v19

    aget v14, v14, v15

    goto :goto_30

    :cond_40
    iget-object v14, v9, Lcom/esotericsoftware/a/l;->d:[I

    and-int v15, v7, v19

    sub-int v15, v4, v15

    aget v14, v14, v15

    :goto_30
    add-int/2addr v13, v14

    const/high16 v14, 0x800000

    and-int/2addr v7, v14

    if-eqz v7, :cond_3e

    const v7, 0x1000004

    const v14, 0x1000003

    if-eq v13, v7, :cond_41

    if-ne v13, v14, :cond_42

    :cond_41
    const/high16 v13, 0x1000000

    :cond_42
    :goto_31
    iget-object v15, v9, Lcom/esotericsoftware/a/l;->h:[I

    if-eqz v15, :cond_43

    invoke-virtual {v9, v11, v13}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I)I

    move-result v13

    :cond_43
    iget-object v15, v12, Lcom/esotericsoftware/a/l;->d:[I

    add-int v7, v3, v5

    invoke-static {v11, v13, v15, v7}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;I[II)Z

    move-result v7

    or-int v18, v18, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_44
    const v14, 0x1000003

    move/from16 v3, v18

    :goto_32
    if-eqz v3, :cond_45

    iget-object v3, v10, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    if-nez v3, :cond_45

    iput-object v8, v10, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    move-object v8, v10

    :cond_45
    iget-object v1, v1, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/high16 v5, 0x1000000

    const/4 v7, 0x1

    const v15, 0x1000004

    goto/16 :goto_28

    :cond_46
    move-object v1, v8

    goto/16 :goto_27

    :cond_47
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    :goto_33
    if-eqz v1, :cond_4c

    iget-object v3, v1, Lcom/esotericsoftware/a/p;->f:Lcom/esotericsoftware/a/l;

    iget v4, v1, Lcom/esotericsoftware/a/p;->a:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    invoke-direct {v0, v3}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/l;)V

    :cond_48
    iget v3, v1, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_4b

    iget-object v3, v1, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    iget v4, v1, Lcom/esotericsoftware/a/p;->c:I

    if-nez v3, :cond_49

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget v5, v5, Lcom/esotericsoftware/a/d;->b:I

    goto :goto_34

    :cond_49
    iget v5, v3, Lcom/esotericsoftware/a/p;->c:I

    :goto_34
    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-lt v5, v4, :cond_4b

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v4

    :goto_35
    if-ge v7, v5, :cond_4a

    iget-object v8, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v8, v8, Lcom/esotericsoftware/a/d;->a:[B

    const/4 v9, 0x0

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_4a
    const/4 v9, 0x0

    iget-object v7, v0, Lcom/esotericsoftware/a/r;->v:Lcom/esotericsoftware/a/d;

    iget-object v7, v7, Lcom/esotericsoftware/a/d;->a:[B

    const/16 v8, -0x41

    aput-byte v8, v7, v5

    const/4 v5, 0x1

    invoke-direct {v0, v4, v9, v5}, Lcom/esotericsoftware/a/r;->a(III)I

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->D:[I

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v5, v2}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v5

    const/high16 v7, 0x1700000

    or-int/2addr v5, v7

    const/4 v8, 0x3

    aput v5, v4, v8

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/r;->d()V

    iget-object v4, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    invoke-static {v4, v1, v3}, Lcom/esotericsoftware/a/n;->a(Lcom/esotericsoftware/a/n;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/n;

    move-result-object v3

    iput-object v3, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    goto :goto_36

    :cond_4b
    const/high16 v7, 0x1700000

    const/4 v8, 0x3

    :goto_36
    iget-object v1, v1, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_33

    :cond_4c
    iget-object v1, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    const/4 v4, 0x0

    iput v4, v0, Lcom/esotericsoftware/a/r;->E:I

    :goto_37
    if-eqz v1, :cond_4d

    iget v2, v0, Lcom/esotericsoftware/a/r;->E:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/esotericsoftware/a/r;->E:I

    iget-object v1, v1, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_37

    :cond_4d
    iput v6, v0, Lcom/esotericsoftware/a/r;->w:I

    return-void

    :cond_4e
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5d

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->F:Lcom/esotericsoftware/a/n;

    :goto_38
    if-eqz v2, :cond_51

    iget-object v5, v2, Lcom/esotericsoftware/a/n;->a:Lcom/esotericsoftware/a/p;

    iget-object v6, v2, Lcom/esotericsoftware/a/n;->c:Lcom/esotericsoftware/a/p;

    iget-object v7, v2, Lcom/esotericsoftware/a/n;->b:Lcom/esotericsoftware/a/p;

    :goto_39
    if-eq v5, v7, :cond_50

    new-instance v8, Lcom/esotericsoftware/a/i;

    invoke-direct {v8}, Lcom/esotericsoftware/a/i;-><init>()V

    const v9, 0x7fffffff

    iput v9, v8, Lcom/esotericsoftware/a/i;->a:I

    iput-object v6, v8, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget v9, v5, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_4f

    iget-object v9, v5, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iput-object v9, v8, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iput-object v8, v5, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    goto :goto_3a

    :cond_4f
    iget-object v9, v5, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v9, v9, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iget-object v9, v9, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iput-object v9, v8, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iget-object v9, v5, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v9, v9, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iput-object v8, v9, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    :goto_3a
    iget-object v5, v5, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_39

    :cond_50
    iget-object v2, v2, Lcom/esotericsoftware/a/n;->f:Lcom/esotericsoftware/a/n;

    goto :goto_38

    :cond_51
    iget v2, v0, Lcom/esotericsoftware/a/r;->U:I

    if-lez v2, :cond_56

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6, v7, v2}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/p;JI)V

    iget-object v2, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    const/4 v5, 0x0

    :goto_3b
    if-eqz v2, :cond_53

    iget v8, v2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_52

    iget-object v8, v2, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v8, v8, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iget-object v8, v8, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget v9, v8, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_52

    add-int/lit8 v5, v5, 0x1

    int-to-long v9, v5

    const-wide/16 v11, 0x20

    div-long/2addr v9, v11

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    rem-int/lit8 v12, v5, 0x20

    shl-long v12, v6, v12

    or-long/2addr v9, v12

    iget v12, v0, Lcom/esotericsoftware/a/r;->U:I

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v9, v10, v12}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/p;JI)V

    goto :goto_3c

    :cond_52
    const/16 v11, 0x20

    const/4 v13, 0x0

    :goto_3c
    iget-object v2, v2, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_3b

    :cond_53
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    :goto_3d
    if-eqz v2, :cond_56

    iget v5, v2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_55

    iget-object v5, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    :goto_3e
    if-eqz v5, :cond_54

    iget v6, v5, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v6, v6, -0x801

    iput v6, v5, Lcom/esotericsoftware/a/p;->a:I

    iget-object v5, v5, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_3e

    :cond_54
    iget-object v5, v2, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget-object v5, v5, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    iget-object v5, v5, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    const-wide/16 v6, 0x0

    iget v8, v0, Lcom/esotericsoftware/a/r;->U:I

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/esotericsoftware/a/p;->a(Lcom/esotericsoftware/a/p;JI)V

    :cond_55
    iget-object v2, v2, Lcom/esotericsoftware/a/p;->g:Lcom/esotericsoftware/a/p;

    goto :goto_3d

    :cond_56
    iget-object v2, v0, Lcom/esotericsoftware/a/r;->W:Lcom/esotericsoftware/a/p;

    const/4 v6, 0x0

    :cond_57
    if-eqz v2, :cond_5c

    iget-object v4, v2, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    iget v5, v2, Lcom/esotericsoftware/a/p;->d:I

    iget v7, v2, Lcom/esotericsoftware/a/p;->e:I

    add-int/2addr v7, v5

    if-le v7, v6, :cond_58

    move v6, v7

    :cond_58
    iget-object v7, v2, Lcom/esotericsoftware/a/p;->h:Lcom/esotericsoftware/a/i;

    iget v2, v2, Lcom/esotericsoftware/a/p;->a:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_59

    iget-object v7, v7, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    :cond_59
    move-object v2, v4

    :goto_3f
    if-eqz v7, :cond_57

    iget-object v4, v7, Lcom/esotericsoftware/a/i;->b:Lcom/esotericsoftware/a/p;

    iget v8, v4, Lcom/esotericsoftware/a/p;->a:I

    const/16 v9, 0x8

    and-int/2addr v8, v9

    if-nez v8, :cond_5b

    iget v8, v7, Lcom/esotericsoftware/a/i;->a:I

    const v10, 0x7fffffff

    if-ne v8, v10, :cond_5a

    const/4 v8, 0x1

    goto :goto_40

    :cond_5a
    iget v8, v7, Lcom/esotericsoftware/a/i;->a:I

    add-int/2addr v8, v5

    :goto_40
    iput v8, v4, Lcom/esotericsoftware/a/p;->d:I

    iget v8, v4, Lcom/esotericsoftware/a/p;->a:I

    or-int/2addr v8, v9

    iput v8, v4, Lcom/esotericsoftware/a/p;->a:I

    iput-object v2, v4, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    move-object v2, v4

    :cond_5b
    iget-object v7, v7, Lcom/esotericsoftware/a/i;->c:Lcom/esotericsoftware/a/i;

    goto :goto_3f

    :cond_5c
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/esotericsoftware/a/r;->w:I

    return-void

    :cond_5d
    iput v1, v0, Lcom/esotericsoftware/a/r;->w:I

    move/from16 v1, p2

    iput v1, v0, Lcom/esotericsoftware/a/r;->x:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
