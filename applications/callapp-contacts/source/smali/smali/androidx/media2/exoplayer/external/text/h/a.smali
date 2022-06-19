.class final Landroidx/media2/exoplayer/external/text/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/text/h/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 220
    invoke-static {p0}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;)V

    .line 221
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_0
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p0

    int-to-char p0, p0

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;
    .locals 5

    .line 10142
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 11125
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 152
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 11142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v0, v1

    .line 155
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 15142
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 269
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v4, "}"

    .line 274
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 17125
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 310
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 314
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17142
    :cond_5
    iget v0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v1, v0

    .line 319
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 8

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 212
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_6

    .line 12142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 12257
    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v2, v1

    int-to-char v1, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 11239
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    .line 13142
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 14125
    iget v2, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 12287
    iget-object v4, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 12288
    aget-byte v1, v4, v1

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_4

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_4

    :goto_3
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_3

    .line 12290
    aget-byte v1, v4, v1

    int-to-char v1, v1

    if-ne v1, v7, :cond_2

    .line 12292
    aget-byte v1, v4, v5

    int-to-char v1, v1

    if-ne v1, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v1, v5

    move v2, v1

    goto :goto_3

    :cond_2
    move v1, v5

    goto :goto_3

    .line 14142
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    sub-int/2addr v2, v1

    .line 12298
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/p;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/p;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/d;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1142
    iget v0, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 1252
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->r()Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2142
    iget p1, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 76
    invoke-virtual {v2, v3, p1}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 77
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    .line 3116
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;)V

    .line 3117
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    const-string v4, "{"

    const/4 v5, 0x5

    const-string v6, ""

    const/4 v7, 0x0

    if-ge v3, v5, :cond_2

    :goto_1
    move-object v3, v7

    goto :goto_3

    .line 3120
    :cond_2
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "::cue"

    .line 3121
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 3142
    :cond_3
    iget v3, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3125
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 3129
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3130
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    move-object v3, v6

    goto :goto_3

    :cond_5
    const-string v3, "("

    .line 3134
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3135
    invoke-static {v0}, Landroidx/media2/exoplayer/external/text/h/a;->b(Landroidx/media2/exoplayer/external/util/p;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v7

    .line 3137
    :goto_2
    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    .line 3138
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v3, :cond_18

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object p1

    .line 85
    :cond_8
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/d;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/h/d;-><init>()V

    .line 3328
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_c

    const/16 v2, 0x5b

    .line 3331
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 3333
    sget-object v8, Landroidx/media2/exoplayer/external/text/h/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 3334
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3335
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 4135
    iput-object v8, v0, Landroidx/media2/exoplayer/external/text/h/d;->d:Ljava/lang/String;

    .line 3337
    :cond_9
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_a
    const-string v2, "\\."

    .line 3339
    invoke-static {v3, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3340
    aget-object v3, v2, v1

    const/16 v8, 0x23

    .line 3341
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v5, :cond_b

    .line 3343
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5127
    iput-object v5, v0, Landroidx/media2/exoplayer/external/text/h/d;->b:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    .line 3344
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 6123
    iput-object v3, v0, Landroidx/media2/exoplayer/external/text/h/d;->a:Ljava/lang/String;

    goto :goto_4

    .line 6127
    :cond_b
    iput-object v3, v0, Landroidx/media2/exoplayer/external/text/h/d;->b:Ljava/lang/String;

    .line 3348
    :goto_4
    array-length v3, v2

    if-le v3, v4, :cond_c

    .line 3349
    array-length v3, v2

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 6131
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/text/h/d;->c:Ljava/util/List;

    :cond_c
    const/4 v2, 0x0

    :goto_5
    const-string v3, "}"

    if-nez v2, :cond_17

    .line 90
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 6142
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 91
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 92
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v5, 0x1

    :goto_7
    if-nez v5, :cond_16

    .line 94
    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v8, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 95
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/h/a;->c:Ljava/lang/StringBuilder;

    .line 6161
    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;)V

    .line 6162
    invoke-static {v2, v8}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 6163
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 6166
    invoke-static {v2, v8}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 6169
    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/h/a;->c(Landroidx/media2/exoplayer/external/util/p;)V

    .line 6170
    invoke-static {v2, v8}, Landroidx/media2/exoplayer/external/text/h/a;->b(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 6171
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_8

    .line 7142
    :cond_f
    iget v11, v2, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 6175
    invoke-static {v2, v8}, Landroidx/media2/exoplayer/external/text/h/a;->a(Landroidx/media2/exoplayer/external/util/p;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ";"

    .line 6176
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 6178
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 6181
    invoke-virtual {v2, v11}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    :cond_10
    const-string v2, "color"

    .line 6187
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6188
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/d;->b(Ljava/lang/String;)I

    move-result v2

    .line 7234
    iput v2, v0, Landroidx/media2/exoplayer/external/text/h/d;->f:I

    .line 7235
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/text/h/d;->g:Z

    goto :goto_8

    :cond_11
    const-string v2, "background-color"

    .line 6189
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6190
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/d;->b(Ljava/lang/String;)I

    move-result v2

    .line 7251
    iput v2, v0, Landroidx/media2/exoplayer/external/text/h/d;->h:I

    .line 7252
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/text/h/d;->i:Z

    goto :goto_8

    :cond_12
    const-string v2, "text-decoration"

    .line 6191
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "underline"

    .line 6192
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8204
    iput v4, v0, Landroidx/media2/exoplayer/external/text/h/d;->k:I

    goto :goto_8

    :cond_13
    const-string v2, "font-family"

    .line 6195
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8222
    invoke-static {v10}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/text/h/d;->e:Ljava/lang/String;

    goto :goto_8

    :cond_14
    const-string v2, "font-weight"

    .line 6197
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "bold"

    .line 6198
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 9208
    iput v4, v0, Landroidx/media2/exoplayer/external/text/h/d;->l:I

    goto :goto_8

    :cond_15
    const-string v2, "font-style"

    .line 6201
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "italic"

    .line 6202
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 9213
    iput v4, v0, Landroidx/media2/exoplayer/external/text/h/d;->m:I

    :cond_16
    :goto_8
    move v2, v5

    goto/16 :goto_5

    .line 99
    :cond_17
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    return-object p1
.end method
