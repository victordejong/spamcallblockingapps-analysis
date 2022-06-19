.class final Lcom/google/android/exoplayer2/extractor/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/d/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/d/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/extractor/d/f;

.field private d:Lcom/google/android/exoplayer2/extractor/d/b;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 64
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:Ljava/util/ArrayDeque;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/d/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:Lcom/google/android/exoplayer2/extractor/d/f;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/i;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 193
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static b(Lcom/google/android/exoplayer2/extractor/i;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 230
    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 231
    invoke-interface {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    .line 234
    aget-byte p0, v0, p0

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 237
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d/f;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/d/b;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d/a$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    .line 1244
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/d/a$a;->b:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d/a$a;

    .line 2244
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:I

    .line 87
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/d/b;->c(I)V

    return v1

    .line 91
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/d/f;->a(Lcom/google/android/exoplayer2/extractor/i;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 3166
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 3168
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    invoke-interface {p1, v0, v3, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 3169
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/f;->a(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-gt v0, v2, :cond_1

    .line 3171
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->a:[B

    invoke-static {v4, v0, v3}, Lcom/google/android/exoplayer2/extractor/d/f;->a([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 3172
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/extractor/d/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3173
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    int-to-long v4, v5

    goto :goto_2

    .line 3177
    :cond_1
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    return v3

    :cond_3
    long-to-int v0, v4

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    .line 101
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 104
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_5

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->c:Lcom/google/android/exoplayer2/extractor/d/f;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Lcom/google/android/exoplayer2/extractor/d/f;->a(Lcom/google/android/exoplayer2/extractor/i;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    .line 106
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/extractor/d/b;->a(I)I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v1, :cond_f

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v4, 0x5

    if-ne v0, v4, :cond_9

    .line 126
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7

    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    goto :goto_3

    .line 128
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid float size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    long-to-int v5, v7

    .line 3207
    invoke-direct {p0, p1, v5}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/i;I)J

    move-result-wide v6

    if-ne v5, v2, :cond_8

    long-to-int p1, v6

    .line 3210
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_4

    .line 3212
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 130
    :goto_4
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/d/b;->a(ID)V

    .line 131
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    return v1

    .line 149
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid element type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    long-to-int v5, v4

    invoke-interface {v0, v2, v5, p1}, Lcom/google/android/exoplayer2/extractor/d/b;->a(IILcom/google/android/exoplayer2/extractor/i;)V

    .line 142
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    return v1

    .line 134
    :cond_b
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    long-to-int v5, v4

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/extractor/d/a;->b(Lcom/google/android/exoplayer2/extractor/i;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/google/android/exoplayer2/extractor/d/b;->a(ILjava/lang/String;)V

    .line 138
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    return v1

    .line 135
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String element size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_d
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    cmp-long v0, v7, v5

    if-gtz v0, :cond_e

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    long-to-int v4, v7

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/i;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/d/b;->a(IJ)V

    .line 123
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    return v1

    .line 120
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v6

    .line 113
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    add-long/2addr v4, v6

    .line 114
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/a;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/a$a;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v2, v4, v5, v8}, Lcom/google/android/exoplayer2/extractor/d/a$a;-><init>(IJLcom/google/android/exoplayer2/extractor/d/a$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 115
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d/a;->d:Lcom/google/android/exoplayer2/extractor/d/b;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/d/a;->f:I

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/d/b;->a(IJJ)V

    .line 116
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    return v1

    .line 145
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/a;->g:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 146
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/a;->e:I

    goto/16 :goto_0
.end method
