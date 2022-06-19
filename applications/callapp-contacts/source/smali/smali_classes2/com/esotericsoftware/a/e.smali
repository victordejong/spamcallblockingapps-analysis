.class public final Lcom/esotericsoftware/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field final b:[I

.field final c:[Ljava/lang/String;

.field final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/esotericsoftware/a/e;->a(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/e;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".class"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/esotericsoftware/a/e;->a(Ljava/io/InputStream;Z)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/a/e;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/esotericsoftware/a/e;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 p3, p2, 0x6

    invoke-direct {p0, p3}, Lcom/esotericsoftware/a/e;->e(I)S

    move-result p3

    const/16 v0, 0x34

    if-gt p3, v0, :cond_5

    add-int/lit8 p3, p2, 0x8

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/esotericsoftware/a/e;->b:[I

    array-length p3, p3

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/esotericsoftware/a/e;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    add-int/lit8 p2, p2, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_4

    iget-object v3, p0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v4, p2, 0x1

    aput v4, v3, v2

    aget-byte v3, p1, p2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v1, :cond_2

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    const/4 v5, 0x3

    goto :goto_1

    :cond_0
    const/16 v5, 0x9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x3

    if-le v5, v0, :cond_3

    move v0, v5

    :cond_3
    :goto_1
    :pswitch_0
    add-int/2addr p2, v5

    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/esotericsoftware/a/e;->d:I

    iput p2, p0, Lcom/esotericsoftware/a/e;->e:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(IZZLcom/esotericsoftware/a/h;)I
    .locals 11

    iget-object v6, p4, Lcom/esotericsoftware/a/h;->c:[C

    iget-object v7, p4, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    const/16 v0, 0xff

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/2addr p1, v0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    iput p2, p4, Lcom/esotericsoftware/a/h;->k:I

    move v3, p1

    const/16 p1, 0xff

    :goto_0
    const/4 p2, 0x0

    iput p2, p4, Lcom/esotericsoftware/a/h;->q:I

    const/4 v1, 0x3

    const/16 v2, 0x40

    const/4 v8, 0x1

    if-ge p1, v2, :cond_1

    iput v1, p4, Lcom/esotericsoftware/a/h;->o:I

    iput p2, p4, Lcom/esotericsoftware/a/h;->s:I

    goto/16 :goto_7

    :cond_1
    const/16 v2, 0x80

    const/4 v9, 0x4

    if-ge p1, v2, :cond_2

    add-int/lit8 p1, p1, -0x40

    iget-object v1, p4, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/e;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/a/h;->o:I

    iput v8, p4, Lcom/esotericsoftware/a/h;->s:I

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    add-int/lit8 v3, v3, 0x2

    const/16 v2, 0xf7

    if-ne p1, v2, :cond_4

    iget-object v1, p4, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/e;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I

    move-result v3

    iput v9, p4, Lcom/esotericsoftware/a/h;->o:I

    iput v8, p4, Lcom/esotericsoftware/a/h;->s:I

    :cond_3
    :goto_1
    move p1, v10

    goto/16 :goto_7

    :cond_4
    const/16 v2, 0xf8

    const/16 v4, 0xfb

    const/4 v9, 0x2

    if-lt p1, v2, :cond_5

    if-ge p1, v4, :cond_5

    iput v9, p4, Lcom/esotericsoftware/a/h;->o:I

    rsub-int p1, p1, 0xfb

    iput p1, p4, Lcom/esotericsoftware/a/h;->q:I

    iget p1, p4, Lcom/esotericsoftware/a/h;->p:I

    iget p3, p4, Lcom/esotericsoftware/a/h;->q:I

    sub-int/2addr p1, p3

    iput p1, p4, Lcom/esotericsoftware/a/h;->p:I

    goto :goto_4

    :cond_5
    if-ne p1, v4, :cond_6

    iput v1, p4, Lcom/esotericsoftware/a/h;->o:I

    goto :goto_4

    :cond_6
    if-ge p1, v0, :cond_9

    if-eqz p3, :cond_7

    iget p3, p4, Lcom/esotericsoftware/a/h;->p:I

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    add-int/lit16 p1, p1, -0xfb

    move v2, p3

    move p3, p1

    :goto_3
    if-lez p3, :cond_8

    iget-object v1, p4, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/e;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I

    move-result v3

    add-int/lit8 p3, p3, -0x1

    move v2, v9

    goto :goto_3

    :cond_8
    iput v8, p4, Lcom/esotericsoftware/a/h;->o:I

    iput p1, p4, Lcom/esotericsoftware/a/h;->q:I

    iget p1, p4, Lcom/esotericsoftware/a/h;->p:I

    iget p3, p4, Lcom/esotericsoftware/a/h;->q:I

    add-int/2addr p1, p3

    iput p1, p4, Lcom/esotericsoftware/a/h;->p:I

    :goto_4
    iput p2, p4, Lcom/esotericsoftware/a/h;->s:I

    goto :goto_1

    :cond_9
    iput p2, p4, Lcom/esotericsoftware/a/h;->o:I

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x2

    iput p1, p4, Lcom/esotericsoftware/a/h;->q:I

    iput p1, p4, Lcom/esotericsoftware/a/h;->p:I

    const/4 v2, 0x0

    :goto_5
    if-lez p1, :cond_a

    iget-object v1, p4, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    add-int/lit8 p3, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/e;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p3

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    add-int/2addr v3, v9

    iput p1, p4, Lcom/esotericsoftware/a/h;->s:I

    const/4 v2, 0x0

    :goto_6
    if-lez p1, :cond_3

    iget-object v1, p4, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    add-int/lit8 p2, v2, 0x1

    move-object v0, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/esotericsoftware/a/e;->a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I

    move-result v3

    add-int/lit8 p1, p1, -0x1

    move v2, p2

    goto :goto_6

    :goto_7
    iget p2, p4, Lcom/esotericsoftware/a/h;->k:I

    add-int/2addr p1, v8

    add-int/2addr p2, p1

    iput p2, p4, Lcom/esotericsoftware/a/h;->k:I

    iget p1, p4, Lcom/esotericsoftware/a/h;->k:I

    invoke-static {p1, v7}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    return v3
.end method

.method private a(I[CLjava/lang/String;Lcom/esotericsoftware/a/a;)I
    .locals 10

    const/16 v0, 0x5b

    const/16 v1, 0x65

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p4, :cond_3

    iget-object p3, p0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte p3, p3, p1

    and-int/lit16 p3, p3, 0xff

    const/4 p4, 0x0

    if-eq p3, v2, :cond_2

    if-eq p3, v0, :cond_1

    if-eq p3, v1, :cond_0

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x5

    return p1

    :cond_1
    add-int/2addr p1, v4

    invoke-direct {p0, p1, p2, v3, p4}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1, p2, v4, p4}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result p1

    return p1

    :cond_3
    iget-object v5, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte p1, v5, p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v2, :cond_1b

    const/16 v2, 0x46

    if-eq p1, v2, :cond_1a

    const/16 v5, 0x53

    if-eq p1, v5, :cond_19

    const/16 v7, 0x63

    if-eq p1, v7, :cond_18

    if-eq p1, v1, :cond_17

    const/16 v1, 0x73

    if-eq p1, v1, :cond_16

    const/16 v1, 0x49

    if-eq p1, v1, :cond_1a

    const/16 v7, 0x4a

    if-eq p1, v7, :cond_1a

    const/16 v8, 0x5a

    if-eq p1, v8, :cond_14

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object p1, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    int-to-char p1, p1

    new-instance p2, Ljava/lang/Character;

    invoke-direct {p2, p1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    int-to-byte p1, p1

    new-instance p2, Ljava/lang/Byte;

    invoke-direct {p2, p1}, Ljava/lang/Byte;-><init>(B)V

    :goto_0
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_d

    :cond_4
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    add-int/lit8 v6, v6, 0x2

    if-nez p1, :cond_5

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/a;

    move-result-object p1

    invoke-direct {p0, v6, p2, v3, p1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result p1

    return p1

    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_12

    if-eq v0, v5, :cond_10

    if-eq v0, v8, :cond_d

    if-eq v0, v1, :cond_b

    if-eq v0, v7, :cond_9

    packed-switch v0, :pswitch_data_1

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {p4, p3}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/a;

    move-result-object p1

    invoke-direct {p0, v9, p2, v3, p1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v6

    goto/16 :goto_d

    :pswitch_2
    new-array p2, p1, [D

    :goto_2
    if-ge v3, p1, :cond_6

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    aput-wide v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_3
    new-array p2, p1, [C

    :goto_3
    if-ge v3, p1, :cond_7

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    new-array p2, p1, [B

    :goto_4
    if-ge v3, p1, :cond_8

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v6, v9, -0x1

    goto/16 :goto_d

    :cond_9
    new-array p2, p1, [J

    :goto_6
    if-ge v3, p1, :cond_a

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide v0

    aput-wide v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    new-array p2, p1, [I

    :goto_7
    if-ge v3, p1, :cond_c

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    aput v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    new-array p2, p1, [Z

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_f

    iget-object v1, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    aput-boolean v1, p2, v0

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_10
    new-array p2, p1, [S

    :goto_a
    if-ge v3, p1, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_12
    new-array p2, p1, [F

    :goto_b
    if-ge v3, p1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p2, v3

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_13
    invoke-virtual {p4, p3, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_14
    iget-object p1, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    if-nez p1, :cond_15

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_16
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_17
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p3, p1, p2}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_d

    :cond_18
    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/t;

    move-result-object p1

    goto :goto_c

    :cond_19
    iget-object p1, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p2

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    int-to-short p1, p1

    new-instance p2, Ljava/lang/Short;

    invoke-direct {p2, p1}, Ljava/lang/Short;-><init>(S)V

    goto/16 :goto_0

    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object p1

    :goto_c
    invoke-virtual {p4, p3, p1}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 p1, v6, 0x2

    invoke-virtual {p0, v6, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lcom/esotericsoftware/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/a/a;

    move-result-object p3

    invoke-direct {p0, p1, p2, v4, p3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v6

    :goto_d
    return v6

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(I[CZLcom/esotericsoftware/a/a;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    if-eqz p3, :cond_0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 p3, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p2, p1, p4}, Lcom/esotericsoftware/a/e;->a(I[CLjava/lang/String;Lcom/esotericsoftware/a/a;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v0, :cond_1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/a/e;->a(I[CLjava/lang/String;Lcom/esotericsoftware/a/a;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/esotericsoftware/a/a;->a()V

    :cond_2
    return p1
.end method

.method private a(Lcom/esotericsoftware/a/h;I)I
    .locals 8

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/16 v3, 0x40

    const/high16 v4, -0x1000000

    if-eq v1, v3, :cond_1

    const/16 v3, 0x41

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, 0x43

    if-ge v1, v3, :cond_0

    const/16 v4, -0x100

    :cond_0
    and-int/2addr v0, v4

    add-int/lit8 p2, p2, 0x3

    goto :goto_1

    :pswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    :pswitch_1
    and-int/2addr v0, v4

    add-int/2addr p2, v2

    goto :goto_1

    :cond_1
    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    new-array v3, v1, [Lcom/esotericsoftware/a/p;

    iput-object v3, p1, Lcom/esotericsoftware/a/h;->l:[Lcom/esotericsoftware/a/p;

    new-array v3, v1, [Lcom/esotericsoftware/a/p;

    iput-object v3, p1, Lcom/esotericsoftware/a/h;->m:[Lcom/esotericsoftware/a/p;

    new-array v3, v1, [I

    iput-object v3, p1, Lcom/esotericsoftware/a/h;->n:[I

    add-int/lit8 p2, p2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    iget-object v6, p1, Lcom/esotericsoftware/a/h;->l:[Lcom/esotericsoftware/a/p;

    iget-object v7, p1, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    invoke-static {v4, v7}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v6, p1, Lcom/esotericsoftware/a/h;->m:[Lcom/esotericsoftware/a/p;

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    invoke-static {v4, v5}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v4

    aput-object v4, v6, v3

    iget-object v4, p1, Lcom/esotericsoftware/a/h;->n:[I

    add-int/lit8 v5, p2, 0x4

    invoke-virtual {p0, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :pswitch_2
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v1

    iput v0, p1, Lcom/esotericsoftware/a/h;->i:I

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/esotericsoftware/a/u;

    iget-object v3, p0, Lcom/esotericsoftware/a/e;->a:[B

    invoke-direct {v0, v3, p2}, Lcom/esotericsoftware/a/u;-><init>([BI)V

    :goto_2
    iput-object v0, p1, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    add-int/2addr p2, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    return p2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a([Ljava/lang/Object;II[C[Lcom/esotericsoftware/a/p;)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p3

    invoke-static {p3, p5}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object p3

    aput-object p3, p1, p2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1, p4}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_1
    sget-object p3, Lcom/esotericsoftware/a/s;->g:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_2
    sget-object p3, Lcom/esotericsoftware/a/s;->f:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_3
    sget-object p3, Lcom/esotericsoftware/a/s;->e:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_4
    sget-object p3, Lcom/esotericsoftware/a/s;->d:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_5
    sget-object p3, Lcom/esotericsoftware/a/s;->c:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_6
    sget-object p3, Lcom/esotericsoftware/a/s;->b:Ljava/lang/Integer;

    aput-object p3, p1, p2

    goto :goto_1

    :pswitch_7
    sget-object p3, Lcom/esotericsoftware/a/s;->a:Ljava/lang/Integer;

    aput-object p3, p1, p2

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([Lcom/esotericsoftware/a/c;Ljava/lang/String;II)Lcom/esotericsoftware/a/c;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object p1, p1, v0

    :goto_1
    invoke-virtual {p1, p0, p3, p4}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/e;II)Lcom/esotericsoftware/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/esotericsoftware/a/c;

    invoke-direct {p1, p2}, Lcom/esotericsoftware/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;
    .locals 1

    aget-object v0, p1, p0

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/a/p;

    invoke-direct {v0}, Lcom/esotericsoftware/a/p;-><init>()V

    aput-object v0, p1, p0

    :cond_0
    aget-object p0, p1, p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    array-length v3, v0

    if-ge v2, v3, :cond_1

    new-array v3, v2, [B

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0

    :cond_3
    add-int/2addr v2, v3

    :try_start_1
    array-length v3, v0

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object v0

    :cond_5
    :try_start_2
    array-length v4, v0

    add-int/lit16 v4, v4, 0x3e8

    new-array v4, v4, [B

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)[I
    .locals 11

    iget-object v0, p2, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    new-array v2, v1, [I

    add-int/lit8 p3, p3, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aput p3, v2, v3

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_2

    const/16 v7, 0x40

    if-eq v5, v7, :cond_1

    const/16 v7, 0x41

    if-eq v5, v7, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    :cond_0
    add-int/lit8 p3, p3, 0x3

    goto :goto_2

    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_2

    :pswitch_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p0, v7}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v7

    :goto_1
    if-lez v7, :cond_0

    add-int/lit8 v8, p3, 0x3

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v8

    add-int/lit8 v9, p3, 0x5

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v9

    iget-object v10, p2, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    invoke-static {v8, v10}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/2addr v8, v9

    iget-object v9, p2, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    invoke-static {v8, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    :pswitch_2
    add-int/lit8 p3, p3, 0x2

    :goto_2
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v7

    const/16 v8, 0x42

    const/4 v9, 0x0

    if-ne v5, v8, :cond_4

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v9, Lcom/esotericsoftware/a/u;

    iget-object v5, p0, Lcom/esotericsoftware/a/e;->a:[B

    invoke-direct {v9, v5, p3}, Lcom/esotericsoftware/a/u;-><init>([BI)V

    :goto_3
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr p3, v7

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4, v9, p3, p4}, Lcom/esotericsoftware/a/q;->c(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object p3

    invoke-direct {p0, v5, v0, v6, p3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result p3

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr p3, v7

    invoke-direct {p0, p3, v0, v6, v9}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result p3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    iget-object v0, p2, Lcom/esotericsoftware/a/h;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/esotericsoftware/a/t;->d(Ljava/lang/String;)[Lcom/esotericsoftware/a/t;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v3, v4, v2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/esotericsoftware/a/a;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/esotericsoftware/a/h;->c:[C

    :goto_1
    add-int v2, p3, v0

    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    :goto_2
    if-lez v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, p4}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v4

    add-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    invoke-direct {p0, v1, p2, v5, v4}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private e(I)S
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-short p1, p1

    return p1
.end method


# virtual methods
.method final a()I
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/a/e;->e:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    :goto_1
    if-lez v2, :cond_0

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v0

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    :goto_3
    if-lez v2, :cond_2

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method final a(II[C)Ljava/lang/String;
    .locals 9

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge p1, p2, :cond_5

    add-int/lit8 v7, p1, 0x1

    aget-byte p1, v0, p1

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v1, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v5, v6, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v5

    int-to-char v6, p1

    const/4 v5, 0x1

    :goto_1
    move p1, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v8, v6, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v8

    int-to-char p1, p1

    aput-char p1, p3, v4

    move v4, v5

    move p1, v7

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    and-int/lit16 p1, p1, 0xff

    const/16 v8, 0x80

    if-ge p1, v8, :cond_3

    add-int/lit8 v8, v4, 0x1

    int-to-char p1, p1

    aput-char p1, p3, v4

    move p1, v7

    move v4, v8

    goto :goto_0

    :cond_3
    const/16 v5, 0xe0

    if-ge p1, v5, :cond_4

    const/16 v5, 0xbf

    if-le p1, v5, :cond_4

    and-int/lit8 p1, p1, 0x1f

    int-to-char v6, p1

    move p1, v7

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    and-int/lit8 p1, p1, 0xf

    int-to-char v6, p1

    move p1, v7

    const/4 v5, 0x2

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public final a(I[C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/a/e;->c:[Ljava/lang/String;

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/a/e;->b:[I

    aget v1, v1, v0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/esotericsoftware/a/e;->a(II[C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/esotericsoftware/a/f;)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    new-array v1, v9, [Lcom/esotericsoftware/a/c;

    .line 1000
    iget v2, v0, Lcom/esotericsoftware/a/e;->e:I

    iget v3, v0, Lcom/esotericsoftware/a/e;->d:I

    new-array v10, v3, [C

    new-instance v11, Lcom/esotericsoftware/a/h;

    invoke-direct {v11}, Lcom/esotericsoftware/a/h;-><init>()V

    iput-object v1, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    const/4 v12, 0x4

    iput v12, v11, Lcom/esotericsoftware/a/h;->b:I

    iput-object v10, v11, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x4

    invoke-virtual {v0, v5, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v2, 0x6

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    const/16 v14, 0x8

    add-int/2addr v2, v14

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v13, :cond_0

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v5

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/a/e;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    move/from16 v18, v13

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_1
    const v25, 0x41000

    const/high16 v26, 0x20000

    move-object/from16 v27, v13

    const-string v13, "Synthetic"

    move-object/from16 v28, v15

    const-string v15, "Deprecated"

    const-string v8, "RuntimeVisibleAnnotations"

    move-object/from16 v29, v14

    const-string v14, "Signature"

    move-object/from16 v30, v12

    const-string v12, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v31, v7

    const-string v7, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v32, v6

    if-lez v5, :cond_10

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v0, v6, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v34, v4

    const-string v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v27

    move-object/from16 v15, v28

    move-object/from16 v14, v29

    goto/16 :goto_7

    :cond_1
    const-string v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x8

    move/from16 v24, v4

    :cond_2
    :goto_2
    move-object/from16 v13, v27

    move-object/from16 v15, v28

    :goto_3
    move-object/from16 v14, v29

    :goto_4
    move-object/from16 v12, v30

    goto/16 :goto_7

    :cond_3
    const-string v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v2, 0xa

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v7, v0, Lcom/esotericsoftware/a/e;->b:[I

    aget v7, v7, v6

    invoke-virtual {v0, v7, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/esotericsoftware/a/e;->b:[I

    aget v6, v8, v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v6, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v7

    goto :goto_5

    :cond_4
    move-object/from16 v13, v27

    :goto_5
    move-object v15, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v4, v2, 0x8

    move/from16 v20, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v4, v2, 0x8

    move/from16 v22, v4

    goto :goto_2

    :cond_8
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    or-int v3, v3, v26

    goto :goto_2

    :cond_9
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    or-int v3, v3, v25

    goto :goto_2

    :cond_a
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v4

    add-int/lit8 v6, v2, 0x8

    new-array v7, v4, [C

    invoke-virtual {v0, v6, v4, v7}, Lcom/esotericsoftware/a/e;->a(II[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v13, v27

    move-object/from16 v15, v28

    goto/16 :goto_4

    :cond_b
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v4, v2, 0x8

    move/from16 v21, v4

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v2, 0x8

    move/from16 v23, v4

    goto/16 :goto_2

    :cond_d
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v4

    new-array v6, v4, [I

    add-int/lit8 v7, v2, 0xa

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_e

    aput v7, v6, v8

    add-int/lit8 v12, v7, 0x2

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    const/4 v13, 0x1

    shl-int/2addr v12, v13

    add-int/2addr v7, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    iput-object v6, v11, Lcom/esotericsoftware/a/h;->d:[I

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v4, v2, 0x8

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    invoke-direct {v0, v1, v6, v4, v7}, Lcom/esotericsoftware/a/e;->a([Lcom/esotericsoftware/a/c;Ljava/lang/String;II)Lcom/esotericsoftware/a/c;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v9, v4, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    move-object v9, v4

    goto/16 :goto_2

    :goto_7
    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v2, v4

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v8, p1

    move-object/from16 v7, v31

    move-object/from16 v6, v32

    move-object/from16 v4, v34

    goto/16 :goto_1

    :cond_10
    move-object/from16 v34, v4

    iget-object v1, v0, Lcom/esotericsoftware/a/e;->b:[I

    const/4 v6, 0x1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v2

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v16, v8

    const/4 v8, 0x1

    move-object/from16 v6, v32

    move-object/from16 v35, v7

    move-object/from16 v7, v31

    invoke-virtual/range {v1 .. v7}, Lcom/esotericsoftware/a/f;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v30, :cond_12

    if-eqz v29, :cond_11

    goto :goto_8

    :cond_11
    move-object/from16 v7, p1

    move-object/from16 v6, v16

    goto :goto_9

    :cond_12
    :goto_8
    move-object/from16 v7, p1

    move-object/from16 v6, v16

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    invoke-virtual {v7, v1, v2}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    if-eqz v28, :cond_13

    move-object/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v1, v2, v3}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move/from16 v1, v20

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v20, v1, 0x2

    move/from16 v1, v20

    :goto_a
    if-lez v2, :cond_14

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v8}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v1

    invoke-direct {v0, v3, v10, v8, v1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_14
    move/from16 v1, v21

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v21, v1, 0x2

    move/from16 v1, v21

    :goto_b
    if-lez v2, :cond_15

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v1

    invoke-direct {v0, v3, v10, v8, v1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_15
    move/from16 v1, v22

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v22, v1, 0x2

    move/from16 v1, v22

    :goto_c
    if-lez v2, :cond_16

    invoke-direct {v0, v11, v1}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v5, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v1, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v5, v1, v8}, Lcom/esotericsoftware/a/f;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v1

    invoke-direct {v0, v3, v10, v8, v1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_16
    move/from16 v1, v23

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v23, v1, 0x2

    move/from16 v1, v23

    :goto_d
    if-lez v2, :cond_17

    invoke-direct {v0, v11, v1}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v1

    add-int/lit8 v3, v1, 0x2

    iget v4, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v5, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v1, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v5, v1, v9}, Lcom/esotericsoftware/a/f;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v1

    invoke-direct {v0, v3, v10, v8, v1}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v9, v16

    goto :goto_d

    :cond_17
    move-object/from16 v16, v9

    move-object/from16 v9, v16

    :goto_e
    if-eqz v9, :cond_18

    iget-object v1, v9, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    invoke-virtual {v7, v9}, Lcom/esotericsoftware/a/f;->a(Lcom/esotericsoftware/a/c;)V

    move-object v9, v1

    goto :goto_e

    :cond_18
    move/from16 v9, v24

    if-eqz v9, :cond_19

    add-int/lit8 v24, v9, 0x2

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    move/from16 v2, v24

    :goto_f
    if-lez v1, :cond_19

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x4

    invoke-virtual {v0, v5, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v9, v2, 0x6

    invoke-virtual {v0, v9}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v9

    invoke-virtual {v7, v3, v4, v5, v9}, Lcom/esotericsoftware/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_19
    iget v1, v0, Lcom/esotericsoftware/a/e;->e:I

    add-int/lit8 v1, v1, 0xa

    mul-int/lit8 v2, v18, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    move v9, v2

    :goto_10
    if-lez v9, :cond_2a

    .line 2000
    iget-object v10, v11, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v0, v4, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    move/from16 v19, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    :goto_11
    if-lez v5, :cond_24

    move/from16 v20, v9

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v0, v9, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v9

    move/from16 v21, v7

    const-string v7, "ConstantValue"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v7

    if-nez v7, :cond_1a

    const/4 v7, 0x0

    goto :goto_12

    :cond_1a
    invoke-virtual {v0, v7, v10}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v7

    :goto_12
    move-object/from16 v22, v6

    move-object/from16 v18, v7

    goto :goto_14

    :cond_1b
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v0, v7, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v16

    :goto_13
    move-object/from16 v22, v6

    :goto_14
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v9, v20

    move-object/from16 v7, v35

    goto/16 :goto_17

    :cond_1c
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    or-int v2, v2, v26

    goto :goto_13

    :cond_1d
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    or-int v2, v2, v25

    goto :goto_13

    :cond_1e
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    add-int/lit8 v7, v1, 0x8

    move-object/from16 v22, v6

    move/from16 v21, v7

    goto :goto_14

    :cond_1f
    move-object/from16 v7, v35

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    add-int/lit8 v9, v1, 0x8

    move-object/from16 v22, v6

    move/from16 v36, v9

    :goto_15
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :cond_20
    :goto_16
    move/from16 v9, v20

    goto :goto_17

    :cond_21
    move-object/from16 v22, v6

    const-string v6, "RuntimeInvisibleAnnotations"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    add-int/lit8 v6, v1, 0x8

    move v9, v6

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    goto :goto_17

    :cond_22
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    add-int/lit8 v6, v1, 0x8

    move/from16 v37, v6

    goto :goto_15

    :cond_23
    iget-object v6, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    move-object/from16 v23, v12

    add-int/lit8 v12, v1, 0x8

    move-object/from16 v24, v13

    add-int/lit8 v13, v1, 0x4

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    invoke-direct {v0, v6, v9, v12, v13}, Lcom/esotericsoftware/a/e;->a([Lcom/esotericsoftware/a/c;Ljava/lang/String;II)Lcom/esotericsoftware/a/c;

    move-result-object v6

    if-eqz v6, :cond_20

    iput-object v8, v6, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    move-object v8, v6

    goto :goto_16

    :goto_17
    add-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v35, v7

    move/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    goto/16 :goto_11

    :cond_24
    move-object/from16 v22, v6

    move/from16 v21, v7

    move/from16 v20, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v7, v35

    add-int/lit8 v9, v1, 0x2

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    move-object/from16 v12, v22

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/esotericsoftware/a/j;

    move-result-object v1

    if-eqz v1, :cond_29

    if-eqz v21, :cond_25

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    :goto_18
    if-lez v3, :cond_25

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    invoke-direct {v0, v4, v10, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_25
    if-eqz v20, :cond_26

    move/from16 v2, v20

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    :goto_19
    if-lez v3, :cond_26

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/esotericsoftware/a/j;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v0, v4, v10, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_26
    move/from16 v2, v36

    if-eqz v2, :cond_27

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v36, v2, 0x2

    move/from16 v2, v36

    :goto_1a
    if-lez v3, :cond_27

    invoke-direct {v0, v11, v2}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    iget v5, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v6, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v1, v5, v6, v2, v13}, Lcom/esotericsoftware/a/j;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    invoke-direct {v0, v4, v10, v13, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    :cond_27
    move/from16 v2, v37

    if-eqz v2, :cond_28

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v37, v2, 0x2

    move/from16 v2, v37

    :goto_1b
    if-lez v3, :cond_28

    invoke-direct {v0, v11, v2}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    iget v5, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v6, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v2, v10}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v6, v2, v13}, Lcom/esotericsoftware/a/j;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v0, v4, v10, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_28
    :goto_1c
    if-eqz v8, :cond_29

    iget-object v2, v8, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    const/4 v3, 0x0

    iput-object v3, v8, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    invoke-virtual {v1, v8}, Lcom/esotericsoftware/a/j;->a(Lcom/esotericsoftware/a/c;)V

    move-object v8, v2

    goto :goto_1c

    :cond_29
    add-int/lit8 v1, v19, -0x1

    move-object/from16 v35, v7

    move-object v6, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    const/4 v8, 0x1

    move-object/from16 v7, p1

    move/from16 v54, v9

    move v9, v1

    move/from16 v1, v54

    goto/16 :goto_10

    :cond_2a
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v7, v35

    move-object v12, v6

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, -0x2

    .line 1000
    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    move v8, v2

    :goto_1d
    if-lez v8, :cond_9a

    .line 3000
    iget-object v9, v11, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    iput v2, v11, Lcom/esotericsoftware/a/h;->e:I

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/esotericsoftware/a/h;->f:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/esotericsoftware/a/h;->g:Ljava/lang/String;

    add-int/lit8 v10, v1, 0x6

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v1

    move/from16 v18, v8

    move/from16 v20, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    :goto_1e
    if-lez v1, :cond_3b

    move/from16 v21, v2

    add-int/lit8 v2, v20, 0x2

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v3

    const-string v3, "Code"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget v2, v11, Lcom/esotericsoftware/a/h;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_2b

    add-int/lit8 v2, v20, 0x8

    move/from16 v41, v2

    :goto_1f
    move/from16 v2, v21

    :goto_20
    move/from16 v3, v22

    goto/16 :goto_28

    :cond_2b
    move/from16 v27, v4

    :goto_21
    move-object/from16 v28, v6

    goto/16 :goto_27

    :cond_2c
    const-string v3, "Exceptions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    add-int/lit8 v2, v20, 0x8

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    add-int/lit8 v6, v20, 0xa

    move/from16 v27, v4

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_2d

    invoke-virtual {v0, v6, v9}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v4

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2d
    move/from16 v19, v6

    move/from16 v2, v21

    move/from16 v4, v27

    move-object v6, v3

    goto :goto_20

    :cond_2e
    move/from16 v27, v4

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    add-int/lit8 v2, v20, 0x8

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    :goto_23
    move/from16 v2, v21

    :goto_24
    move/from16 v3, v22

    :goto_25
    move/from16 v4, v27

    goto/16 :goto_28

    :cond_2f
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v2, v11, Lcom/esotericsoftware/a/h;->e:I

    or-int v2, v2, v26

    iput v2, v11, Lcom/esotericsoftware/a/h;->e:I

    goto :goto_21

    :cond_30
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v2, v20, 0x8

    move v3, v2

    move/from16 v2, v21

    goto :goto_25

    :cond_31
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    add-int/lit8 v2, v20, 0x8

    move v8, v2

    goto :goto_23

    :cond_32
    const-string v3, "AnnotationDefault"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    add-int/lit8 v2, v20, 0x8

    move v4, v2

    goto :goto_1f

    :cond_33
    move-object/from16 v4, v24

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v2, v11, Lcom/esotericsoftware/a/h;->e:I

    or-int v2, v2, v25

    iput v2, v11, Lcom/esotericsoftware/a/h;->e:I

    move-object/from16 v24, v4

    goto/16 :goto_21

    :cond_34
    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    add-int/lit8 v2, v20, 0x8

    move-object/from16 v24, v4

    goto :goto_24

    :cond_35
    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_36

    add-int/lit8 v2, v20, 0x8

    move/from16 v38, v2

    move-object/from16 v23, v3

    :goto_26
    move-object/from16 v24, v4

    goto :goto_23

    :cond_36
    move-object/from16 v23, v3

    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    add-int/lit8 v2, v20, 0x8

    move/from16 v39, v2

    goto :goto_26

    :cond_37
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    add-int/lit8 v2, v20, 0x8

    move/from16 v40, v2

    goto :goto_26

    :cond_38
    const-string v3, "MethodParameters"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    add-int/lit8 v2, v20, 0x8

    move/from16 v16, v2

    goto :goto_26

    :cond_39
    iget-object v3, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    move-object/from16 v24, v4

    add-int/lit8 v4, v20, 0x8

    move-object/from16 v28, v6

    add-int/lit8 v6, v20, 0x4

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v6

    invoke-direct {v0, v3, v2, v4, v6}, Lcom/esotericsoftware/a/e;->a([Lcom/esotericsoftware/a/c;Ljava/lang/String;II)Lcom/esotericsoftware/a/c;

    move-result-object v2

    if-eqz v2, :cond_3a

    iput-object v5, v2, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    move-object v5, v2

    :cond_3a
    :goto_27
    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v27

    move-object/from16 v6, v28

    :goto_28
    move/from16 v21, v2

    add-int/lit8 v2, v20, 0x4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int v20, v20, v2

    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v21

    goto/16 :goto_1e

    :cond_3b
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v27, v4

    move-object/from16 v28, v6

    add-int/lit8 v20, v20, 0x2

    iget v2, v11, Lcom/esotericsoftware/a/h;->e:I

    iget-object v3, v11, Lcom/esotericsoftware/a/h;->f:Ljava/lang/String;

    iget-object v4, v11, Lcom/esotericsoftware/a/h;->g:Ljava/lang/String;

    move-object/from16 v1, p1

    move/from16 v6, v21

    move-object/from16 v21, v12

    move/from16 v12, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v15

    move/from16 v15, v27

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v28

    move-object/from16 v28, v14

    move v14, v6

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/esotericsoftware/a/q;

    move-result-object v1

    if-eqz v1, :cond_99

    instance-of v2, v1, Lcom/esotericsoftware/a/r;

    if-eqz v2, :cond_40

    move-object v2, v1

    check-cast v2, Lcom/esotericsoftware/a/r;

    iget-object v3, v2, Lcom/esotericsoftware/a/r;->c:Lcom/esotericsoftware/a/g;

    iget-object v3, v3, Lcom/esotericsoftware/a/g;->d:Lcom/esotericsoftware/a/e;

    if-ne v3, v0, :cond_40

    iget-object v3, v2, Lcom/esotericsoftware/a/r;->d:Ljava/lang/String;

    if-ne v13, v3, :cond_40

    move-object/from16 v6, v29

    if-nez v6, :cond_3c

    iget v3, v2, Lcom/esotericsoftware/a/r;->g:I

    if-nez v3, :cond_3f

    goto :goto_2a

    :cond_3c
    array-length v3, v6

    iget v4, v2, Lcom/esotericsoftware/a/r;->g:I

    if-ne v3, v4, :cond_3f

    array-length v3, v6

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_29
    if-ltz v3, :cond_3e

    add-int/lit8 v4, v19, -0x2

    iget-object v5, v2, Lcom/esotericsoftware/a/r;->h:[I

    aget v5, v5, v3

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    if-eq v5, v6, :cond_3d

    goto :goto_2b

    :cond_3d
    add-int/lit8 v3, v3, -0x1

    move/from16 v19, v4

    goto :goto_29

    :cond_3e
    :goto_2a
    const/4 v3, 0x1

    goto :goto_2c

    :cond_3f
    :goto_2b
    const/4 v3, 0x0

    :goto_2c
    if-eqz v3, :cond_40

    iput v10, v2, Lcom/esotericsoftware/a/r;->e:I

    sub-int v1, v20, v10

    iput v1, v2, Lcom/esotericsoftware/a/r;->f:I

    goto/16 :goto_7f

    :cond_40
    if-eqz v16, :cond_41

    iget-object v2, v0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte v2, v2, v16

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v16, v16, 0x1

    move/from16 v3, v16

    :goto_2d
    if-lez v2, :cond_41

    invoke-virtual {v0, v3, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x4

    add-int/2addr v3, v4

    goto :goto_2d

    :cond_41
    if-eqz v15, :cond_42

    invoke-virtual {v1}, Lcom/esotericsoftware/a/q;->a()Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v15, v9, v3, v2}, Lcom/esotericsoftware/a/e;->a(I[CLjava/lang/String;Lcom/esotericsoftware/a/a;)I

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Lcom/esotericsoftware/a/a;->a()V

    :cond_42
    if-eqz v12, :cond_43

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v3, v12, 0x2

    :goto_2e
    if-lez v2, :cond_43

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v3, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v3

    invoke-direct {v0, v4, v9, v5, v3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    :cond_43
    if-eqz v14, :cond_44

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v3, v14, 0x2

    :goto_2f
    if-lez v2, :cond_44

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v0, v3, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v4, v9, v5, v3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_44
    if-eqz v8, :cond_45

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    add-int/lit8 v8, v8, 0x2

    :goto_30
    if-lez v2, :cond_45

    invoke-direct {v0, v11, v8}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    iget v5, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v6, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v3, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v6, v3, v8}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v3

    invoke-direct {v0, v4, v9, v8, v3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    move v8, v3

    goto :goto_30

    :cond_45
    move/from16 v2, v38

    if-eqz v2, :cond_46

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    add-int/lit8 v38, v2, 0x2

    move/from16 v2, v38

    :goto_31
    if-lez v3, :cond_46

    invoke-direct {v0, v11, v2}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v2

    add-int/lit8 v4, v2, 0x2

    iget v5, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v6, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v2, v9}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v2, v8}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v0, v4, v9, v5, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    move-result v2

    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    :cond_46
    const/4 v5, 0x1

    move/from16 v2, v39

    if-eqz v2, :cond_47

    invoke-direct {v0, v1, v11, v2, v5}, Lcom/esotericsoftware/a/e;->b(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)V

    :cond_47
    move/from16 v2, v40

    if-eqz v2, :cond_48

    const/4 v3, 0x0

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/esotericsoftware/a/e;->b(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)V

    :cond_48
    move-object/from16 v5, v27

    :goto_32
    if-eqz v5, :cond_49

    iget-object v2, v5, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    const/4 v3, 0x0

    iput-object v3, v5, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    invoke-virtual {v1, v5}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/c;)V

    move-object v5, v2

    goto :goto_32

    :cond_49
    move/from16 v2, v41

    if-eqz v2, :cond_99

    .line 4000
    iget-object v3, v0, Lcom/esotericsoftware/a/e;->a:[B

    iget-object v4, v11, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    add-int/lit8 v8, v2, 0x4

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v8

    add-int/lit8 v41, v2, 0x8

    add-int v2, v41, v8

    add-int/lit8 v9, v8, 0x2

    new-array v9, v9, [Lcom/esotericsoftware/a/p;

    iput-object v9, v11, Lcom/esotericsoftware/a/h;->h:[Lcom/esotericsoftware/a/p;

    add-int/lit8 v10, v8, 0x1

    invoke-static {v10, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move/from16 v10, v41

    :goto_33
    if-ge v10, v2, :cond_4d

    sub-int v12, v10, v41

    aget-byte v13, v3, v10

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lcom/esotericsoftware/a/g;->c:[B

    aget-byte v13, v14, v13

    packed-switch v13, :pswitch_data_0

    :cond_4a
    :pswitch_0
    add-int/lit8 v10, v10, 0x4

    goto :goto_33

    :pswitch_1
    add-int/lit8 v12, v10, 0x1

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x84

    if-ne v12, v13, :cond_4a

    add-int/lit8 v10, v10, 0x6

    goto :goto_33

    :pswitch_2
    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v13, v12, 0x3

    sub-int/2addr v10, v13

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v13, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/lit8 v13, v10, 0x4

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    :goto_34
    if-lez v13, :cond_4b

    add-int/lit8 v14, v10, 0xc

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v14, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v13, v13, -0x1

    goto :goto_34

    :cond_4b
    add-int/lit8 v10, v10, 0x8

    goto :goto_33

    :pswitch_3
    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v13, v12, 0x3

    sub-int/2addr v10, v13

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v13, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/lit8 v13, v10, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    add-int/lit8 v14, v10, 0x4

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v14

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/2addr v13, v14

    :goto_35
    if-lez v13, :cond_4c

    add-int/lit8 v14, v10, 0xc

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v14, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v13, v13, -0x1

    goto :goto_35

    :cond_4c
    add-int/lit8 v10, v10, 0xc

    goto :goto_33

    :pswitch_4
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    goto :goto_36

    :pswitch_5
    add-int/lit8 v13, v10, 0x1

    invoke-direct {v0, v13}, Lcom/esotericsoftware/a/e;->e(I)S

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    goto :goto_37

    :goto_36
    :pswitch_6
    add-int/lit8 v10, v10, 0x5

    goto/16 :goto_33

    :goto_37
    :pswitch_7
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_33

    :pswitch_8
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_33

    :pswitch_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_33

    :cond_4d
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    :goto_38
    if-lez v12, :cond_4e

    add-int/lit8 v13, v10, 0x2

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    invoke-static {v13, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v13

    add-int/lit8 v14, v10, 0x4

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v14

    invoke-static {v14, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v14

    add-int/lit8 v15, v10, 0x6

    invoke-virtual {v0, v15}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v15

    invoke-static {v15, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v15

    move/from16 v16, v2

    iget-object v2, v0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v19

    aget v2, v2, v19

    invoke-virtual {v0, v2, v4}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;Ljava/lang/String;)V

    add-int/lit8 v12, v12, -0x1

    move/from16 v2, v16

    goto :goto_38

    :cond_4e
    move/from16 v16, v2

    add-int/lit8 v10, v10, 0x2

    iget v2, v11, Lcom/esotericsoftware/a/h;->b:I

    const/16 v12, 0x8

    and-int/2addr v2, v12

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_39

    :cond_4f
    const/4 v2, 0x0

    :goto_39
    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    move/from16 v29, v10

    move/from16 v30, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x1

    :goto_3a
    if-lez v30, :cond_66

    add-int/lit8 v13, v29, 0x2

    invoke-virtual {v0, v13, v4}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v36, v14

    const-string v14, "LocalVariableTable"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    iget v13, v11, Lcom/esotericsoftware/a/h;->b:I

    and-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_53

    add-int/lit8 v13, v29, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v14

    move/from16 v35, v29

    :goto_3b
    if-lez v14, :cond_52

    move/from16 v37, v13

    add-int/lit8 v13, v35, 0xa

    move-object/from16 v38, v12

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    aget-object v39, v9, v12

    if-nez v39, :cond_50

    move/from16 v39, v13

    invoke-static {v12, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v13

    move-object/from16 v40, v10

    iget v10, v13, Lcom/esotericsoftware/a/p;->a:I

    const/16 v33, 0x1

    or-int/lit8 v10, v10, 0x1

    iput v10, v13, Lcom/esotericsoftware/a/p;->a:I

    goto :goto_3c

    :cond_50
    move-object/from16 v40, v10

    move/from16 v39, v13

    :goto_3c
    add-int/lit8 v10, v35, 0xc

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    add-int/2addr v12, v10

    aget-object v10, v9, v12

    if-nez v10, :cond_51

    invoke-static {v12, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v10

    iget v12, v10, Lcom/esotericsoftware/a/p;->a:I

    const/4 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v10, Lcom/esotericsoftware/a/p;->a:I

    :cond_51
    add-int/lit8 v14, v14, -0x1

    move/from16 v13, v37

    move-object/from16 v12, v38

    move/from16 v35, v39

    move-object/from16 v10, v40

    goto :goto_3b

    :cond_52
    move-object/from16 v40, v10

    move-object/from16 v38, v12

    move/from16 v37, v13

    move-object/from16 v39, v7

    move-object/from16 v14, v36

    move/from16 v50, v37

    move-object/from16 v37, v4

    goto/16 :goto_4a

    :cond_53
    move-object/from16 v40, v10

    move-object/from16 v38, v12

    :cond_54
    move-object/from16 v37, v4

    move-object/from16 v4, v28

    goto/16 :goto_44

    :cond_55
    move-object/from16 v40, v10

    move-object/from16 v38, v12

    const-string v10, "LocalVariableTypeTable"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    add-int/lit8 v10, v29, 0x8

    move-object/from16 v37, v4

    move-object/from16 v39, v7

    move/from16 v51, v10

    goto/16 :goto_45

    :cond_56
    const-string v10, "LineNumberTable"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    iget v10, v11, Lcom/esotericsoftware/a/h;->b:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_54

    add-int/lit8 v10, v29, 0x8

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    move/from16 v12, v29

    :goto_3d
    if-lez v10, :cond_54

    add-int/lit8 v13, v12, 0xa

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    aget-object v14, v9, v13

    if-nez v14, :cond_57

    invoke-static {v13, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    move-result-object v14

    move-object/from16 v37, v4

    iget v4, v14, Lcom/esotericsoftware/a/p;->a:I

    const/16 v33, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Lcom/esotericsoftware/a/p;->a:I

    goto :goto_3e

    :cond_57
    move-object/from16 v37, v4

    :goto_3e
    aget-object v4, v9, v13

    :goto_3f
    iget v13, v4, Lcom/esotericsoftware/a/p;->b:I

    if-lez v13, :cond_59

    iget-object v13, v4, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    if-nez v13, :cond_58

    new-instance v13, Lcom/esotericsoftware/a/p;

    invoke-direct {v13}, Lcom/esotericsoftware/a/p;-><init>()V

    iput-object v13, v4, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    :cond_58
    iget-object v4, v4, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    goto :goto_3f

    :cond_59
    add-int/lit8 v13, v12, 0xc

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    iput v13, v4, Lcom/esotericsoftware/a/p;->b:I

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v4, v37

    goto :goto_3d

    :cond_5a
    move-object/from16 v37, v4

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    add-int/lit8 v4, v29, 0x8

    const/4 v10, 0x1

    invoke-direct {v0, v1, v11, v4, v10}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)[I

    move-result-object v4

    array-length v12, v4

    if-eqz v12, :cond_5c

    const/4 v12, 0x0

    aget v13, v4, v12

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v13

    const/16 v14, 0x43

    if-ge v13, v14, :cond_5b

    goto :goto_40

    :cond_5b
    aget v13, v4, v12

    add-int/2addr v13, v10

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    move/from16 v31, v10

    goto :goto_41

    :cond_5c
    const/4 v12, 0x0

    :goto_40
    const/16 v31, -0x1

    :goto_41
    move-object v10, v4

    move-object/from16 v39, v7

    move-object/from16 v14, v36

    move-object/from16 v12, v38

    goto/16 :goto_4a

    :cond_5d
    move-object/from16 v4, v28

    const/4 v12, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    add-int/lit8 v10, v29, 0x8

    invoke-direct {v0, v1, v11, v10, v12}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/q;Lcom/esotericsoftware/a/h;IZ)[I

    move-result-object v10

    array-length v13, v10

    if-eqz v13, :cond_5f

    aget v13, v10, v12

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v13

    const/16 v14, 0x43

    if-ge v13, v14, :cond_5e

    goto :goto_42

    :cond_5e
    aget v13, v10, v12

    const/4 v12, 0x1

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    move/from16 v32, v12

    goto :goto_43

    :cond_5f
    :goto_42
    const/16 v32, -0x1

    :goto_43
    move-object/from16 v28, v4

    move-object/from16 v39, v7

    move-object v12, v10

    move-object/from16 v14, v36

    goto :goto_47

    :cond_60
    const-string v10, "StackMapTable"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_61

    iget v10, v11, Lcom/esotericsoftware/a/h;->b:I

    const/4 v12, 0x4

    and-int/2addr v10, v12

    if-nez v10, :cond_62

    add-int/lit8 v10, v29, 0xa

    add-int/lit8 v12, v29, 0x4

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v12

    add-int/lit8 v13, v29, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    move-object/from16 v28, v4

    move-object/from16 v39, v7

    move v15, v10

    move/from16 v19, v12

    move/from16 v27, v13

    goto :goto_45

    :cond_61
    const-string v10, "StackMap"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    iget v10, v11, Lcom/esotericsoftware/a/h;->b:I

    const/4 v12, 0x4

    and-int/2addr v10, v12

    if-nez v10, :cond_62

    add-int/lit8 v10, v29, 0xa

    add-int/lit8 v12, v29, 0x4

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v12

    add-int/lit8 v13, v29, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    move-object/from16 v28, v4

    move-object/from16 v39, v7

    move v15, v10

    move/from16 v19, v12

    move/from16 v27, v13

    move-object/from16 v14, v36

    move-object/from16 v12, v38

    move-object/from16 v10, v40

    const/16 v52, 0x0

    goto :goto_4a

    :cond_62
    :goto_44
    move-object/from16 v28, v4

    move-object/from16 v39, v7

    :goto_45
    move-object/from16 v14, v36

    :goto_46
    move-object/from16 v12, v38

    :goto_47
    move-object/from16 v10, v40

    goto :goto_4a

    :cond_63
    move-object/from16 v14, v36

    const/4 v10, 0x0

    :goto_48
    iget-object v12, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    array-length v12, v12

    if-ge v10, v12, :cond_65

    iget-object v12, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    aget-object v12, v12, v10

    iget-object v12, v12, Lcom/esotericsoftware/a/c;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    iget-object v12, v11, Lcom/esotericsoftware/a/h;->a:[Lcom/esotericsoftware/a/c;

    aget-object v12, v12, v10

    move-object/from16 v28, v4

    add-int/lit8 v4, v29, 0x8

    move-object/from16 v39, v7

    add-int/lit8 v7, v29, 0x4

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    invoke-virtual {v12, v0, v4, v7}, Lcom/esotericsoftware/a/c;->a(Lcom/esotericsoftware/a/e;II)Lcom/esotericsoftware/a/c;

    move-result-object v4

    iput-object v14, v4, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    move-object v14, v4

    goto :goto_49

    :cond_64
    move-object/from16 v28, v4

    move-object/from16 v39, v7

    :goto_49
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v28

    move-object/from16 v7, v39

    goto :goto_48

    :cond_65
    move-object/from16 v28, v4

    move-object/from16 v39, v7

    goto :goto_46

    :goto_4a
    add-int/lit8 v4, v29, 0x4

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int v29, v29, v4

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v4, v37

    move-object/from16 v7, v39

    goto/16 :goto_3a

    :cond_66
    move-object/from16 v37, v4

    move-object/from16 v39, v7

    move-object/from16 v40, v10

    move-object/from16 v38, v12

    move-object/from16 v36, v14

    if-eqz v15, :cond_74

    const/4 v4, -0x1

    iput v4, v11, Lcom/esotericsoftware/a/h;->k:I

    const/4 v4, 0x0

    iput v4, v11, Lcom/esotericsoftware/a/h;->o:I

    iput v4, v11, Lcom/esotericsoftware/a/h;->p:I

    iput v4, v11, Lcom/esotericsoftware/a/h;->q:I

    iput v4, v11, Lcom/esotericsoftware/a/h;->s:I

    new-array v4, v6, [Ljava/lang/Object;

    iput-object v4, v11, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    iput-object v4, v11, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    if-eqz v2, :cond_71

    .line 5000
    iget-object v4, v11, Lcom/esotericsoftware/a/h;->g:Ljava/lang/String;

    iget-object v7, v11, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    iget v10, v11, Lcom/esotericsoftware/a/h;->e:I

    const/16 v12, 0x8

    and-int/2addr v10, v12

    if-nez v10, :cond_68

    iget-object v10, v11, Lcom/esotericsoftware/a/h;->f:Ljava/lang/String;

    const-string v12, "<init>"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    sget-object v10, Lcom/esotericsoftware/a/s;->g:Ljava/lang/Integer;

    const/4 v12, 0x0

    aput-object v10, v7, v12

    goto :goto_4b

    :cond_67
    const/4 v12, 0x0

    iget v10, v0, Lcom/esotericsoftware/a/e;->e:I

    add-int/lit8 v10, v10, 0x2

    iget-object v13, v11, Lcom/esotericsoftware/a/h;->c:[C

    invoke-virtual {v0, v10, v13}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v12

    :goto_4b
    const/4 v10, 0x1

    goto :goto_4c

    :cond_68
    const/4 v10, 0x0

    :goto_4c
    move v12, v10

    const/4 v10, 0x1

    :goto_4d
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v29, v5

    const/16 v5, 0x46

    if-eq v14, v5, :cond_70

    const/16 v5, 0x4c

    if-eq v14, v5, :cond_6e

    const/16 v5, 0x53

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x49

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x4a

    if-eq v14, v5, :cond_6c

    const/16 v5, 0x5a

    if-eq v14, v5, :cond_6d

    const/16 v5, 0x5b

    if-eq v14, v5, :cond_69

    packed-switch v14, :pswitch_data_1

    iput v12, v11, Lcom/esotericsoftware/a/h;->p:I

    goto/16 :goto_54

    :pswitch_a
    add-int/lit8 v10, v12, 0x1

    sget-object v5, Lcom/esotericsoftware/a/s;->d:Ljava/lang/Integer;

    aput-object v5, v7, v12

    goto :goto_50

    :cond_69
    :goto_4e
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v14, 0x5b

    if-ne v5, v14, :cond_6a

    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    :cond_6a
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v14, 0x4c

    if-ne v5, v14, :cond_6b

    :goto_4f
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v14, 0x3b

    if-eq v5, v14, :cond_6b

    goto :goto_4f

    :cond_6b
    add-int/lit8 v5, v12, 0x1

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-virtual {v4, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v12

    move v12, v5

    goto :goto_51

    :cond_6c
    add-int/lit8 v10, v12, 0x1

    sget-object v5, Lcom/esotericsoftware/a/s;->e:Ljava/lang/Integer;

    aput-object v5, v7, v12

    goto :goto_50

    :cond_6d
    :pswitch_b
    add-int/lit8 v10, v12, 0x1

    sget-object v5, Lcom/esotericsoftware/a/s;->b:Ljava/lang/Integer;

    aput-object v5, v7, v12

    :goto_50
    move v12, v10

    :goto_51
    move v10, v13

    :goto_52
    move/from16 v5, v29

    goto :goto_4d

    :cond_6e
    move v5, v13

    :goto_53
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x3b

    if-eq v10, v14, :cond_6f

    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_6f
    add-int/lit8 v10, v12, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v4, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v12

    move v12, v10

    move v10, v14

    goto :goto_52

    :cond_70
    add-int/lit8 v10, v12, 0x1

    sget-object v5, Lcom/esotericsoftware/a/s;->c:Ljava/lang/Integer;

    aput-object v5, v7, v12

    goto :goto_50

    :cond_71
    move/from16 v29, v5

    :goto_54
    move v4, v15

    :goto_55
    add-int v5, v15, v19

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_73

    .line 4000
    aget-byte v5, v3, v4

    const/16 v7, 0x8

    if-ne v5, v7, :cond_72

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    if-ltz v5, :cond_72

    if-ge v5, v8, :cond_72

    add-int v7, v41, v5

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v10, 0xbb

    if-ne v7, v10, :cond_72

    invoke-static {v5, v9}, Lcom/esotericsoftware/a/e;->a(I[Lcom/esotericsoftware/a/p;)Lcom/esotericsoftware/a/p;

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_73
    move-object v4, v11

    goto :goto_56

    :cond_74
    move/from16 v29, v5

    const/4 v4, 0x0

    :goto_56
    move/from16 v10, v41

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_57
    move/from16 v12, v16

    if-ge v10, v12, :cond_8d

    sub-int v13, v10, v41

    aget-object v14, v9, v13

    move-object/from16 v16, v4

    if-eqz v14, :cond_75

    iget-object v4, v14, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    iput-object v4, v14, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    invoke-virtual {v1, v14}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    iget v4, v11, Lcom/esotericsoftware/a/h;->b:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_75

    iget v4, v14, Lcom/esotericsoftware/a/p;->b:I

    if-lez v4, :cond_75

    iget v4, v14, Lcom/esotericsoftware/a/p;->b:I

    invoke-virtual {v1, v4, v14}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/p;)V

    move-object/from16 v4, v19

    :goto_58
    if-eqz v4, :cond_75

    move/from16 v19, v5

    iget v5, v4, Lcom/esotericsoftware/a/p;->b:I

    invoke-virtual {v1, v5, v14}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/p;)V

    iget-object v4, v4, Lcom/esotericsoftware/a/p;->i:Lcom/esotericsoftware/a/p;

    move/from16 v5, v19

    goto :goto_58

    :cond_75
    move/from16 v19, v5

    move-object/from16 v4, v16

    :goto_59
    if-eqz v4, :cond_7b

    iget v5, v4, Lcom/esotericsoftware/a/h;->k:I

    if-eq v5, v13, :cond_76

    iget v5, v4, Lcom/esotericsoftware/a/h;->k:I

    const/4 v14, -0x1

    if-ne v5, v14, :cond_7b

    goto :goto_5a

    :cond_76
    const/4 v14, -0x1

    :goto_5a
    iget v5, v4, Lcom/esotericsoftware/a/h;->k:I

    if-eq v5, v14, :cond_79

    move/from16 v5, v52

    if-eqz v5, :cond_78

    if-eqz v2, :cond_77

    goto :goto_5b

    :cond_77
    iget v14, v4, Lcom/esotericsoftware/a/h;->o:I

    move/from16 v16, v7

    iget v7, v4, Lcom/esotericsoftware/a/h;->q:I

    move/from16 v30, v12

    iget-object v12, v4, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    move/from16 v52, v6

    iget v6, v4, Lcom/esotericsoftware/a/h;->s:I

    move/from16 v48, v8

    iget-object v8, v4, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    move-object/from16 v42, v1

    move/from16 v43, v14

    move/from16 v44, v7

    move-object/from16 v45, v12

    move/from16 v46, v6

    move-object/from16 v47, v8

    invoke-virtual/range {v42 .. v47}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_5c

    :cond_78
    :goto_5b
    move/from16 v52, v6

    move/from16 v16, v7

    move/from16 v48, v8

    move/from16 v30, v12

    const/16 v43, -0x1

    iget v6, v4, Lcom/esotericsoftware/a/h;->p:I

    iget-object v7, v4, Lcom/esotericsoftware/a/h;->r:[Ljava/lang/Object;

    iget v8, v4, Lcom/esotericsoftware/a/h;->s:I

    iget-object v12, v4, Lcom/esotericsoftware/a/h;->t:[Ljava/lang/Object;

    move-object/from16 v42, v1

    move/from16 v44, v6

    move-object/from16 v45, v7

    move/from16 v46, v8

    move-object/from16 v47, v12

    invoke-virtual/range {v42 .. v47}, Lcom/esotericsoftware/a/q;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_5c

    :cond_79
    move/from16 v16, v7

    move/from16 v48, v8

    move/from16 v30, v12

    move/from16 v5, v52

    move/from16 v52, v6

    :goto_5c
    if-lez v27, :cond_7a

    invoke-direct {v0, v15, v5, v2, v4}, Lcom/esotericsoftware/a/e;->a(IZZLcom/esotericsoftware/a/h;)I

    move-result v15

    add-int/lit8 v27, v27, -0x1

    move/from16 v7, v16

    move/from16 v12, v30

    move/from16 v8, v48

    move/from16 v6, v52

    goto :goto_5d

    :cond_7a
    move/from16 v7, v16

    move/from16 v12, v30

    move/from16 v8, v48

    move/from16 v6, v52

    const/4 v4, 0x0

    :goto_5d
    move/from16 v52, v5

    goto/16 :goto_59

    :cond_7b
    move/from16 v16, v7

    move/from16 v48, v8

    move/from16 v30, v12

    move/from16 v5, v52

    move/from16 v52, v6

    aget-byte v6, v3, v10

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/esotericsoftware/a/g;->c:[B

    aget-byte v7, v7, v6

    packed-switch v7, :pswitch_data_2

    :pswitch_c
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v10, 0x3

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v2, v4}, Lcom/esotericsoftware/a/q;->b(Ljava/lang/String;I)V

    add-int/lit8 v10, v10, 0x4

    goto/16 :goto_6e

    :pswitch_d
    add-int/lit8 v6, v10, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x84

    if-ne v6, v7, :cond_7c

    add-int/lit8 v6, v10, 0x2

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    add-int/lit8 v7, v10, 0x4

    invoke-direct {v0, v7}, Lcom/esotericsoftware/a/e;->e(I)S

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/esotericsoftware/a/q;->c(II)V

    add-int/lit8 v10, v10, 0x6

    goto :goto_5e

    :cond_7c
    add-int/lit8 v7, v10, 0x2

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/esotericsoftware/a/q;->b(II)V

    add-int/lit8 v10, v10, 0x4

    :goto_5e
    move/from16 v49, v2

    goto/16 :goto_62

    :pswitch_e
    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v6, v13, 0x3

    sub-int/2addr v10, v6

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v6

    add-int/2addr v6, v13

    add-int/lit8 v7, v10, 0x4

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    new-array v8, v7, [I

    new-array v12, v7, [Lcom/esotericsoftware/a/p;

    const/16 v14, 0x8

    add-int/2addr v10, v14

    move v14, v10

    const/4 v10, 0x0

    :goto_5f
    if-ge v10, v7, :cond_7d

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v42

    aput v42, v8, v10

    move/from16 v49, v2

    add-int/lit8 v2, v14, 0x4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v9, v2

    aput-object v2, v12, v10

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v49

    goto :goto_5f

    :cond_7d
    move/from16 v49, v2

    aget-object v2, v9, v6

    invoke-virtual {v1, v2, v8, v12}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;[I[Lcom/esotericsoftware/a/p;)V

    goto :goto_61

    :pswitch_f
    move/from16 v49, v2

    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v2, v13, 0x3

    sub-int/2addr v10, v2

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 v6, v10, 0x4

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v6

    add-int/lit8 v7, v10, 0x8

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v7

    sub-int v8, v7, v6

    const/4 v12, 0x1

    add-int/2addr v8, v12

    new-array v12, v8, [Lcom/esotericsoftware/a/p;

    add-int/lit8 v10, v10, 0xc

    move v14, v10

    const/4 v10, 0x0

    :goto_60
    if-ge v10, v8, :cond_7e

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v42

    add-int v42, v13, v42

    aget-object v42, v9, v42

    aput-object v42, v12, v10

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    :cond_7e
    aget-object v2, v9, v2

    invoke-virtual {v1, v6, v7, v2, v12}, Lcom/esotericsoftware/a/q;->a(IILcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;)V

    :goto_61
    move/from16 v53, v5

    move v10, v14

    goto :goto_63

    :pswitch_10
    move/from16 v49, v2

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v6, v10, 0x2

    aget-byte v6, v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/esotericsoftware/a/q;->c(II)V

    add-int/lit8 v10, v10, 0x3

    :goto_62
    move/from16 v53, v5

    :goto_63
    move/from16 v5, v19

    move/from16 v2, v31

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    goto/16 :goto_6f

    :pswitch_11
    move/from16 v49, v2

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    move-object/from16 v7, v37

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    goto :goto_64

    :pswitch_12
    move/from16 v49, v2

    move-object/from16 v7, v37

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x2

    goto :goto_65

    :pswitch_13
    move/from16 v49, v2

    move-object/from16 v7, v37

    add-int/lit8 v6, v6, -0x21

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v9, v2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/p;)V

    add-int/lit8 v10, v10, 0x5

    goto :goto_65

    :pswitch_14
    move/from16 v49, v2

    move-object/from16 v7, v37

    add-int/lit8 v2, v10, 0x1

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/e;->e(I)S

    move-result v2

    add-int/2addr v2, v13

    aget-object v2, v9, v2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/p;)V

    :goto_64
    add-int/lit8 v10, v10, 0x3

    :goto_65
    move-object/from16 v37, v4

    move/from16 v53, v5

    move/from16 v5, v19

    move/from16 v2, v31

    const/16 v17, 0x4

    goto/16 :goto_6f

    :pswitch_15
    move/from16 v49, v2

    move-object/from16 v7, v37

    iget-object v2, v0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v6

    aget v2, v2, v6

    iget-object v6, v11, Lcom/esotericsoftware/a/h;->d:[I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v8

    aget v6, v6, v8

    invoke-virtual {v0, v6}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v8

    invoke-virtual {v0, v8, v7}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/esotericsoftware/a/m;

    add-int/lit8 v12, v6, 0x2

    invoke-virtual {v0, v12}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v12

    new-array v14, v12, [Ljava/lang/Object;

    const/16 v17, 0x4

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v37, v4

    move v4, v6

    const/4 v6, 0x0

    :goto_66
    move/from16 v53, v5

    if-ge v6, v12, :cond_7f

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v5

    invoke-virtual {v0, v5, v7}, Lcom/esotericsoftware/a/e;->c(I[C)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v14, v6

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v53

    goto :goto_66

    :cond_7f
    iget-object v4, v0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    aget v2, v4, v2

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v8, v14}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/m;[Ljava/lang/Object;)V

    :goto_67
    add-int/lit8 v10, v10, 0x5

    goto/16 :goto_6e

    :pswitch_16
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    iget-object v2, v0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v4

    aget v2, v2, v4

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_80

    const/16 v47, 0x1

    goto :goto_68

    :cond_80
    const/16 v47, 0x0

    :goto_68
    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/esotericsoftware/a/e;->b:[I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    aget v2, v5, v2

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xb6

    if-ge v6, v8, :cond_81

    invoke-virtual {v1, v6, v4, v5, v2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_81
    move-object/from16 v42, v1

    move/from16 v43, v6

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v46, v2

    invoke-virtual/range {v42 .. v47}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_69
    const/16 v2, 0xb9

    if-ne v6, v2, :cond_83

    goto :goto_67

    :pswitch_17
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->a(ILjava/lang/String;)V

    goto :goto_6b

    :pswitch_18
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    const/16 v2, 0x36

    if-le v6, v2, :cond_82

    add-int/lit8 v6, v6, -0x3b

    shr-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x36

    goto :goto_6a

    :cond_82
    add-int/lit8 v6, v6, -0x1a

    shr-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x15

    :goto_6a
    and-int/lit8 v4, v6, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/esotericsoftware/a/q;->b(II)V

    goto :goto_6d

    :pswitch_19
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->b(II)V

    goto :goto_6c

    :pswitch_1a
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    add-int/lit8 v2, v10, 0x1

    invoke-direct {v0, v2}, Lcom/esotericsoftware/a/e;->e(I)S

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->a(II)V

    :cond_83
    :goto_6b
    add-int/lit8 v10, v10, 0x3

    goto :goto_6e

    :pswitch_1b
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    add-int/lit8 v2, v10, 0x1

    aget-byte v2, v3, v2

    invoke-virtual {v1, v6, v2}, Lcom/esotericsoftware/a/q;->a(II)V

    :goto_6c
    add-int/lit8 v10, v10, 0x2

    goto :goto_6e

    :pswitch_1c
    move/from16 v49, v2

    move/from16 v53, v5

    move-object/from16 v7, v37

    const/16 v17, 0x4

    move-object/from16 v37, v4

    invoke-virtual {v1, v6}, Lcom/esotericsoftware/a/q;->a(I)V

    :goto_6d
    add-int/lit8 v10, v10, 0x1

    :goto_6e
    move/from16 v5, v19

    move/from16 v2, v31

    :goto_6f
    move-object/from16 v4, v40

    if-eqz v40, :cond_87

    array-length v6, v4

    if-ge v5, v6, :cond_87

    if-gt v2, v13, :cond_87

    if-ne v2, v13, :cond_84

    aget v2, v4, v5

    invoke-direct {v0, v11, v2}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    iget v8, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v12, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    invoke-virtual {v1, v8, v12, v2, v14}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    invoke-direct {v0, v6, v7, v14, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    :cond_84
    add-int/lit8 v5, v5, 0x1

    array-length v2, v4

    if-ge v5, v2, :cond_86

    aget v2, v4, v5

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v2

    const/16 v6, 0x43

    if-ge v2, v6, :cond_85

    goto :goto_70

    :cond_85
    aget v2, v4, v5

    const/4 v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    goto :goto_71

    :cond_86
    :goto_70
    const/4 v2, -0x1

    :goto_71
    move-object/from16 v40, v4

    goto :goto_6f

    :cond_87
    move/from16 v6, v16

    move/from16 v8, v32

    :goto_72
    if-eqz v38, :cond_8c

    move-object/from16 v12, v38

    array-length v14, v12

    if-ge v6, v14, :cond_8b

    if-gt v8, v13, :cond_8b

    if-ne v8, v13, :cond_88

    aget v8, v12, v6

    invoke-direct {v0, v11, v8}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v8

    add-int/lit8 v14, v8, 0x2

    move/from16 v16, v2

    iget v2, v11, Lcom/esotericsoftware/a/h;->i:I

    move-object/from16 v19, v3

    iget-object v3, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    invoke-virtual {v0, v8, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v8

    move/from16 v31, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v8, v5}, Lcom/esotericsoftware/a/q;->b(ILcom/esotericsoftware/a/u;Ljava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v14, v7, v3, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    goto :goto_73

    :cond_88
    move/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v31, v5

    const/4 v5, 0x0

    :goto_73
    add-int/lit8 v6, v6, 0x1

    array-length v2, v12

    if-ge v6, v2, :cond_8a

    aget v2, v12, v6

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v2

    const/16 v3, 0x43

    if-ge v2, v3, :cond_89

    goto :goto_74

    :cond_89
    aget v2, v12, v6

    const/4 v8, 0x1

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    move v8, v2

    goto :goto_75

    :cond_8a
    const/16 v3, 0x43

    :goto_74
    const/4 v8, -0x1

    :goto_75
    move-object/from16 v38, v12

    move/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v5, v31

    goto :goto_72

    :cond_8b
    move/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v31, v5

    goto :goto_76

    :cond_8c
    move/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v31, v5

    move-object/from16 v12, v38

    :goto_76
    const/16 v3, 0x43

    const/4 v5, 0x0

    move-object/from16 v40, v4

    move/from16 v32, v8

    move-object/from16 v38, v12

    move-object/from16 v3, v19

    move/from16 v5, v31

    move-object/from16 v4, v37

    move/from16 v8, v48

    move/from16 v2, v49

    move-object/from16 v37, v7

    move/from16 v31, v16

    move/from16 v16, v30

    move v7, v6

    move/from16 v6, v52

    move/from16 v52, v53

    goto/16 :goto_57

    :cond_8d
    move/from16 v52, v6

    move/from16 v48, v8

    move-object/from16 v7, v37

    move-object/from16 v12, v38

    move-object/from16 v4, v40

    const/4 v5, 0x0

    const/16 v17, 0x4

    aget-object v2, v9, v48

    if-eqz v2, :cond_8e

    aget-object v2, v9, v48

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/p;)V

    :cond_8e
    iget v2, v11, Lcom/esotericsoftware/a/h;->b:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_93

    move/from16 v2, v50

    if-eqz v2, :cond_93

    move/from16 v3, v51

    if-eqz v3, :cond_8f

    add-int/lit8 v51, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    new-array v6, v3, [I

    move/from16 v8, v51

    :goto_77
    if-lez v3, :cond_90

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v10, v8, 0x6

    aput v10, v6, v3

    const/4 v10, -0x1

    add-int/2addr v3, v10

    add-int/lit8 v13, v8, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    aput v13, v6, v3

    add-int/2addr v3, v10

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    aput v13, v6, v3

    add-int/lit8 v8, v8, 0xa

    goto :goto_77

    :cond_8f
    const/4 v6, 0x0

    :cond_90
    add-int/lit8 v50, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v2

    move/from16 v3, v50

    :goto_78
    if-lez v2, :cond_93

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v8

    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v0, v10}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v10

    add-int/lit8 v13, v3, 0x8

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result v13

    if-eqz v6, :cond_92

    const/4 v14, 0x0

    :goto_79
    array-length v15, v6

    if-ge v14, v15, :cond_92

    aget v15, v6, v14

    if-ne v15, v8, :cond_91

    add-int/lit8 v15, v14, 0x1

    aget v15, v6, v15

    if-ne v15, v13, :cond_91

    add-int/lit8 v14, v14, 0x2

    aget v14, v6, v14

    invoke-virtual {v0, v14, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v45, v14

    goto :goto_7a

    :cond_91
    add-int/lit8 v14, v14, 0x3

    goto :goto_79

    :cond_92
    const/16 v45, 0x0

    :goto_7a
    add-int/lit8 v14, v3, 0x4

    invoke-virtual {v0, v14, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v43

    add-int/lit8 v14, v3, 0x6

    invoke-virtual {v0, v14, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v44

    aget-object v46, v9, v8

    add-int/2addr v8, v10

    aget-object v47, v9, v8

    move-object/from16 v42, v1

    move/from16 v48, v13

    invoke-virtual/range {v42 .. v48}, Lcom/esotericsoftware/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/a/p;Lcom/esotericsoftware/a/p;I)V

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, -0x1

    goto :goto_78

    :cond_93
    if-eqz v4, :cond_95

    const/4 v2, 0x0

    :goto_7b
    array-length v3, v4

    if-ge v2, v3, :cond_95

    aget v3, v4, v2

    invoke-virtual {v0, v3}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v3

    const/4 v6, 0x1

    shr-int/2addr v3, v6

    const/16 v6, 0x20

    if-ne v3, v6, :cond_94

    aget v3, v4, v2

    invoke-direct {v0, v11, v3}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v3

    add-int/lit8 v6, v3, 0x2

    iget v8, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v9, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    iget-object v10, v11, Lcom/esotericsoftware/a/h;->l:[Lcom/esotericsoftware/a/p;

    iget-object v13, v11, Lcom/esotericsoftware/a/h;->m:[Lcom/esotericsoftware/a/p;

    iget-object v14, v11, Lcom/esotericsoftware/a/h;->n:[I

    invoke-virtual {v0, v3, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v42, v1

    move/from16 v43, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v46, v13

    move-object/from16 v47, v14

    invoke-virtual/range {v42 .. v49}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;[Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;[ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v3

    const/4 v8, 0x1

    invoke-direct {v0, v6, v7, v8, v3}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_95
    if-eqz v12, :cond_97

    const/4 v4, 0x0

    :goto_7c
    array-length v2, v12

    if-ge v4, v2, :cond_97

    aget v2, v12, v4

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_96

    aget v2, v12, v4

    invoke-direct {v0, v11, v2}, Lcom/esotericsoftware/a/e;->a(Lcom/esotericsoftware/a/h;I)I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    iget v6, v11, Lcom/esotericsoftware/a/h;->i:I

    iget-object v8, v11, Lcom/esotericsoftware/a/h;->j:Lcom/esotericsoftware/a/u;

    iget-object v9, v11, Lcom/esotericsoftware/a/h;->l:[Lcom/esotericsoftware/a/p;

    iget-object v10, v11, Lcom/esotericsoftware/a/h;->m:[Lcom/esotericsoftware/a/p;

    iget-object v13, v11, Lcom/esotericsoftware/a/h;->n:[I

    invoke-virtual {v0, v2, v7}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v42, v1

    move/from16 v43, v6

    move-object/from16 v44, v8

    move-object/from16 v45, v9

    move-object/from16 v46, v10

    move-object/from16 v47, v13

    invoke-virtual/range {v42 .. v49}, Lcom/esotericsoftware/a/q;->a(ILcom/esotericsoftware/a/u;[Lcom/esotericsoftware/a/p;[Lcom/esotericsoftware/a/p;[ILjava/lang/String;Z)Lcom/esotericsoftware/a/a;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/esotericsoftware/a/e;->a(I[CZLcom/esotericsoftware/a/a;)I

    goto :goto_7d

    :cond_96
    const/4 v6, 0x1

    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    :cond_97
    const/4 v6, 0x1

    move-object/from16 v14, v36

    :goto_7e
    if-eqz v14, :cond_98

    iget-object v2, v14, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    const/4 v3, 0x0

    iput-object v3, v14, Lcom/esotericsoftware/a/c;->c:Lcom/esotericsoftware/a/c;

    invoke-virtual {v1, v14}, Lcom/esotericsoftware/a/q;->a(Lcom/esotericsoftware/a/c;)V

    move-object v14, v2

    goto :goto_7e

    :cond_98
    move/from16 v2, v29

    move/from16 v4, v52

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/esotericsoftware/a/q;->d(II)V

    goto :goto_80

    :cond_99
    :goto_7f
    move-object/from16 v39, v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x4

    :goto_80
    add-int/lit8 v8, v18, -0x1

    move/from16 v1, v20

    move-object/from16 v12, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v23, v28

    move-object/from16 v7, v39

    goto/16 :goto_1d

    :cond_9a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final b(I)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public final b(I[C)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)I
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    return p1
.end method

.method public final c(I[C)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->a(I)I

    move-result v3

    iget-object v0, p0, Lcom/esotericsoftware/a/e;->b:[I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    aget p1, v0, p1

    iget-object v2, p0, Lcom/esotericsoftware/a/e;->a:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v2, v2, v4

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->b(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->b(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/esotericsoftware/a/m;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/esotericsoftware/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/a/t;->b(Ljava/lang/String;)Lcom/esotericsoftware/a/t;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->d(I)J

    move-result-wide p1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/a/e;->a(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/a/t;->c(Ljava/lang/String;)Lcom/esotericsoftware/a/t;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/a/e;->c(I)I

    move-result p1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    or-long/2addr v0, v2

    return-wide v0
.end method
