.class public Low;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Low$g;,
        Low$h;,
        Low$f;,
        Low$e;,
        Low$d;,
        Low$c;,
        Low$b;,
        Low$i;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:I

.field public c:Low$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "\u266b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Low;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Low$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Low;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Low;->b:I

    new-instance v0, Low$a;

    invoke-direct {v0, p0}, Low$a;-><init>(Low;)V

    iput-object v0, p0, Low;->c:Low$i;

    if-eqz p1, :cond_0

    iput-object p1, p0, Low;->c:Low$i;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Low;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Low;->c:Low$i;

    new-instance v1, Low$c;

    const/4 v2, 0x1

    iget-object v3, p0, Low;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Low$c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Low$i;->c(Low$c;)V

    iget-object v0, p0, Low;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method public final b(Low$c;)V
    .locals 1

    invoke-virtual {p0}, Low;->a()V

    iget-object v0, p0, Low;->c:Low$i;

    invoke-interface {v0, p1}, Low$i;->c(Low$c;)V

    return-void
.end method

.method public c([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Low;->m([BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Low;->a()V

    return-void
.end method

.method public final d([BI)I
    .locals 3

    iget v0, p0, Low;->b:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Low;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    aget-byte p1, p1, v1

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "EUC-KR"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Low;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Cea708CCParser"

    const-string v1, "P16 Code - Could not find supported encoding"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_2
    const/16 p1, 0x10

    if-lt v0, p1, :cond_3

    const/16 p1, 0x17

    if-gt v0, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x3

    const/4 v1, 0x2

    if-eq v0, p1, :cond_5

    const/16 p1, 0x8

    if-eq v0, p1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance p1, Low$c;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Low;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    new-instance p1, Low$c;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p1, Low$c;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-instance p1, Low$c;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Low$c;-><init>(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Low;->b(Low$c;)V

    :goto_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e([BI)I
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Low;->b:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xf

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    :pswitch_1
    add-int/lit16 v14, v1, -0x98

    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    aget-byte v1, p1, p2

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    aget-byte v1, p1, p2

    and-int/lit8 v18, v1, 0x7

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    const/16 v19, 0x1

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    :goto_3
    aget-byte v1, p1, v1

    and-int/lit8 v20, v1, 0x7f

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v22, v5, 0x4

    aget-byte v3, p1, v3

    and-int/lit8 v23, v3, 0xf

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    and-int/lit8 v24, v3, 0x3f

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x38

    shr-int/lit8 v26, v4, 0x3

    aget-byte v3, p1, v3

    and-int/lit8 v25, v3, 0x7

    add-int/lit8 v3, p2, 0x6

    new-instance v4, Low$c;

    new-instance v5, Low$g;

    move-object v13, v5

    move/from16 v21, v1

    invoke-direct/range {v13 .. v26}, Low$g;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v4, v2, v5}, Low$c;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v6, p1, p2

    and-int/2addr v6, v11

    new-instance v14, Low$b;

    invoke-direct {v14, v1, v2, v3, v6}, Low$b;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x2

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v5, v6, 0x5

    or-int v16, v2, v5

    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v5, p1, v1

    and-int/2addr v5, v9

    shr-int/lit8 v5, v5, 0x2

    aget-byte v1, p1, v1

    and-int/2addr v1, v11

    new-instance v15, Low$b;

    invoke-direct {v15, v8, v2, v5, v1}, Low$b;-><init>(IIII)V

    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v18, v1, 0x4

    aget-byte v1, p1, v3

    and-int/2addr v1, v9

    shr-int/lit8 v19, v1, 0x2

    aget-byte v1, p1, v3

    and-int/lit8 v20, v1, 0x3

    add-int/lit8 v1, p2, 0x3

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v22, v2, 0x4

    aget-byte v2, p1, v1

    and-int/2addr v2, v9

    shr-int/lit8 v21, v2, 0x2

    aget-byte v1, p1, v1

    and-int/lit8 v23, v1, 0x3

    add-int/lit8 v1, p2, 0x4

    new-instance v2, Low$c;

    new-instance v3, Low$h;

    move-object v13, v3

    invoke-direct/range {v13 .. v23}, Low$h;-><init>(Low$b;Low$b;IZIIIIII)V

    invoke-direct {v2, v4, v3}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_6

    :pswitch_3
    aget-byte v1, p1, p2

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    new-instance v4, Low$c;

    const/16 v5, 0xe

    new-instance v6, Low$f;

    invoke-direct {v6, v1, v2}, Low$f;-><init>(II)V

    invoke-direct {v4, v5, v6}, Low$c;-><init>(ILjava/lang/Object;)V

    :goto_5
    invoke-virtual {v0, v4}, Low;->b(Low$c;)V

    move v2, v3

    goto/16 :goto_c

    :pswitch_4
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v4, p1, p2

    and-int/2addr v4, v11

    new-instance v5, Low$b;

    invoke-direct {v5, v1, v2, v3, v4}, Low$b;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v7

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v10

    aget-byte v4, p1, v1

    and-int/2addr v4, v9

    shr-int/lit8 v4, v4, 0x2

    aget-byte v6, p1, v1

    and-int/2addr v6, v11

    new-instance v7, Low$b;

    invoke-direct {v7, v2, v3, v4, v6}, Low$b;-><init>(IIII)V

    add-int/2addr v1, v12

    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    aget-byte v3, p1, v1

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    aget-byte v4, p1, v1

    and-int/2addr v4, v11

    new-instance v6, Low$b;

    invoke-direct {v6, v8, v2, v3, v4}, Low$b;-><init>(IIII)V

    add-int/2addr v1, v12

    new-instance v2, Low$c;

    const/16 v3, 0xd

    new-instance v4, Low$e;

    invoke-direct {v4, v5, v7, v6}, Low$e;-><init>(Low$b;Low$b;Low$b;)V

    invoke-direct {v2, v3, v4}, Low$c;-><init>(ILjava/lang/Object;)V

    :goto_6
    invoke-virtual {v0, v2}, Low;->b(Low$c;)V

    move v2, v1

    goto/16 :goto_c

    :pswitch_5
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v16, v1, 0x4

    aget-byte v1, p1, p2

    and-int/lit8 v14, v1, 0x3

    aget-byte v1, p1, p2

    and-int/2addr v1, v9

    shr-int/lit8 v15, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    const/16 v20, 0x1

    goto :goto_7

    :cond_5
    const/16 v20, 0x0

    :goto_7
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    const/16 v19, 0x1

    goto :goto_8

    :cond_6
    const/16 v19, 0x0

    :goto_8
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x38

    shr-int/lit8 v18, v2, 0x3

    aget-byte v1, p1, v1

    and-int/lit8 v17, v1, 0x7

    add-int/lit8 v1, p2, 0x2

    new-instance v2, Low$c;

    new-instance v3, Low$d;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Low$d;-><init>(IIIIIZZ)V

    invoke-direct {v2, v9, v3}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_6

    :pswitch_6
    new-instance v1, Low$c;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_9

    :pswitch_7
    new-instance v1, Low$c;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Low$c;-><init>(ILjava/lang/Object;)V

    :goto_9
    invoke-virtual {v0, v1}, Low;->b(Low$c;)V

    goto/16 :goto_b

    :pswitch_8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Low$c;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_9
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v4, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Low;->b(Low$c;)V

    goto :goto_c

    :pswitch_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v7, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    :pswitch_d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v10, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    :goto_a
    invoke-virtual {v0, v3}, Low;->b(Low$c;)V

    goto :goto_c

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    new-instance v2, Low$c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v11, v1}, Low$c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Low;->b(Low$c;)V

    :goto_b
    move/from16 v2, p2

    :goto_c
    return v2

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final f([BI)I
    .locals 1

    iget p1, p0, Low;->b:I

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    add-int/lit8 p2, p2, 0x3

    :cond_3
    :goto_0
    return p2
.end method

.method public final g([BI)I
    .locals 1

    iget p1, p0, Low;->b:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x88

    if-lt p1, v0, :cond_1

    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    add-int/lit8 p2, p2, 0x5

    :cond_1
    :goto_0
    return p2
.end method

.method public final h([BI)I
    .locals 3

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Low;->b:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Low;->f([BI)I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Low;->g([BI)I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Low;->k([BI)I

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Low;->l([BI)I

    :cond_3
    :goto_0
    return p2
.end method

.method public final i([BI)I
    .locals 1

    iget p1, p0, Low;->b:I

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Low;->a:Ljava/lang/StringBuilder;

    sget-object v0, Low;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Low;->a:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return p2
.end method

.method public final j([BI)I
    .locals 1

    iget-object p1, p0, Low;->a:Ljava/lang/StringBuilder;

    iget v0, p0, Low;->b:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p2
.end method

.method public final k([BI)I
    .locals 0

    return p2
.end method

.method public final l([BI)I
    .locals 0

    return p2
.end method

.method public final m([BI)I
    .locals 3

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Low;->b:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Low;->h([BI)I

    move-result p2

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Low;->d([BI)I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Low;->e([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, p1, p2}, Low;->i([BI)I

    goto :goto_0

    :cond_3
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    invoke-virtual {p0, p1, p2}, Low;->j([BI)I

    :cond_4
    :goto_0
    return p2
.end method
