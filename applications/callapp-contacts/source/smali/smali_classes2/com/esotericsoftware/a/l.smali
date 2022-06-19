.class final Lcom/esotericsoftware/a/l;
.super Ljava/lang/Object;


# static fields
.field static final a:[I


# instance fields
.field b:Lcom/esotericsoftware/a/p;

.field c:[I

.field d:[I

.field e:[I

.field f:[I

.field g:I

.field h:[I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xca

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v3, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/esotericsoftware/a/l;->a:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/a/l;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->f:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/a/l;->g:I

    aget v0, v1, v0

    return v0

    :cond_0
    const/high16 v0, 0x3000000

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget v2, v1, Lcom/esotericsoftware/a/p;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/a/p;->d:I

    neg-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a(I)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->e:[I

    const/high16 v1, 0x2000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v0, p1

    if-nez v2, :cond_1

    or-int v2, p1, v1

    aput v2, v0, p1

    :cond_1
    return v2

    :cond_2
    :goto_0
    or-int/2addr p1, v1

    return p1
.end method

.method static a(Lcom/esotericsoftware/a/g;Ljava/lang/String;)I
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0x1000002

    const/16 v4, 0x46

    if-eq v2, v4, :cond_b

    const/16 v5, 0x4c

    const/high16 v6, 0x1700000

    if-eq v2, v5, :cond_a

    const v5, 0x1000001

    const/16 v7, 0x53

    if-eq v2, v7, :cond_9

    const/16 v8, 0x56

    if-eq v2, v8, :cond_8

    const/16 v0, 0x5a

    if-eq v2, v0, :cond_9

    const/16 v8, 0x49

    if-eq v2, v8, :cond_9

    const v9, 0x1000004

    const/16 v10, 0x4a

    if-eq v2, v10, :cond_7

    const v11, 0x1000003

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v2, v1, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_6

    if-eq v12, v7, :cond_5

    if-eq v12, v0, :cond_4

    if-eq v12, v8, :cond_3

    if-eq v12, v10, :cond_2

    packed-switch v12, :pswitch_data_1

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result p0

    or-int v3, p0, v6

    goto :goto_2

    :pswitch_0
    const v3, 0x1000003

    goto :goto_2

    :pswitch_1
    const v3, 0x100000b

    goto :goto_2

    :pswitch_2
    const v3, 0x100000a

    goto :goto_2

    :cond_2
    const v3, 0x1000004

    goto :goto_2

    :cond_3
    const v3, 0x1000001

    goto :goto_2

    :cond_4
    const v3, 0x1000009

    goto :goto_2

    :cond_5
    const v3, 0x100000c

    :cond_6
    :goto_2
    sub-int/2addr v2, v1

    shl-int/lit8 p0, v2, 0x1c

    or-int/2addr p0, v3

    return p0

    :pswitch_3
    return v11

    :cond_7
    return v9

    :cond_8
    return v0

    :cond_9
    :pswitch_4
    return v5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v6

    return p0

    :cond_b
    return v3

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->e:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->e:[I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->e:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->e:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/a/l;->e:[I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->e:[I

    aput p2, v0, p1

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x28

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Lcom/esotericsoftware/a/t;->e(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :cond_0
    const/16 p1, 0x4a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x44

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void
.end method

.method static a(Lcom/esotericsoftware/a/g;I[II)Z
    .locals 11

    aget v0, p2, p3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffffff

    and-int/2addr v2, p1

    const v3, 0x1000005

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    const p1, 0x1000005

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    aput p1, p2, p3

    return v2

    :cond_3
    const/high16 v4, 0xff00000

    and-int v5, v0, v4

    const/high16 v6, 0x1000000

    const/high16 v7, 0x1700000

    const/high16 v8, -0x10000000

    if-eq v5, v7, :cond_7

    and-int v9, v0, v8

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_11

    and-int p0, p1, v4

    if-eq p0, v7, :cond_6

    and-int p0, p1, v8

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/high16 p1, 0x1000000

    :cond_6
    :goto_0
    move v6, p1

    goto/16 :goto_5

    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    return v1

    :cond_8
    const/high16 v3, -0x100000

    and-int v9, p1, v3

    and-int/2addr v3, v0

    const-string v10, "java/lang/Object"

    if-ne v9, v3, :cond_b

    if-ne v5, v7, :cond_a

    and-int v3, p1, v8

    or-int/2addr v3, v7

    const v4, 0xfffff

    and-int/2addr p1, v4

    and-int/2addr v4, v0

    .line 2000
    iget-object v5, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const/16 v6, 0x20

    iput v6, v5, Lcom/esotericsoftware/a/o;->b:I

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    int-to-long v7, p1

    int-to-long v9, v4

    shl-long/2addr v9, v6

    or-long v6, v7, v9

    iput-wide v6, v5, Lcom/esotericsoftware/a/o;->d:J

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    const v6, 0x7fffffff

    add-int/lit8 v7, p1, 0x20

    add-int/2addr v7, v4

    and-int/2addr v6, v7

    iput v6, v5, Lcom/esotericsoftware/a/o;->h:I

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/g;->a(Lcom/esotericsoftware/a/o;)Lcom/esotericsoftware/a/o;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    aget-object p1, v5, p1

    iget-object p1, p1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    aget-object v4, v5, v4

    iget-object v4, v4, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-virtual {p0, p1, v4}, Lcom/esotericsoftware/a/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, v5, Lcom/esotericsoftware/a/o;->c:I

    new-instance v5, Lcom/esotericsoftware/a/o;

    iget-object p1, p0, Lcom/esotericsoftware/a/g;->k:Lcom/esotericsoftware/a/o;

    invoke-direct {v5, v1, p1}, Lcom/esotericsoftware/a/o;-><init>(ILcom/esotericsoftware/a/o;)V

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/g;->b(Lcom/esotericsoftware/a/o;)V

    :cond_9
    iget p0, v5, Lcom/esotericsoftware/a/o;->c:I

    or-int v6, v3, p0

    goto :goto_5

    :cond_a
    and-int p1, v0, v8

    add-int/2addr p1, v8

    :goto_2
    or-int/2addr p1, v7

    invoke-virtual {p0, v10}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result p0

    or-int v6, p1, p0

    goto :goto_5

    :cond_b
    and-int v3, p1, v4

    if-eq v3, v7, :cond_c

    and-int v4, p1, v8

    if-eqz v4, :cond_11

    :cond_c
    and-int/2addr p1, v8

    if-eqz p1, :cond_e

    if-ne v3, v7, :cond_d

    goto :goto_3

    :cond_d
    const/high16 v3, -0x10000000

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v3, p1

    and-int p1, v0, v8

    if-eqz p1, :cond_f

    if-ne v5, v7, :cond_10

    :cond_f
    const/4 v8, 0x0

    :cond_10
    add-int/2addr v8, p1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_11
    :goto_5
    if-eq v0, v6, :cond_12

    aput v6, p2, p3

    return v2

    :cond_12
    return v1
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->f:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/esotericsoftware/a/l;->f:[I

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->f:[I

    array-length v0, v0

    iget v1, p0, Lcom/esotericsoftware/a/l;->g:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/esotericsoftware/a/l;->f:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/a/l;->f:[I

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->f:[I

    iget v1, p0, Lcom/esotericsoftware/a/l;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/a/l;->g:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget p1, p1, Lcom/esotericsoftware/a/p;->d:I

    iget v0, p0, Lcom/esotericsoftware/a/l;->g:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget v0, v0, Lcom/esotericsoftware/a/p;->e:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iput p1, v0, Lcom/esotericsoftware/a/p;->e:I

    :cond_2
    return-void
.end method

.method private b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/esotericsoftware/a/l;->a(Lcom/esotericsoftware/a/g;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/l;->b(I)V

    const p2, 0x1000004

    if-eq p1, p2, :cond_0

    const p2, 0x1000003

    if-ne p1, p2, :cond_1

    :cond_0
    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/l;->b(I)V

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/a/l;->g:I

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/esotericsoftware/a/l;->g:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/a/l;->b:Lcom/esotericsoftware/a/p;

    iget v1, v0, Lcom/esotericsoftware/a/p;->d:I

    iget v2, p0, Lcom/esotericsoftware/a/l;->g:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/esotericsoftware/a/p;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/esotericsoftware/a/l;->g:I

    return-void
.end method


# virtual methods
.method final a(Lcom/esotericsoftware/a/g;I)I
    .locals 6

    const/high16 v0, 0x1700000

    const v1, 0x1000006

    if-ne p2, v1, :cond_0

    iget-object v1, p1, Lcom/esotericsoftware/a/g;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result p1

    or-int/2addr p1, v0

    goto :goto_1

    :cond_0
    const/high16 v1, -0x100000

    and-int/2addr v1, p2

    const/high16 v2, 0x1800000

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/esotericsoftware/a/g;->n:[Lcom/esotericsoftware/a/o;

    const v2, 0xfffff

    and-int/2addr v2, p2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/esotericsoftware/a/l;->i:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/esotericsoftware/a/l;->h:[I

    aget v1, v1, v0

    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    const/high16 v3, 0xf000000

    and-int/2addr v3, v1

    const/high16 v4, 0x2000000

    const v5, 0x7fffff

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/esotericsoftware/a/l;->c:[I

    and-int/2addr v1, v5

    aget v1, v3, v1

    :goto_3
    add-int/2addr v1, v2

    goto :goto_4

    :cond_1
    const/high16 v4, 0x3000000

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/esotericsoftware/a/l;->d:[I

    array-length v4, v3

    and-int/2addr v1, v5

    sub-int/2addr v4, v1

    aget v1, v3, v4

    goto :goto_3

    :cond_2
    :goto_4
    if-ne p2, v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return p2
.end method

.method final a(IILcom/esotericsoftware/a/g;Lcom/esotericsoftware/a/o;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/16 v5, 0xc6

    const/4 v6, 0x1

    if-eq v1, v5, :cond_b

    const/16 v5, 0xc7

    if-eq v1, v5, :cond_b

    const/high16 v5, 0x1700000

    const v7, 0x1000002

    const v8, 0x1000003

    const v9, 0x1000001

    const v10, 0x1000004

    const/high16 v11, 0x1000000

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/high16 v12, 0x800000

    const/high16 v13, 0xf000000

    const/4 v14, 0x2

    packed-switch v1, :pswitch_data_2

    const/16 v12, 0x5b

    const/4 v15, 0x4

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_3

    .line 1000
    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->c(I)V

    iget-object v1, v4, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_0

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    :cond_1
    const/high16 v2, 0x11700000

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    packed-switch v2, :pswitch_data_4

    const v1, 0x11000004

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_3
    const v1, 0x11000001

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_4
    const v1, 0x1100000c

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_5
    const v1, 0x1100000a

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_6
    const v1, 0x11000003

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_7
    const v1, 0x11000002

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_8
    const v1, 0x1100000b

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_9
    const v1, 0x11000009

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_a
    const/high16 v1, 0x1800000

    iget-object v4, v4, Lcom/esotericsoftware/a/o;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/esotericsoftware/a/g;->a(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_b
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    .line 0
    :pswitch_c
    iget-object v2, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/String;)V

    const/16 v2, 0xb8

    if-eq v1, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    const/16 v5, 0xb7

    if-ne v1, v5, :cond_4

    iget-object v1, v4, Lcom/esotericsoftware/a/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_4

    .line 1000
    iget-object v1, v0, Lcom/esotericsoftware/a/l;->h:[I

    if-nez v1, :cond_2

    new-array v1, v14, [I

    iput-object v1, v0, Lcom/esotericsoftware/a/l;->h:[I

    :cond_2
    iget-object v1, v0, Lcom/esotericsoftware/a/l;->h:[I

    array-length v1, v1

    iget v5, v0, Lcom/esotericsoftware/a/l;->i:I

    if-lt v5, v1, :cond_3

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    iget-object v6, v0, Lcom/esotericsoftware/a/l;->h:[I

    invoke-static {v6, v13, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lcom/esotericsoftware/a/l;->h:[I

    :cond_3
    iget-object v1, v0, Lcom/esotericsoftware/a/l;->h:[I

    iget v5, v0, Lcom/esotericsoftware/a/l;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lcom/esotericsoftware/a/l;->i:I

    aput v2, v1, v5

    :cond_4
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    .line 0
    :pswitch_d
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    return-void

    :pswitch_e
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    iget-object v1, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->a(Ljava/lang/String;)V

    return-void

    :pswitch_10
    iget-object v1, v4, Lcom/esotericsoftware/a/o;->g:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/esotericsoftware/a/l;->b(Lcom/esotericsoftware/a/g;Ljava/lang/String;)V

    return-void

    :pswitch_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_12
    invoke-direct {v0, v15}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_13
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_14
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v8}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_15
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_16
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_17
    invoke-direct {v0, v2, v9}, Lcom/esotericsoftware/a/l;->a(II)V

    return-void

    :pswitch_18
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_19
    invoke-direct {v0, v15}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v8}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1a
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1b
    invoke-direct {v0, v15}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1c
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v4

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v4}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v3}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v3

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v3}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v3

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v3}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_24
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :pswitch_25
    invoke-direct {v0, v15}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :pswitch_26
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :pswitch_27
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/a/l;->a(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v0, v1, v11}, Lcom/esotericsoftware/a/l;->a(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_0

    :cond_5
    and-int v3, v2, v13

    if-eq v3, v11, :cond_9

    or-int/2addr v2, v12

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/a/l;->a(II)V

    return-void

    :cond_6
    :goto_0
    invoke-direct {v0, v1, v11}, Lcom/esotericsoftware/a/l;->a(II)V

    return-void

    :pswitch_28
    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/esotericsoftware/a/l;->a(II)V

    if-lez v2, :cond_9

    add-int/lit8 v1, v2, -0x1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->a(I)I

    move-result v2

    if-eq v2, v10, :cond_8

    if-ne v2, v8, :cond_7

    goto :goto_1

    :cond_7
    and-int v3, v2, v13

    if-eq v3, v11, :cond_9

    or-int/2addr v2, v12

    invoke-direct {v0, v1, v2}, Lcom/esotericsoftware/a/l;->a(II)V

    return-void

    :cond_8
    :goto_1
    invoke-direct {v0, v1, v11}, Lcom/esotericsoftware/a/l;->a(II)V

    :cond_9
    :goto_2
    return-void

    :pswitch_29
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/esotericsoftware/a/l;->a()I

    move-result v1

    const/high16 v2, -0x10000000

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2a
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v8}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2b
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2c
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2d
    invoke-direct {v0, v14}, Lcom/esotericsoftware/a/l;->c(I)V

    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2e
    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/l;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_2f
    iget v1, v4, Lcom/esotericsoftware/a/o;->b:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    packed-switch v1, :pswitch_data_5

    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_30
    const-string v1, "java/lang/String"

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_31
    const-string v1, "java/lang/Class"

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_32
    invoke-direct {v0, v8}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_33
    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_34
    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_35
    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :cond_a
    const-string v1, "java/lang/invoke/MethodType"

    invoke-virtual {v3, v1}, Lcom/esotericsoftware/a/g;->d(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v5

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_36
    invoke-direct {v0, v8}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_37
    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_38
    invoke-direct {v0, v10}, Lcom/esotericsoftware/a/l;->b(I)V

    invoke-direct {v0, v11}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_39
    invoke-direct {v0, v9}, Lcom/esotericsoftware/a/l;->b(I)V

    return-void

    :pswitch_3a
    const v1, 0x1000005

    invoke-direct {v0, v1}, Lcom/esotericsoftware/a/l;->b(I)V

    :pswitch_3b
    return-void

    :cond_b
    :pswitch_3c
    invoke-direct {v0, v6}, Lcom/esotericsoftware/a/l;->c(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_39
        :pswitch_39
        :pswitch_2f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_2e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_3c
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_1c
        :pswitch_18
        :pswitch_1c
        :pswitch_18
        :pswitch_1c
        :pswitch_18
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_1c
        :pswitch_1a
        :pswitch_2a
        :pswitch_13
        :pswitch_16
        :pswitch_14
        :pswitch_1c
        :pswitch_2c
        :pswitch_1a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_12
        :pswitch_1c
        :pswitch_1c
        :pswitch_12
        :pswitch_12
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_3b
        :pswitch_11
        :pswitch_11
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_24
        :pswitch_3c
        :pswitch_24
        :pswitch_3c
        :pswitch_3b
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_13
        :pswitch_3c
        :pswitch_0
        :pswitch_13
        :pswitch_3c
        :pswitch_3c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method
