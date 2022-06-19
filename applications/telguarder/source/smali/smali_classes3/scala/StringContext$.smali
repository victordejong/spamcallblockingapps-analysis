.class public final Lscala/StringContext$;
.super Ljava/lang/Object;
.source "StringContext.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/StringContext$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/StringContext$;

    invoke-direct {v0}, Lscala/StringContext$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/StringContext$;->MODULE$:Lscala/StringContext$;

    return-void
.end method

.method private final loop$1(IILjava/lang/String;ZILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6

    :goto_0
    if-ltz p2, :cond_d

    if-le p2, p1, :cond_0

    .line 209
    invoke-virtual {p6, p3, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 p1, p2, 0x1

    if-ge p1, p5, :cond_c

    .line 211
    sget-object v0, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    .line 212
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x27

    const/16 v2, 0x22

    const/16 v3, 0x5c

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_9

    const/16 v1, 0x62

    if-eq v0, v1, :cond_8

    const/16 v1, 0x66

    if-eq v0, v1, :cond_7

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x72

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-gt v1, v0, :cond_3

    const/16 v2, 0x37

    if-gt v0, v2, :cond_3

    if-nez p4, :cond_2

    .line 222
    sget-object p2, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    .line 223
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p2, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result p2

    add-int/lit8 v0, p2, -0x30

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p5, :cond_1

    .line 226
    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    if-gt v1, v4, :cond_1

    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    if-gt v4, v2, :cond_1

    mul-int/lit8 v0, v0, 0x8

    .line 227
    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p5, :cond_1

    const/16 v4, 0x33

    if-gt p2, v4, :cond_1

    .line 229
    sget-object p2, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p2, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result p2

    if-gt v1, p2, :cond_1

    sget-object p2, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p2, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result p2

    if-gt p2, v2, :cond_1

    mul-int/lit8 v0, v0, 0x8

    .line 230
    sget-object p2, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p2, p3, p1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result p2

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    int-to-char v1, v0

    goto :goto_2

    .line 222
    :cond_2
    new-instance p1, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {p1, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 236
    :cond_3
    new-instance p1, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {p1, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    const/16 v1, 0x9

    goto :goto_2

    :cond_5
    const/16 v1, 0xd

    goto :goto_2

    :cond_6
    const/16 v1, 0xa

    goto :goto_2

    :cond_7
    const/16 v1, 0xc

    goto :goto_2

    :cond_8
    const/16 v1, 0x8

    goto :goto_2

    :cond_9
    const/16 v1, 0x5c

    goto :goto_2

    :cond_a
    const/16 v1, 0x22

    :cond_b
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 239
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p3, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    goto/16 :goto_0

    .line 211
    :cond_c
    new-instance p1, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {p1, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_d
    if-ge p1, p5, :cond_e

    .line 242
    invoke-virtual {p6, p3, p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 243
    :goto_3
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 171
    sget-object v0, Lscala/StringContext$;->MODULE$:Lscala/StringContext$;

    return-object v0
.end method

.method private final replace$1(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 7

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 246
    invoke-direct/range {v0 .. v6}, Lscala/StringContext$;->loop$1(IILjava/lang/String;ZILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private treatEscapes0(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 250
    invoke-direct {p0, v1, p1, p2, v0}, Lscala/StringContext$;->replace$1(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/StringContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/StringContext;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscala/StringContext;

    invoke-direct {v0, p1}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    return-object v0
.end method

.method public processEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, p1, v0}, Lscala/StringContext$;->treatEscapes0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public treatEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Lscala/StringContext$;->treatEscapes0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unapplySeq(Lscala/StringContext;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/StringContext;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/StringContext;->parts()Lscala/collection/Seq;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
