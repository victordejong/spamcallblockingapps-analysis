.class public final Lcom/google/android/exoplayer2/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/a$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 90
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->a:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 111
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0

    :cond_4
    const/16 p0, 0xb

    return p0

    :cond_5
    const/16 p0, 0xa

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/t;)I
    .locals 2

    const/4 v0, 0x5

    .line 329
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 331
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/t;Z)Lcom/google/android/exoplayer2/audio/a$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 196
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/t;)I

    move-result v0

    .line 197
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/t;)I

    move-result v1

    const/4 v2, 0x4

    .line 198
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4a.40."

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/t;)I

    move-result v1

    .line 208
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/t;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    :cond_1
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x11

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported audio object type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/t;II)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p0

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_3

    goto :goto_0

    .line 243
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    if-eq p0, p1, :cond_5

    .line 255
    new-instance p1, Lcom/google/android/exoplayer2/audio/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, v1, p0, v4, v0}, Lcom/google/android/exoplayer2/audio/a$a;-><init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/a$1;)V

    return-object p1

    .line 253
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a([B)Lcom/google/android/exoplayer2/audio/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/a;->a(Lcom/google/android/exoplayer2/util/t;Z)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/t;II)V
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    .line 361
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/t;->e()Z

    move-result v0

    if-eqz p2, :cond_8

    const/4 p2, 0x6

    const/16 v1, 0x14

    const/4 v2, 0x3

    if-eq p1, p2, :cond_2

    if-ne p1, v1, :cond_3

    .line 372
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_3
    if-eqz v0, :cond_7

    const/16 p2, 0x16

    if-ne p1, p2, :cond_4

    const/16 p2, 0x10

    .line 376
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_4
    const/16 p2, 0x11

    if-eq p1, p2, :cond_5

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    if-eq p1, v1, :cond_5

    const/16 p2, 0x17

    if-ne p1, p2, :cond_6

    .line 384
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_6
    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    :cond_7
    return-void

    .line 369
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static a(III)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/t;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 346
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    .line 348
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xd

    if-ge v0, p0, :cond_1

    .line 350
    sget-object p0, Lcom/google/android/exoplayer2/audio/a;->a:[I

    aget p0, p0, v0

    :goto_0
    return p0

    .line 352
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p0
.end method
