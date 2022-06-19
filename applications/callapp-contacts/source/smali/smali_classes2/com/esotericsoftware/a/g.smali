.class public final Lcom/esotericsoftware/a/g;
.super Lcom/esotericsoftware/a/f;


# static fields
.field static final c:[B


# instance fields
.field private A:I

.field private B:I

.field private C:[I

.field private D:I

.field private E:Lcom/esotericsoftware/a/d;

.field private F:I

.field private G:I

.field private H:Lcom/esotericsoftware/a/b;

.field private I:Lcom/esotericsoftware/a/b;

.field private J:Lcom/esotericsoftware/a/b;

.field private K:Lcom/esotericsoftware/a/b;

.field private L:Lcom/esotericsoftware/a/c;

.field private M:I

.field private N:Lcom/esotericsoftware/a/d;

.field private O:Z

.field private P:Z

.field d:Lcom/esotericsoftware/a/e;

.field e:I

.field f:I

.field final g:Lcom/esotericsoftware/a/d;

.field h:[Lcom/esotericsoftware/a/o;

.field i:I

.field final j:Lcom/esotericsoftware/a/o;

.field final k:Lcom/esotericsoftware/a/o;

.field final l:Lcom/esotericsoftware/a/o;

.field final m:Lcom/esotericsoftware/a/o;

.field n:[Lcom/esotericsoftware/a/o;

.field o:Ljava/lang/String;

.field p:I

.field q:Lcom/esotericsoftware/a/d;

.field r:Lcom/esotericsoftware/a/k;

.field s:Lcom/esotericsoftware/a/k;

.field t:Lcom/esotericsoftware/a/r;

.field u:Lcom/esotericsoftware/a/r;

.field v:Z

.field private w:S

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xdc

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v3, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/esotericsoftware/a/g;->c:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/f;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/g;->f:I

    new-instance v1, Lcom/esotericsoftware/a/d;

    invoke-direct {v1}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/16 v1, 0x100

    new-array v1, v1, [Lcom/esotericsoftware/a/o;

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    array-length v1, v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/a/g;->i:I

    new-instance v1, Lcom/esotericsoftware/a/o;

    invoke-direct {v1}, Lcom/esotericsoftware/a/o;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    new-instance v1, Lcom/esotericsoftware/a/o;

    invoke-direct {v1}, Lcom/esotericsoftware/a/o;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    new-instance v1, Lcom/esotericsoftware/a/o;

    invoke-direct {v1}, Lcom/esotericsoftware/a/o;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    new-instance v1, Lcom/esotericsoftware/a/o;

    invoke-direct {v1}, Lcom/esotericsoftware/a/o;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/a/g;->m:Lcom/esotericsoftware/a/o;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/esotericsoftware/a/g;->O:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/esotericsoftware/a/g;->P:Z

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/a/e;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/g;-><init>(I)V

    .line 1000
    iget v2, v1, Lcom/esotericsoftware/a/e;->d:I

    new-array v2, v2, [C

    iget-object v3, v1, Lcom/esotericsoftware/a/e;->b:[I

    array-length v3, v3

    new-array v4, v3, [Lcom/esotericsoftware/a/o;

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v3, :cond_d

    iget-object v7, v1, Lcom/esotericsoftware/a/e;->b:[I

    aget v7, v7, v6

    iget-object v8, v1, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v9, v7, -0x1

    aget-byte v8, v8, v9

    new-instance v9, Lcom/esotericsoftware/a/o;

    invoke-direct {v9, v6}, Lcom/esotericsoftware/a/o;-><init>(I)V

    const/4 v10, 0x0

    if-eq v8, v5, :cond_b

    const/16 v11, 0xf

    if-eq v8, v11, :cond_a

    const/16 v11, 0x12

    const/4 v12, 0x6

    if-eq v8, v11, :cond_4

    const/4 v11, 0x3

    if-eq v8, v11, :cond_3

    const/4 v11, 0x4

    if-eq v8, v11, :cond_2

    const/4 v11, 0x5

    if-eq v8, v11, :cond_1

    if-eq v8, v12, :cond_0

    packed-switch v8, :pswitch_data_0

    invoke-virtual {v1, v7, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v7, v10, v10}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move/from16 v16, v6

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v1, v7, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v7, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v11, v7, v10}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v10, v1, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v11, v7, 0x2

    invoke-virtual {v1, v11}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v11

    aget v10, v10, v11

    invoke-virtual {v1, v7, v2}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v1, v10, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v7, v11, v10}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/esotericsoftware/a/o;->a(D)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/esotericsoftware/a/o;->a(J)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v9, v7}, Lcom/esotericsoftware/a/o;->a(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/esotericsoftware/a/o;->a(I)V

    goto :goto_1

    :cond_4
    iget-object v8, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    if-nez v8, :cond_9

    .line 2000
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/a/e;->a()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    :goto_3
    const/4 v11, 0x0

    if-lez v10, :cond_6

    add-int/lit8 v13, v8, 0x2

    invoke-virtual {v1, v13, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    const-string v14, "BootstrapMethods"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v8, 0x4

    invoke-virtual {v1, v11}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v11

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_9

    add-int/lit8 v10, v8, 0x8

    invoke-virtual {v1, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    add-int/lit8 v12, v8, 0xa

    move v13, v12

    :goto_5
    if-ge v11, v10, :cond_8

    sub-int v14, v13, v8

    add-int/lit8 v14, v14, -0xa

    invoke-virtual {v1, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v15

    invoke-virtual {v1, v15, v2}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v15

    add-int/lit8 v5, v13, 0x2

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    :goto_6
    if-lez v5, :cond_7

    move/from16 v16, v6

    add-int/lit8 v6, v13, 0x4

    invoke-virtual {v1, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v15, v6

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v5, v5, -0x1

    move/from16 v6, v16

    goto :goto_6

    :cond_7
    move/from16 v16, v6

    add-int/lit8 v13, v13, 0x4

    new-instance v5, Lcom/esotericsoftware/a/o;

    invoke-direct {v5, v11}, Lcom/esotericsoftware/a/o;-><init>(I)V

    const v6, 0x7fffffff

    and-int/2addr v6, v15

    invoke-virtual {v5, v14, v6}, Lcom/esotericsoftware/a/o;->a(II)V

    iget v6, v5, Lcom/esotericsoftware/a/o;->h:I

    rem-int/2addr v6, v3

    aget-object v14, v4, v6

    iput-object v14, v5, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    aput-object v5, v4, v6

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    move/from16 v16, v6

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v5

    new-instance v6, Lcom/esotericsoftware/a/d;

    add-int/lit8 v8, v5, 0x3e

    invoke-direct {v6, v8}, Lcom/esotericsoftware/a/d;-><init>(I)V

    iget-object v8, v1, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v6, v8, v12, v5}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iput v10, v0, Lcom/esotericsoftware/a/g;->p:I

    iput-object v6, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    goto :goto_7

    :cond_9
    move/from16 v16, v6

    .line 1000
    :goto_7
    iget-object v5, v1, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v6, v7, 0x2

    invoke-virtual {v1, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v1, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v7

    invoke-virtual {v9, v6, v5, v7}, Lcom/esotericsoftware/a/o;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    :cond_a
    move/from16 v16, v6

    iget-object v5, v1, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v1, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, v1, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v8

    aget v6, v6, v8

    invoke-virtual {v1, v7}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    invoke-virtual {v1, v5, v2}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v7, v5, v8, v6}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move/from16 v16, v6

    iget-object v5, v1, Lcom/esotericsoftware/a/e;->c:[Ljava/lang/String;

    aget-object v5, v5, v16

    if-nez v5, :cond_c

    iget-object v5, v1, Lcom/esotericsoftware/a/e;->b:[I

    aget v5, v5, v16

    iget-object v6, v1, Lcom/esotericsoftware/a/e;->c:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    invoke-virtual {v1, v7, v5, v2}, Lcom/esotericsoftware/a/e;->a(II[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v16

    :cond_c
    invoke-virtual {v9, v8, v5, v10, v10}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move/from16 v6, v16

    :goto_9
    iget v5, v9, Lcom/esotericsoftware/a/o;->h:I

    rem-int/2addr v5, v3

    aget-object v7, v4, v5

    iput-object v7, v9, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    aput-object v9, v4, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    goto/16 :goto_0

    :cond_d
    iget-object v2, v1, Lcom/esotericsoftware/a/e;->b:[I

    aget v2, v2, v5

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    iget-object v6, v1, Lcom/esotericsoftware/a/e;->a:[B

    iget v7, v1, Lcom/esotericsoftware/a/e;->e:I

    sub-int/2addr v7, v2

    invoke-virtual {v5, v6, v2, v7}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    iput-object v4, v0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    int-to-double v6, v3

    mul-double v6, v6, v4

    double-to-int v2, v6

    iput v2, v0, Lcom/esotericsoftware/a/g;->i:I

    iput v3, v0, Lcom/esotericsoftware/a/g;->f:I

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->d:Lcom/esotericsoftware/a/e;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->a(II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method private b()Lcom/esotericsoftware/a/o;
    .locals 5

    iget-short v0, p0, Lcom/esotericsoftware/a/g;->w:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/esotericsoftware/a/g;->w:S

    new-instance v1, Lcom/esotericsoftware/a/o;

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {v1, v0, v2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/esotericsoftware/a/o;

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    :cond_0
    iget-short v0, p0, Lcom/esotericsoftware/a/g;->w:S

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    array-length v3, v2

    if-ne v0, v3, :cond_1

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/esotericsoftware/a/o;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    iget-short v2, p0, Lcom/esotericsoftware/a/g;->w:S

    aput-object v1, v0, v2

    return-object v1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/o;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/esotericsoftware/a/g;->a(III)V

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/esotericsoftware/a/o;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method private f(Ljava/lang/String;)Lcom/esotericsoftware/a/o;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    iget p1, v0, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method final a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    const/16 v1, 0x1f

    iput v1, v0, Lcom/esotericsoftware/a/o;->b:I

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    iput p2, v0, Lcom/esotericsoftware/a/o;->c:I

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    iput-object p1, v0, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    iput p1, v0, Lcom/esotericsoftware/a/o;->h:I

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/a/g;->b()Lcom/esotericsoftware/a/o;

    move-result-object p1

    :cond_0
    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method public final a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    invoke-static {p1, p2, v4}, Lcom/esotericsoftware/a/b;->a(ILcom/esotericsoftware/a/u;Lcom/esotericsoftware/a/d;)V

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    iget p2, v4, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v5, p2, -0x2

    const/4 v2, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->J:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->J:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/g;->K:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->K:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;
    .locals 6

    new-instance v4, Lcom/esotericsoftware/a/d;

    invoke-direct {v4}, Lcom/esotericsoftware/a/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/b;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/b;-><init>(Lcom/esotericsoftware/a/g;ZLcom/esotericsoftware/a/d;Lcom/esotericsoftware/a/d;I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    iput-object p2, p1, Lcom/esotericsoftware/a/b;->c:Lcom/esotericsoftware/a/b;

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    :goto_0
    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/a/j;
    .locals 8

    new-instance v7, Lcom/esotericsoftware/a/k;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/a/k;-><init>(Lcom/esotericsoftware/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method final a(D)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/o;->a(D)V

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    iget-wide v0, p2, Lcom/esotericsoftware/a/o;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/a/d;->a(J)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/o;

    iget p2, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {p1, p2, v0}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    iget p2, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/esotericsoftware/a/g;->f:I

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object p1
.end method

.method final a(F)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/o;->a(F)V

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    iget v0, v0, Lcom/esotericsoftware/a/o;->c:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    new-instance p1, Lcom/esotericsoftware/a/o;

    iget v0, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {p1, v0, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object p1
.end method

.method final a(I)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/o;->a(I)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->m:Lcom/esotericsoftware/a/o;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->m:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/a/g;->a(II)V

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->m:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_1
    return-object v0
.end method

.method final a(J)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/o;->a(J)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->a(I)Lcom/esotericsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->a(J)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/esotericsoftware/a/g;->f:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method final a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    iget v1, p1, Lcom/esotericsoftware/a/o;->h:I

    iget-object v2, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/esotericsoftware/a/o;->b:I

    iget v2, p1, Lcom/esotericsoftware/a/o;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/a/o;->a(Lcom/esotericsoftware/a/o;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method final a(Ljava/lang/Object;)Lcom/esotericsoftware/a/o;
    .locals 6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(I)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(I)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(I)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(I)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(I)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(F)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/g;->a(J)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/a/g;->a(D)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/g;->f(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Lcom/esotericsoftware/a/t;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/esotericsoftware/a/t;

    .line 5000
    iget v0, p1, Lcom/esotericsoftware/a/t;->j:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/esotericsoftware/a/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object p1

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/g;->e(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lcom/esotericsoftware/a/m;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/esotericsoftware/a/m;

    iget v1, p1, Lcom/esotericsoftware/a/m;->a:I

    iget-object v2, p1, Lcom/esotericsoftware/a/m;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/esotericsoftware/a/m;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/esotericsoftware/a/m;->d:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/esotericsoftware/a/m;->e:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "value "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/esotericsoftware/a/o;
    .locals 1

    if-eqz p4, :cond_0

    const/16 p4, 0xb

    goto :goto_0

    :cond_0
    const/16 p4, 0xa

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p4, p1, p2}, Lcom/esotericsoftware/a/g;->a(III)V

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_1
    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;
    .locals 10

    new-instance v9, Lcom/esotericsoftware/a/r;

    iget-boolean v7, p0, Lcom/esotericsoftware/a/g;->O:Z

    iget-boolean v8, p0, Lcom/esotericsoftware/a/g;->P:Z

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/esotericsoftware/a/r;-><init>(Lcom/esotericsoftware/a/g;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v9
.end method

.method final a(III)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/a/g;->e:I

    iput p2, p0, Lcom/esotericsoftware/a/g;->x:I

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/g;->y:I

    iput-object p3, p0, Lcom/esotericsoftware/a/g;->o:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/g;->z:I

    :cond_0
    const/4 p1, 0x0

    if-nez p5, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/esotericsoftware/a/g;->A:I

    if-eqz p6, :cond_2

    array-length p2, p6

    if-lez p2, :cond_2

    array-length p2, p6

    iput p2, p0, Lcom/esotericsoftware/a/g;->B:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/esotericsoftware/a/g;->C:[I

    :goto_1
    iget p2, p0, Lcom/esotericsoftware/a/g;->B:I

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->C:[I

    aget-object p3, p6, p1

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Lcom/esotericsoftware/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    iput-object v0, p1, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/g;->D:I

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/esotericsoftware/a/d;

    invoke-direct {p1}, Lcom/esotericsoftware/a/d;-><init>()V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/a/d;->a(Ljava/lang/String;II)Lcom/esotericsoftware/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/a/g;->E:Lcom/esotericsoftware/a/d;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/g;->F:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/a/g;->G:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/d;

    invoke-direct {v0}, Lcom/esotericsoftware/a/d;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget v0, p1, Lcom/esotericsoftware/a/o;->c:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/esotericsoftware/a/g;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/a/g;->M:I

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    iget v1, p1, Lcom/esotericsoftware/a/o;->a:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    invoke-virtual {p2, p4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget p2, p0, Lcom/esotericsoftware/a/g;->M:I

    iput p2, p1, Lcom/esotericsoftware/a/o;->c:I

    :cond_3
    return-void
.end method

.method public final a()[B
    .locals 24

    move-object/from16 v0, p0

    :goto_0
    iget v1, v0, Lcom/esotericsoftware/a/g;->f:I

    const v2, 0xffff

    if-gt v1, v2, :cond_41

    iget v1, v0, Lcom/esotericsoftware/a/g;->B:I

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x18

    iget-object v4, v0, Lcom/esotericsoftware/a/g;->r:Lcom/esotericsoftware/a/k;

    const/4 v6, 0x0

    :goto_1
    const-string v7, "ConstantValue"

    const-string v8, "RuntimeInvisibleTypeAnnotations"

    const-string v9, "RuntimeVisibleTypeAnnotations"

    const-string v10, "RuntimeInvisibleAnnotations"

    const-string v11, "RuntimeVisibleAnnotations"

    const-string v12, "Signature"

    const-string v13, "Synthetic"

    const-string v14, "Deprecated"

    const/16 v15, 0x31

    const/high16 v16, 0x20000

    const/high16 v17, 0x40000

    const/16 v18, 0x8

    if-eqz v4, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 3000
    iget v3, v4, Lcom/esotericsoftware/a/k;->h:I

    if-eqz v3, :cond_0

    iget-object v3, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    const/16 v3, 0x10

    goto :goto_2

    :cond_0
    const/16 v3, 0x8

    :goto_2
    iget v7, v4, Lcom/esotericsoftware/a/k;->d:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    iget v7, v7, Lcom/esotericsoftware/a/g;->e:I

    and-int/2addr v7, v2

    if-lt v7, v15, :cond_1

    iget v7, v4, Lcom/esotericsoftware/a/k;->d:I

    and-int v7, v7, v17

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v13}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x6

    :cond_2
    iget v7, v4, Lcom/esotericsoftware/a/k;->d:I

    and-int v7, v7, v16

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v14}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x6

    :cond_3
    iget v7, v4, Lcom/esotericsoftware/a/k;->g:I

    if-eqz v7, :cond_4

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v12}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x8

    :cond_4
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_5

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v11}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    :cond_5
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    :cond_6
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_7

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v9}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    :cond_7
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    if-eqz v7, :cond_8

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    invoke-virtual {v7}, Lcom/esotericsoftware/a/b;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v3, v7

    :cond_8
    iget-object v7, v4, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    if-eqz v7, :cond_9

    iget-object v7, v4, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    iget-object v8, v4, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v7, v8}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;)I

    move-result v7

    add-int/2addr v3, v7

    :cond_9
    add-int/2addr v1, v3

    iget-object v3, v4, Lcom/esotericsoftware/a/k;->b:Lcom/esotericsoftware/a/j;

    move-object v4, v3

    check-cast v4, Lcom/esotericsoftware/a/k;

    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_a
    iget-object v3, v0, Lcom/esotericsoftware/a/g;->t:Lcom/esotericsoftware/a/r;

    const/4 v4, 0x0

    :goto_3
    if-eqz v3, :cond_b

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Lcom/esotericsoftware/a/r;->b()I

    move-result v19

    add-int v1, v1, v19

    iget-object v3, v3, Lcom/esotericsoftware/a/r;->b:Lcom/esotericsoftware/a/q;

    check-cast v3, Lcom/esotericsoftware/a/r;

    goto :goto_3

    :cond_b
    iget-object v3, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    const-string v5, "BootstrapMethods"

    if-eqz v3, :cond_c

    iget v3, v3, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    iget v15, v0, Lcom/esotericsoftware/a/g;->z:I

    if-eqz v15, :cond_d

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_d
    iget v15, v0, Lcom/esotericsoftware/a/g;->D:I

    const-string v2, "SourceFile"

    if-eqz v15, :cond_e

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_e
    iget-object v15, v0, Lcom/esotericsoftware/a/g;->E:Lcom/esotericsoftware/a/d;

    move-object/from16 v21, v2

    const-string v2, "SourceDebugExtension"

    if-eqz v15, :cond_f

    add-int/lit8 v3, v3, 0x1

    iget v15, v15, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v15, v15, 0x6

    add-int/2addr v1, v15

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_f
    iget v15, v0, Lcom/esotericsoftware/a/g;->F:I

    if-eqz v15, :cond_10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    const-string v15, "EnclosingMethod"

    invoke-virtual {v0, v15}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_10
    iget v15, v0, Lcom/esotericsoftware/a/g;->x:I

    and-int v15, v15, v16

    if-eqz v15, :cond_11

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_11
    iget v15, v0, Lcom/esotericsoftware/a/g;->x:I

    move-object/from16 v22, v2

    and-int/lit16 v2, v15, 0x1000

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/esotericsoftware/a/g;->e:I

    const v20, 0xffff

    and-int v2, v2, v20

    move-object/from16 v23, v5

    const/16 v5, 0x31

    if-lt v2, v5, :cond_12

    and-int v2, v15, v17

    if-eqz v2, :cond_14

    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    move-object/from16 v23, v5

    :cond_14
    :goto_5
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lcom/esotericsoftware/a/d;->b:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const-string v2, "InnerClasses"

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_15
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    if-eqz v2, :cond_16

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v11}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_16
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    if-eqz v2, :cond_17

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_17
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->J:Lcom/esotericsoftware/a/b;

    if-eqz v2, :cond_18

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_18
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->K:Lcom/esotericsoftware/a/b;

    if-eqz v2, :cond_19

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/esotericsoftware/a/b;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    :cond_19
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/esotericsoftware/a/c;->a()I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, v0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1a
    iget-object v2, v0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    iget v2, v2, Lcom/esotericsoftware/a/d;->b:I

    add-int/2addr v1, v2

    new-instance v2, Lcom/esotericsoftware/a/d;

    invoke-direct {v2, v1}, Lcom/esotericsoftware/a/d;-><init>(I)V

    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v5, v0, Lcom/esotericsoftware/a/g;->e:I

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget v1, v0, Lcom/esotericsoftware/a/g;->f:I

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget-object v5, v0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    iget-object v5, v5, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v15, v0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    iget v15, v15, Lcom/esotericsoftware/a/d;->b:I

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3, v15}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    const/high16 v1, 0x60000

    iget v3, v0, Lcom/esotericsoftware/a/g;->x:I

    and-int v5, v3, v17

    div-int/lit8 v5, v5, 0x40

    or-int/2addr v1, v5

    not-int v1, v1

    and-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->y:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->A:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget v1, v0, Lcom/esotericsoftware/a/g;->B:I

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v1, 0x0

    :goto_6
    iget v3, v0, Lcom/esotericsoftware/a/g;->B:I

    if-ge v1, v3, :cond_1b

    iget-object v3, v0, Lcom/esotericsoftware/a/g;->C:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {v2, v6}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->r:Lcom/esotericsoftware/a/k;

    :goto_7
    if-eqz v1, :cond_30

    const/high16 v3, 0x60000

    .line 4000
    iget v5, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int v5, v5, v17

    div-int/lit8 v5, v5, 0x40

    or-int/2addr v3, v5

    iget v5, v1, Lcom/esotericsoftware/a/k;->d:I

    not-int v3, v3

    and-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v3

    iget v5, v1, Lcom/esotericsoftware/a/k;->e:I

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v3

    iget v5, v1, Lcom/esotericsoftware/a/k;->f:I

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget v3, v1, Lcom/esotericsoftware/a/k;->h:I

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_8

    :cond_1c
    const/4 v3, 0x0

    :goto_8
    iget v5, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_1e

    iget-object v5, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    iget v5, v5, Lcom/esotericsoftware/a/g;->e:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x31

    if-lt v5, v6, :cond_1d

    iget v5, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int v5, v5, v17

    if-eqz v5, :cond_1e

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    :cond_1e
    iget v5, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int v5, v5, v16

    if-eqz v5, :cond_1f

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    iget v5, v1, Lcom/esotericsoftware/a/k;->g:I

    if-eqz v5, :cond_20

    add-int/lit8 v3, v3, 0x1

    :cond_20
    iget-object v5, v1, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    :cond_21
    iget-object v5, v1, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_22

    add-int/lit8 v3, v3, 0x1

    :cond_22
    iget-object v5, v1, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    iget-object v5, v1, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    if-eqz v5, :cond_24

    add-int/lit8 v3, v3, 0x1

    :cond_24
    iget-object v5, v1, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    if-eqz v5, :cond_25

    iget-object v5, v1, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    invoke-virtual {v5}, Lcom/esotericsoftware/a/c;->a()I

    move-result v5

    add-int/2addr v3, v5

    :cond_25
    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget v3, v1, Lcom/esotericsoftware/a/k;->h:I

    if-eqz v3, :cond_26

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v7}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v5

    iget v3, v1, Lcom/esotericsoftware/a/k;->h:I

    invoke-virtual {v5, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_26
    iget v3, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_28

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    iget v3, v3, Lcom/esotericsoftware/a/g;->e:I

    const v5, 0xffff

    and-int/2addr v3, v5

    const/16 v5, 0x31

    if-lt v3, v5, :cond_27

    iget v3, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int v3, v3, v17

    if-eqz v3, :cond_28

    :cond_27
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v13}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    goto :goto_9

    :cond_28
    const/4 v5, 0x0

    :goto_9
    iget v3, v1, Lcom/esotericsoftware/a/k;->d:I

    and-int v3, v3, v16

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v14}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :cond_29
    iget v3, v1, Lcom/esotericsoftware/a/k;->g:I

    if-eqz v3, :cond_2a

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v12}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v5

    iget v3, v1, Lcom/esotericsoftware/a/k;->g:I

    invoke-virtual {v5, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_2a
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    if-eqz v3, :cond_2b

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v11}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->i:Lcom/esotericsoftware/a/b;

    invoke-virtual {v3, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_2b
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    if-eqz v3, :cond_2c

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->j:Lcom/esotericsoftware/a/b;

    invoke-virtual {v3, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_2c
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v9}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->k:Lcom/esotericsoftware/a/b;

    invoke-virtual {v3, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_2d
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    if-eqz v3, :cond_2e

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->l:Lcom/esotericsoftware/a/b;

    invoke-virtual {v3, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_2e
    iget-object v3, v1, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/esotericsoftware/a/k;->m:Lcom/esotericsoftware/a/c;

    iget-object v5, v1, Lcom/esotericsoftware/a/k;->c:Lcom/esotericsoftware/a/g;

    invoke-virtual {v3, v5, v2}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/d;)V

    :cond_2f
    iget-object v1, v1, Lcom/esotericsoftware/a/k;->b:Lcom/esotericsoftware/a/j;

    check-cast v1, Lcom/esotericsoftware/a/k;

    goto/16 :goto_7

    :cond_30
    invoke-virtual {v2, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->t:Lcom/esotericsoftware/a/r;

    :goto_a
    if-eqz v1, :cond_31

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/r;->a(Lcom/esotericsoftware/a/d;)V

    iget-object v1, v1, Lcom/esotericsoftware/a/r;->b:Lcom/esotericsoftware/a/q;

    check-cast v1, Lcom/esotericsoftware/a/r;

    goto :goto_a

    :cond_31
    move/from16 v3, v18

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    if-eqz v1, :cond_32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    const/4 v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->p:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    iget-object v1, v1, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v3, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    iget v3, v3, Lcom/esotericsoftware/a/d;->b:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_32
    iget v1, v0, Lcom/esotericsoftware/a/g;->z:I

    if-eqz v1, :cond_33

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v4, v0, Lcom/esotericsoftware/a/g;->z:I

    invoke-virtual {v1, v4}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    goto :goto_b

    :cond_33
    const/4 v3, 0x2

    :goto_b
    iget v1, v0, Lcom/esotericsoftware/a/g;->D:I

    if-eqz v1, :cond_34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->D:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_34
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->E:Lcom/esotericsoftware/a/d;

    if-eqz v1, :cond_35

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    move-object/from16 v3, v22

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget-object v3, v0, Lcom/esotericsoftware/a/g;->E:Lcom/esotericsoftware/a/d;

    iget-object v3, v3, Lcom/esotericsoftware/a/d;->a:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_35
    iget v1, v0, Lcom/esotericsoftware/a/g;->F:I

    if-eqz v1, :cond_36

    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    iget v1, v0, Lcom/esotericsoftware/a/g;->F:I

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->G:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    :cond_36
    iget v1, v0, Lcom/esotericsoftware/a/g;->x:I

    and-int v1, v1, v16

    if-eqz v1, :cond_37

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :cond_37
    iget v1, v0, Lcom/esotericsoftware/a/g;->x:I

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_39

    iget v3, v0, Lcom/esotericsoftware/a/g;->e:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x31

    if-lt v3, v4, :cond_38

    and-int v1, v1, v17

    if-eqz v1, :cond_39

    :cond_38
    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    :cond_39
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    if-eqz v1, :cond_3a

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    iget v1, v1, Lcom/esotericsoftware/a/d;->b:I

    const/4 v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->c(I)Lcom/esotericsoftware/a/d;

    move-result-object v1

    iget v3, v0, Lcom/esotericsoftware/a/g;->M:I

    invoke-virtual {v1, v3}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    iget-object v1, v1, Lcom/esotericsoftware/a/d;->a:[B

    iget-object v3, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    iget v3, v3, Lcom/esotericsoftware/a/d;->b:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/esotericsoftware/a/d;->a([BII)Lcom/esotericsoftware/a/d;

    :cond_3a
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_3b

    invoke-virtual {v0, v11}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_3b
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_3c
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->J:Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_3d

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->J:Lcom/esotericsoftware/a/b;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_3d
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->K:Lcom/esotericsoftware/a/b;

    if-eqz v1, :cond_3e

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/a/d;->b(I)Lcom/esotericsoftware/a/d;

    iget-object v1, v0, Lcom/esotericsoftware/a/g;->K:Lcom/esotericsoftware/a/b;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/b;->a(Lcom/esotericsoftware/a/d;)V

    :cond_3e
    iget-object v1, v0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    if-eqz v1, :cond_3f

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/d;)V

    :cond_3f
    iget-boolean v1, v0, Lcom/esotericsoftware/a/g;->v:Z

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->H:Lcom/esotericsoftware/a/b;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->I:Lcom/esotericsoftware/a/b;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->L:Lcom/esotericsoftware/a/c;

    const/4 v3, 0x0

    iput v3, v0, Lcom/esotericsoftware/a/g;->M:I

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->N:Lcom/esotericsoftware/a/d;

    iput v3, v0, Lcom/esotericsoftware/a/g;->p:I

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->q:Lcom/esotericsoftware/a/d;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->r:Lcom/esotericsoftware/a/k;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->s:Lcom/esotericsoftware/a/k;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->t:Lcom/esotericsoftware/a/r;

    iput-object v1, v0, Lcom/esotericsoftware/a/g;->u:Lcom/esotericsoftware/a/r;

    iput-boolean v3, v0, Lcom/esotericsoftware/a/g;->O:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/esotericsoftware/a/g;->P:Z

    iput-boolean v3, v0, Lcom/esotericsoftware/a/g;->v:Z

    new-instance v1, Lcom/esotericsoftware/a/e;

    iget-object v2, v2, Lcom/esotericsoftware/a/d;->a:[B

    invoke-direct {v1, v2}, Lcom/esotericsoftware/a/e;-><init>([B)V

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/f;)V

    goto/16 :goto_0

    :cond_40
    iget-object v1, v2, Lcom/esotericsoftware/a/d;->a:[B

    return-object v1

    .line 0
    :cond_41
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Class file too large!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method final b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->g:Lcom/esotericsoftware/a/d;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/a/d;->b(II)Lcom/esotericsoftware/a/d;

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/o;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/esotericsoftware/a/g;->a(III)V

    new-instance v0, Lcom/esotericsoftware/a/o;

    iget p1, p0, Lcom/esotericsoftware/a/g;->f:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-object p2, p0, Lcom/esotericsoftware/a/g;->l:Lcom/esotericsoftware/a/o;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_0
    return-object v0
.end method

.method final b(Lcom/esotericsoftware/a/o;)V
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/a/g;->f:I

    iget-short v1, p0, Lcom/esotericsoftware/a/g;->w:S

    add-int/2addr v0, v1

    iget v1, p0, Lcom/esotericsoftware/a/g;->i:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lcom/esotericsoftware/a/o;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/esotericsoftware/a/o;->h:I

    rem-int/2addr v4, v1

    iget-object v5, v3, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    aget-object v6, v2, v4

    iput-object v6, v3, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    int-to-double v0, v1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/esotericsoftware/a/g;->i:I

    :cond_2
    iget v0, p1, Lcom/esotericsoftware/a/o;->h:I

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/esotericsoftware/a/o;->i:Lcom/esotericsoftware/a/o;

    iget-object v1, p0, Lcom/esotericsoftware/a/g;->h:[Lcom/esotericsoftware/a/o;

    aput-object p1, v1, v0

    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "java/lang/Object"

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final d(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/esotericsoftware/a/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->j:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/a/g;->b()Lcom/esotericsoftware/a/o;

    move-result-object p1

    :cond_0
    iget p1, p1, Lcom/esotericsoftware/a/o;->a:I

    return p1
.end method
