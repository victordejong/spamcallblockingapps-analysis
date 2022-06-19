.class final Lcom/google/android/exoplayer2/text/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/i/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;)V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;
    .locals 5

    .line 13144
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 14127
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 14169
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v4, v0, 0x1

    .line 157
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

    .line 15144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v0, v1

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 21144
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 282
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v4, "}"

    .line 287
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 22144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 23127
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 23169
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 323
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

    .line 327
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24144
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v1, v0

    .line 332
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 333
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/u;)V
    .locals 8

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 225
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    if-lez v2, :cond_6

    if-eqz v1, :cond_6

    .line 16144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 17169
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 16270
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

    .line 15252
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    .line 18144
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 19127
    iget v2, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 19169
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 17301
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

    .line 17303
    aget-byte v1, v4, v1

    int-to-char v1, v1

    if-ne v1, v7, :cond_2

    .line 17305
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

    .line 20144
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v2, v1

    .line 17311
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

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
.method public final a(Lcom/google/android/exoplayer2/util/u;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1144
    iget v0, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 1265
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v3, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3144
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 81
    invoke-virtual {v2, v3, p1}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    .line 4121
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;)V

    .line 4122
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3

    const-string v4, "{"

    const/4 v5, 0x5

    const-string v6, ""

    const/4 v7, 0x0

    if-ge v3, v5, :cond_2

    :goto_1
    move-object v3, v7

    goto :goto_3

    .line 4125
    :cond_2
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "::cue"

    .line 4126
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 5144
    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 4130
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 4134
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4135
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    move-object v3, v6

    goto :goto_3

    :cond_5
    const-string v3, "("

    .line 4139
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4140
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/i/a;->b(Lcom/google/android/exoplayer2/util/u;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v7

    .line 4142
    :goto_2
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    .line 4143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v3, :cond_1d

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object p1

    .line 90
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/text/i/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/i/d;-><init>()V

    .line 5341
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_c

    const/16 v2, 0x5b

    .line 5344
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 5346
    sget-object v8, Lcom/google/android/exoplayer2/text/i/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 5347
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5348
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6131
    iput-object v8, v0, Lcom/google/android/exoplayer2/text/i/d;->d:Ljava/lang/String;

    .line 5350
    :cond_9
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_a
    const-string v2, "\\."

    .line 5352
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5353
    aget-object v3, v2, v1

    const/16 v8, 0x23

    .line 5354
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v5, :cond_b

    .line 5356
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 7123
    iput-object v5, v0, Lcom/google/android/exoplayer2/text/i/d;->b:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    .line 5357
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8119
    iput-object v3, v0, Lcom/google/android/exoplayer2/text/i/d;->a:Ljava/lang/String;

    goto :goto_4

    .line 8123
    :cond_b
    iput-object v3, v0, Lcom/google/android/exoplayer2/text/i/d;->b:Ljava/lang/String;

    .line 5361
    :goto_4
    array-length v3, v2

    if-le v3, v4, :cond_c

    .line 5362
    array-length v3, v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 8127
    new-instance v3, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/google/android/exoplayer2/text/i/d;->c:Ljava/util/Set;

    :cond_c
    const/4 v2, 0x0

    :goto_5
    const-string v3, "}"

    if-nez v2, :cond_1c

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 8144
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 96
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 97
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
    if-nez v5, :cond_1b

    .line 99
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 100
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/a;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object v8, p0, Lcom/google/android/exoplayer2/text/i/a;->c:Ljava/lang/StringBuilder;

    .line 8166
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;)V

    .line 8167
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 8168
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 8171
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 8174
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/a;->c(Lcom/google/android/exoplayer2/util/u;)V

    .line 8175
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/text/i/a;->b(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 8176
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_a

    .line 9144
    :cond_f
    iget v11, v2, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 8180
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/text/i/a;->a(Lcom/google/android/exoplayer2/util/u;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v12, ";"

    .line 8181
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 8183
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 8186
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    :cond_10
    const-string v2, "color"

    .line 8192
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 8193
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/e;->b(Ljava/lang/String;)I

    move-result v2

    .line 9231
    iput v2, v0, Lcom/google/android/exoplayer2/text/i/d;->f:I

    .line 9232
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/text/i/d;->g:Z

    goto/16 :goto_a

    :cond_11
    const-string v2, "background-color"

    .line 8194
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8195
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/e;->b(Ljava/lang/String;)I

    move-result v2

    .line 9248
    iput v2, v0, Lcom/google/android/exoplayer2/text/i/d;->h:I

    .line 9249
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/text/i/d;->i:Z

    goto/16 :goto_a

    :cond_12
    const-string v2, "ruby-position"

    .line 8196
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "over"

    .line 8197
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9276
    iput v4, v0, Lcom/google/android/exoplayer2/text/i/d;->p:I

    goto/16 :goto_a

    :cond_13
    const-string v2, "under"

    .line 8199
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x2

    .line 10276
    iput v2, v0, Lcom/google/android/exoplayer2/text/i/d;->p:I

    goto :goto_a

    :cond_14
    const-string v2, "text-combine-upright"

    .line 8202
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "all"

    .line 8203
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "digits"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v2, 0x1

    .line 10286
    :goto_9
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/text/i/d;->q:Z

    goto :goto_a

    :cond_17
    const-string v2, "text-decoration"

    .line 8204
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "underline"

    .line 8205
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 11200
    iput v4, v0, Lcom/google/android/exoplayer2/text/i/d;->k:I

    goto :goto_a

    :cond_18
    const-string v2, "font-family"

    .line 8208
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 11219
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/text/i/d;->e:Ljava/lang/String;

    goto :goto_a

    :cond_19
    const-string v2, "font-weight"

    .line 8210
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "bold"

    .line 8211
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 12204
    iput v4, v0, Lcom/google/android/exoplayer2/text/i/d;->l:I

    goto :goto_a

    :cond_1a
    const-string v2, "font-style"

    .line 8214
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "italic"

    .line 8215
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 12209
    iput v4, v0, Lcom/google/android/exoplayer2/text/i/d;->m:I

    :cond_1b
    :goto_a
    move v2, v5

    goto/16 :goto_5

    .line 104
    :cond_1c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1d
    return-object p1
.end method
