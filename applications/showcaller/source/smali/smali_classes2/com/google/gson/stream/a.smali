.class public Lcom/google/gson/stream/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final d:[C


# instance fields
.field private final e:Ljava/io/Reader;

.field private f:Z

.field private final g:[C

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field l:I

.field private m:J

.field private n:I

.field private o:Ljava/lang/String;

.field private p:[I

.field private q:I

.field private r:[Ljava/lang/String;

.field private s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/a;->d:[C

    .line 2
    new-instance v0, Lcom/google/gson/stream/a$a;

    invoke-direct {v0}, Lcom/google/gson/stream/a$a;-><init>()V

    sput-object v0, Lcom/google/gson/a/a;->a:Lcom/google/gson/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/gson/stream/a;->f:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 3
    iput-object v1, p0, Lcom/google/gson/stream/a;->g:[C

    .line 4
    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    .line 5
    iput v0, p0, Lcom/google/gson/stream/a;->i:I

    .line 6
    iput v0, p0, Lcom/google/gson/stream/a;->j:I

    .line 7
    iput v0, p0, Lcom/google/gson/stream/a;->k:I

    .line 8
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Lcom/google/gson/stream/a;->p:[I

    .line 10
    iput v0, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v3, v0, 0x1

    .line 11
    iput v3, p0, Lcom/google/gson/stream/a;->q:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 13
    iput-object v0, p0, Lcom/google/gson/stream/a;->s:[I

    const-string v0, "in == null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/gson/stream/a;->e:Ljava/io/Reader;

    return-void
.end method

.method private D(Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    .line 2
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 3
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 5
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 8
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 9
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 10
    iget v1, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/a;->j:I

    .line 11
    iput v4, p0, Lcom/google/gson/stream/a;->k:I

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x20

    if-eq v1, v5, :cond_b

    const/16 v5, 0xd

    if-eq v1, v5, :cond_b

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_9

    .line 12
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    const/4 v6, 0x2

    if-ne v4, v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 13
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    .line 14
    invoke-direct {p0, v6}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v2

    .line 15
    iget v4, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    if-nez v2, :cond_5

    return v1

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 17
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v3, v0, v2

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_7

    if-eq v3, v5, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 18
    iput v2, p0, Lcom/google/gson/stream/a;->h:I

    .line 19
    invoke-direct {p0}, Lcom/google/gson/stream/a;->d0()V

    .line 20
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 21
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 22
    iput v2, p0, Lcom/google/gson/stream/a;->h:I

    const-string v1, "*/"

    .line 23
    invoke-direct {p0, v1}, Lcom/google/gson/stream/a;->a0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v6

    .line 25
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    goto/16 :goto_0

    :cond_8
    const-string p1, "Unterminated comment"

    .line 26
    invoke-direct {p0, p1}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v2, 0x23

    if-ne v1, v2, :cond_a

    .line 27
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    .line 28
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 29
    invoke-direct {p0}, Lcom/google/gson/stream/a;->d0()V

    .line 30
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 31
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    return v1

    :cond_b
    :goto_1
    move v1, v4

    goto/16 :goto_0
.end method

.method private I(C)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    .line 3
    iget v3, p0, Lcom/google/gson/stream/a;->i:I

    :goto_1
    move v4, v3

    move v3, v2

    :goto_2
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    add-int/lit8 v7, v2, 0x1

    .line 4
    aget-char v2, v0, v2

    if-ne v2, p1, :cond_1

    .line 5
    iput v7, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    if-nez v1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    .line 9
    iput v7, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 11
    :cond_2
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p0}, Lcom/google/gson/stream/a;->W()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    .line 14
    iget v3, p0, Lcom/google/gson/stream/a;->i:I

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 15
    iget v2, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/gson/stream/a;->j:I

    .line 16
    iput v7, p0, Lcom/google/gson/stream/a;->k:I

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_6
    sub-int v4, v2, v3

    .line 18
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 19
    iput v2, p0, Lcom/google/gson/stream/a;->h:I

    .line 20
    invoke-direct {p0, v6}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 21
    invoke-direct {p0, p1}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private N()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/google/gson/stream/a;->i:I

    if-ge v4, v5, :cond_2

    .line 2
    iget-object v4, p0, Lcom/google/gson/stream/a;->g:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/a;->g:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 5
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/a;->g:[C

    iget v4, p0, Lcom/google/gson/stream/a;->h:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/gson/stream/a;->h:I

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    .line 10
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/a;->g:[C

    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/a;->g:[C

    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/gson/stream/a;->h:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private Q()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    .line 2
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 3
    iget v6, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/gson/stream/a;->i:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 4
    :cond_6
    iget-object v6, p0, Lcom/google/gson/stream/a;->g:[C

    iget v7, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v7, v5

    aget-char v6, v6, v7

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 6
    :cond_8
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/google/gson/stream/a;->i:I

    if-lt v2, v3, :cond_9

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/google/gson/stream/a;->g:[C

    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    .line 7
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->y(C)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 8
    :cond_a
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 9
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0
.end method

.method private R()I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/gson/stream/a;->g:[C

    .line 2
    iget v2, v0, Lcom/google/gson/stream/a;->h:I

    .line 3
    iget v3, v0, Lcom/google/gson/stream/a;->i:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_2

    .line 4
    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v8, 0x1

    .line 5
    invoke-direct {v0, v2}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 6
    :cond_1
    iget v2, v0, Lcom/google/gson/stream/a;->h:I

    .line 7
    iget v3, v0, Lcom/google/gson/stream/a;->i:I

    :cond_2
    add-int v14, v2, v8

    .line 8
    aget-char v14, v1, v14

    const/16 v7, 0x2b

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v14, v7, :cond_1d

    const/16 v7, 0x45

    if-eq v14, v7, :cond_1a

    const/16 v7, 0x65

    if-eq v14, v7, :cond_1a

    const/16 v7, 0x2d

    if-eq v14, v7, :cond_17

    const/16 v7, 0x2e

    if-eq v14, v7, :cond_15

    const/16 v7, 0x30

    if-lt v14, v7, :cond_d

    const/16 v7, 0x39

    if-le v14, v7, :cond_3

    goto :goto_7

    :cond_3
    if-eq v9, v6, :cond_c

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    if-ne v9, v15, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_5
    const-wide/16 v4, 0xa

    mul-long v4, v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v7, v11, v14

    if-gtz v7, :cond_7

    if-nez v7, :cond_6

    cmp-long v7, v4, v11

    if-gez v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v7, 0x1

    :goto_2
    and-int/2addr v10, v7

    move-wide v11, v4

    goto :goto_3

    :cond_8
    if-ne v9, v4, :cond_9

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto :goto_6

    :cond_9
    if-eq v9, v5, :cond_b

    const/4 v4, 0x6

    if-ne v9, v4, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    :goto_4
    const/4 v7, 0x0

    const/4 v9, 0x7

    goto :goto_6

    :cond_c
    :goto_5
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    :goto_6
    const-wide/16 v16, 0x0

    goto/16 :goto_d

    .line 9
    :cond_d
    :goto_7
    invoke-direct {v0, v14}, Lcom/google/gson/stream/a;->y(C)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    if-ne v9, v15, :cond_11

    if-eqz v10, :cond_11

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v11, v1

    if-nez v3, :cond_e

    if-eqz v13, :cond_11

    :cond_e
    const-wide/16 v16, 0x0

    cmp-long v1, v11, v16

    if-nez v1, :cond_f

    if-nez v13, :cond_11

    :cond_f
    if-eqz v13, :cond_10

    goto :goto_9

    :cond_10
    neg-long v11, v11

    .line 10
    :goto_9
    iput-wide v11, v0, Lcom/google/gson/stream/a;->m:J

    .line 11
    iget v1, v0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/gson/stream/a;->h:I

    const/16 v1, 0xf

    .line 12
    iput v1, v0, Lcom/google/gson/stream/a;->l:I

    return v1

    :cond_11
    if-eq v9, v15, :cond_13

    const/4 v1, 0x4

    if-eq v9, v1, :cond_13

    const/4 v1, 0x7

    if-ne v9, v1, :cond_12

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    return v7

    .line 13
    :cond_13
    :goto_a
    iput v8, v0, Lcom/google/gson/stream/a;->n:I

    const/16 v1, 0x10

    .line 14
    iput v1, v0, Lcom/google/gson/stream/a;->l:I

    return v1

    :cond_14
    const/4 v7, 0x0

    return v7

    :cond_15
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_16

    const/4 v9, 0x3

    goto :goto_d

    :cond_16
    return v7

    :cond_17
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_18

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_d

    :cond_18
    if-ne v9, v5, :cond_19

    goto :goto_c

    :cond_19
    return v7

    :cond_1a
    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_1c

    const/4 v4, 0x4

    if-ne v9, v4, :cond_1b

    goto :goto_b

    :cond_1b
    return v7

    :cond_1c
    :goto_b
    const/4 v9, 0x5

    goto :goto_d

    :cond_1d
    const/4 v4, 0x6

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_1e

    :goto_c
    const/4 v9, 0x6

    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1e
    return v7
.end method

.method private U(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->q:I

    iget-object v1, p0, Lcom/google/gson/stream/a;->p:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/a;->p:[I

    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/a;->q:I

    aput p1, v0, v1

    return-void
.end method

.method private W()C
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    iget v1, p0, Lcom/google/gson/stream/a;->i:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x22

    if-eq v0, v3, :cond_f

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_f

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v5, 0x72

    if-eq v0, v5, :cond_a

    const/16 v5, 0x74

    if-eq v0, v5, :cond_9

    const/16 v5, 0x75

    if-ne v0, v5, :cond_8

    const/4 v0, 0x4

    add-int/2addr v4, v0

    .line 4
    iget v5, p0, Lcom/google/gson/stream/a;->i:I

    if-le v4, v5, :cond_3

    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 6
    iget v4, p0, Lcom/google/gson/stream/a;->h:I

    add-int/lit8 v5, v4, 0x4

    :goto_2
    if-ge v4, v5, :cond_7

    .line 7
    iget-object v6, p0, Lcom/google/gson/stream/a;->g:[C

    aget-char v6, v6, v4

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v2, v6

    int-to-char v2, v2

    goto :goto_5

    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    if-gt v6, v3, :cond_5

    add-int/lit8 v6, v6, -0x61

    :goto_4
    add-int/2addr v6, v1

    goto :goto_3

    :cond_5
    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    add-int/lit8 v6, v6, -0x41

    goto :goto_4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/a;->g:[C

    iget v5, p0, Lcom/google/gson/stream/a;->h:I

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_7
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    return v2

    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 10
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v0, 0x9

    return v0

    :cond_a
    const/16 v0, 0xd

    return v0

    :cond_b
    return v1

    :cond_c
    const/16 v0, 0xc

    return v0

    :cond_d
    const/16 v0, 0x8

    return v0

    .line 11
    :cond_e
    iget v1, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/a;->j:I

    .line 12
    iput v4, p0, Lcom/google/gson/stream/a;->k:I

    :cond_f
    return v0
.end method

.method private Z(C)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 3
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 4
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    .line 5
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    .line 6
    iput v4, p0, Lcom/google/gson/stream/a;->h:I

    .line 7
    invoke-direct {p0}, Lcom/google/gson/stream/a;->W()C

    .line 8
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 9
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 10
    iget v1, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/a;->j:I

    .line 11
    iput v4, p0, Lcom/google/gson/stream/a;->k:I

    :cond_2
    move v1, v4

    goto :goto_1

    .line 12
    :cond_3
    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 13
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    .line 14
    invoke-direct {p0, p1}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private a0(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v3

    .line 3
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/gson/stream/a;->g:[C

    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    .line 4
    iget v1, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/a;->j:I

    add-int/lit8 v2, v2, 0x1

    .line 5
    iput v2, p0, Lcom/google/gson/stream/a;->k:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/google/gson/stream/a;->g:[C

    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    .line 7
    :goto_3
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v5
.end method

.method private d0()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    iget v1, p0, Lcom/google/gson/stream/a;->i:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lcom/google/gson/stream/a;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/a;->j:I

    .line 4
    iput v3, p0, Lcom/google/gson/stream/a;->k:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private e0()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/a;->i:I

    if-ge v2, v3, :cond_3

    .line 2
    iget-object v2, p0, Lcom/google/gson/stream/a;->g:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 4
    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->D(Z)I

    .line 2
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    .line 3
    sget-object v0, Lcom/google/gson/stream/a;->d:[C

    array-length v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v1, Lcom/google/gson/stream/a;->d:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/google/gson/stream/a;->g:[C

    iget v3, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v1, v1, v0

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    return-void
.end method

.method private i0(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private u(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    .line 2
    iget v1, p0, Lcom/google/gson/stream/a;->k:I

    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/a;->k:I

    .line 3
    iget v1, p0, Lcom/google/gson/stream/a;->i:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Lcom/google/gson/stream/a;->i:I

    .line 5
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/a;->i:I

    .line 7
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/a;->h:I

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/a;->e:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 9
    iget v2, p0, Lcom/google/gson/stream/a;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/a;->i:I

    .line 10
    iget v1, p0, Lcom/google/gson/stream/a;->j:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/a;->k:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 11
    iget v5, p0, Lcom/google/gson/stream/a;->h:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/gson/stream/a;->h:I

    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, p0, Lcom/google/gson/stream/a;->k:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private y(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lcom/google/gson/stream/a;->l:I

    .line 4
    iget-object v0, p0, Lcom/google/gson/stream/a;->s:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5
    iput v2, p0, Lcom/google/gson/stream/a;->l:I

    .line 6
    iget-object v0, p0, Lcom/google/gson/stream/a;->s:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/gson/stream/a;->N()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->I(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->I(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/google/gson/stream/a;->l:I

    .line 7
    iget-object v1, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public E()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    .line 4
    iget-object v0, p0, Lcom/google/gson/stream/a;->s:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/gson/stream/a;->N()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->I(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->I(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/google/gson/stream/a;->o:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/gson/stream/a;->o:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 8
    iget-wide v0, p0, Lcom/google/gson/stream/a;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/a;->g:[C

    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    iget v3, p0, Lcom/google/gson/stream/a;->n:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    iget v2, p0, Lcom/google/gson/stream/a;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    :goto_0
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/google/gson/stream/a;->l:I

    .line 12
    iget-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    iget v2, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P()Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->m:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->j:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->h:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->i:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/gson/stream/JsonToken;->l:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/gson/stream/JsonToken;->k:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 10
    :pswitch_6
    sget-object v0, Lcom/google/gson/stream/JsonToken;->e:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 11
    :pswitch_7
    sget-object v0, Lcom/google/gson/stream/JsonToken;->d:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 12
    :pswitch_8
    sget-object v0, Lcom/google/gson/stream/JsonToken;->g:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 13
    :pswitch_9
    sget-object v0, Lcom/google/gson/stream/JsonToken;->f:Lcom/google/gson/stream/JsonToken;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/a;->f:Z

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->U(I)V

    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    iget v2, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    .line 2
    iget-object v1, p0, Lcom/google/gson/stream/a;->p:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/gson/stream/a;->q:I

    .line 4
    iget-object v0, p0, Lcom/google/gson/stream/a;->e:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->U(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3
    iget-object v3, p0, Lcom/google/gson/stream/a;->p:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    .line 6
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/a;->s:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h0()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :cond_0
    iget v2, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 3
    invoke-direct {p0, v4}, Lcom/google/gson/stream/a;->U(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    if-ne v2, v4, :cond_3

    .line 4
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->U(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 5
    iget v2, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/a;->q:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 6
    iget v2, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/a;->q:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v3, 0x9

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 7
    iget v2, p0, Lcom/google/gson/stream/a;->h:I

    iget v3, p0, Lcom/google/gson/stream/a;->n:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/a;->h:I

    goto :goto_5

    :cond_9
    :goto_2
    const/16 v2, 0x22

    .line 8
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->Z(C)V

    goto :goto_5

    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 9
    invoke-direct {p0, v2}, Lcom/google/gson/stream/a;->Z(C)V

    goto :goto_5

    .line 10
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/google/gson/stream/a;->e0()V

    .line 11
    :cond_c
    :goto_5
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/gson/stream/a;->s:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 13
    iget-object v0, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void
.end method

.method k()I
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/16 v3, 0x8

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    sub-int/2addr v1, v13

    .line 2
    aput v12, v0, v1

    goto/16 :goto_0

    :cond_0
    if-ne v2, v12, :cond_3

    .line 3
    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v6, :cond_1

    .line 4
    iput v11, p0, Lcom/google/gson/stream/a;->l:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    .line 5
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    goto :goto_0

    :cond_3
    const/4 v14, 0x5

    if-eq v2, v7, :cond_19

    if-ne v2, v14, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v2, v11, :cond_7

    sub-int/2addr v1, v13

    .line 7
    aput v14, v0, v1

    .line 8
    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    .line 9
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 10
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    iget v1, p0, Lcom/google/gson/stream/a;->i:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->u(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    .line 11
    iput v1, p0, Lcom/google/gson/stream/a;->h:I

    goto :goto_0

    :cond_6
    const-string v0, "Expected \':\'"

    .line 12
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    .line 13
    iget-boolean v0, p0, Lcom/google/gson/stream/a;->f:Z

    if-eqz v0, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/google/gson/stream/a;->g()V

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/google/gson/stream/a;->q:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_0

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    .line 17
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0

    .line 18
    :cond_a
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 19
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    goto :goto_0

    :cond_b
    if-eq v2, v3, :cond_18

    .line 20
    :cond_c
    :goto_0
    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v0

    if-eq v0, v5, :cond_17

    if-eq v0, v4, :cond_16

    if-eq v0, v10, :cond_13

    if-eq v0, v9, :cond_13

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_12

    if-eq v0, v6, :cond_11

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_10

    .line 21
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    .line 22
    invoke-direct {p0}, Lcom/google/gson/stream/a;->Q()I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 23
    :cond_d
    invoke-direct {p0}, Lcom/google/gson/stream/a;->R()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 24
    :cond_e
    iget-object v0, p0, Lcom/google/gson/stream/a;->g:[C

    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->y(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0

    :cond_f
    const-string v0, "Expected value"

    .line 27
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 28
    :cond_10
    iput v13, p0, Lcom/google/gson/stream/a;->l:I

    return v13

    :cond_11
    if-ne v2, v13, :cond_13

    .line 29
    iput v11, p0, Lcom/google/gson/stream/a;->l:I

    return v11

    .line 30
    :cond_12
    iput v7, p0, Lcom/google/gson/stream/a;->l:I

    return v7

    :cond_13
    if-eq v2, v13, :cond_15

    if-ne v2, v12, :cond_14

    goto :goto_1

    :cond_14
    const-string v0, "Unexpected value"

    .line 31
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 32
    :cond_15
    :goto_1
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 33
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    .line 34
    iput v8, p0, Lcom/google/gson/stream/a;->l:I

    return v8

    .line 35
    :cond_16
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 36
    iput v3, p0, Lcom/google/gson/stream/a;->l:I

    return v3

    :cond_17
    const/16 v0, 0x9

    .line 37
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0

    .line 38
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_2
    sub-int/2addr v1, v13

    .line 39
    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1c

    .line 40
    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v1

    if-eq v1, v10, :cond_1c

    if-eq v1, v9, :cond_1b

    if-ne v1, v0, :cond_1a

    .line 41
    iput v12, p0, Lcom/google/gson/stream/a;->l:I

    return v12

    :cond_1a
    const-string v0, "Unterminated object"

    .line 42
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 43
    :cond_1b
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 44
    :cond_1c
    invoke-direct {p0, v13}, Lcom/google/gson/stream/a;->D(Z)I

    move-result v1

    if-eq v1, v5, :cond_21

    if-eq v1, v4, :cond_20

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_1e

    .line 45
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    .line 46
    iget v0, p0, Lcom/google/gson/stream/a;->h:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/a;->h:I

    int-to-char v0, v1

    .line 47
    invoke-direct {p0, v0}, Lcom/google/gson/stream/a;->y(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xe

    .line 48
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0

    .line 49
    :cond_1d
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    if-eq v2, v14, :cond_1f

    .line 50
    iput v12, p0, Lcom/google/gson/stream/a;->l:I

    return v12

    .line 51
    :cond_1f
    invoke-direct {p0, v3}, Lcom/google/gson/stream/a;->i0(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 52
    :cond_20
    invoke-direct {p0}, Lcom/google/gson/stream/a;->f()V

    const/16 v0, 0xc

    .line 53
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0

    :cond_21
    const/16 v0, 0xd

    .line 54
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return v0
.end method

.method public p()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/a;->q:I

    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->l:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/a;->k()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/gson/stream/a;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/a;->q:I

    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/a;->r:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5
    iget-object v1, p0, Lcom/google/gson/stream/a;->s:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/gson/stream/a;->l:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->P()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/gson/stream/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method z()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/a;->j:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/gson/stream/a;->h:I

    iget v2, p0, Lcom/google/gson/stream/a;->k:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/a;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
