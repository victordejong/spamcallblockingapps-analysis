.class Lkotlin/reflect/jvm/internal/impl/protobuf/o;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;
    }
.end annotation


# instance fields
.field private a:I

.field protected final d:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a:I

    .line 63
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    return-void
.end method

.method private static a(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    .line 276
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .line 71
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a()I
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    array-length v0, v0

    return v0
.end method

.method protected final a(III)I
    .locals 7

    .line 169
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v0

    add-int/2addr v0, p2

    .line 170
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    add-int/2addr p3, v0

    if-eqz p1, :cond_f

    if-lt v0, p3, :cond_0

    return p1

    :cond_0
    int-to-byte v1, p1

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_3

    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 1163
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/16 v5, -0x10

    if-ge v1, v5, :cond_9

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-int/lit8 p1, v0, 0x1

    .line 1174
    aget-byte v0, p2, v0

    if-lt p1, p3, :cond_4

    .line 1176
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/w;->a(II)I

    move-result p1

    return p1

    :cond_4
    move v6, v0

    move v0, p1

    move p1, v6

    :cond_5
    if-gt p1, v4, :cond_8

    const/16 v5, -0x60

    if-ne v1, v2, :cond_6

    if-lt p1, v5, :cond_8

    :cond_6
    const/16 v2, -0x13

    if-ne v1, v2, :cond_7

    if-ge p1, v5, :cond_8

    :cond_7
    add-int/lit8 p1, v0, 0x1

    .line 1179
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    :cond_8
    return v3

    :cond_9
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    const/4 v5, 0x0

    if-nez v2, :cond_b

    add-int/lit8 p1, v0, 0x1

    .line 1195
    aget-byte v2, p2, v0

    if-lt p1, p3, :cond_a

    .line 1197
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/w;->a(II)I

    move-result p1

    return p1

    :cond_a
    move v0, p1

    goto :goto_1

    :cond_b
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v5, p1

    :goto_1
    if-nez v5, :cond_d

    add-int/lit8 p1, v0, 0x1

    .line 1203
    aget-byte v5, p2, v0

    if-lt p1, p3, :cond_c

    .line 1205
    invoke-static {v1, v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/w;->a(III)I

    move-result p1

    return p1

    :cond_c
    move v0, p1

    :cond_d
    if-gt v2, v4, :cond_e

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_e

    if-gt v5, v4, :cond_e

    add-int/lit8 p1, v0, 0x1

    .line 1213
    aget-byte v0, p2, v0

    if-le v0, v4, :cond_1

    :cond_e
    return v3

    .line 1228
    :cond_f
    :goto_2
    invoke-static {p2, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/w;->b([BII)I

    move-result p1

    return p1
.end method

.method protected a([BIII)V
    .locals 1

    .line 117
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;II)Z
    .locals 4

    .line 213
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v0

    if-gt p3, v0, :cond_3

    add-int v0, p2, p3

    .line 217
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    .line 224
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    .line 225
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v2

    add-int/2addr v2, p3

    .line 226
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v2, :cond_1

    .line 229
    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(III)I
    .locals 2

    .line 271
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method final b(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;
    .locals 2

    .line 307
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;Lkotlin/reflect/jvm/internal/impl/protobuf/o$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 181
    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 185
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 188
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 192
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    if-eqz v0, :cond_4

    .line 193
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;II)Z

    move-result p1

    return p1

    .line 194
    :cond_4
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 3

    .line 163
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b()I

    move-result v0

    .line 164
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/w;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    .line 299
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 251
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a:I

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v0

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 259
    :cond_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a:I

    :cond_1
    return v0
.end method

.method protected final i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final k()I
    .locals 1

    .line 266
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a:I

    return v0
.end method
