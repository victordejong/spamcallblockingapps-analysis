.class final Landroidx/media2/exoplayer/external/extractor/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/b/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/media2/exoplayer/external/extractor/b/g;

.field private d:Landroidx/media2/exoplayer/external/extractor/b/b;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 67
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    .line 69
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/b/g;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 199
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private static b(Landroidx/media2/exoplayer/external/extractor/h;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 240
    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 241
    invoke-interface {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    .line 244
    aget-byte p0, v0, p0

    if-nez p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 247
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/b/g;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/b/b;)V
    .locals 0

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/b/a$a;

    .line 1254
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/extractor/b/a$a;->b:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 90
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/b/a$a;

    .line 2254
    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/b/a$a;->a:I

    .line 90
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/b/b;->c(I)V

    return v1

    .line 94
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-virtual {v0, p1, v1, v3, v2}, Landroidx/media2/exoplayer/external/extractor/b/g;->a(Landroidx/media2/exoplayer/external/extractor/h;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 3170
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 3172
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    invoke-interface {p1, v0, v3, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 3173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/b/g;->a(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-gt v0, v2, :cond_1

    .line 3175
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->a:[B

    invoke-static {v4, v0, v3}, Landroidx/media2/exoplayer/external/extractor/b/g;->a([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 3176
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    invoke-interface {v4, v5}, Landroidx/media2/exoplayer/external/extractor/b/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3177
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    int-to-long v4, v5

    goto :goto_2

    .line 3181
    :cond_1
    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    return v3

    :cond_3
    long-to-int v0, v4

    .line 103
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    .line 104
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    .line 107
    :cond_4
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_5

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Landroidx/media2/exoplayer/external/extractor/b/g;->a(Landroidx/media2/exoplayer/external/extractor/h;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    .line 109
    iput v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    .line 112
    :cond_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    invoke-interface {v0, v5}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(I)I

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

    .line 129
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_7

    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    goto :goto_3

    .line 131
    :cond_6
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    long-to-int v5, v7

    .line 3215
    invoke-direct {p0, p1, v5}, Landroidx/media2/exoplayer/external/extractor/b/a;->a(Landroidx/media2/exoplayer/external/extractor/h;I)J

    move-result-wide v6

    if-ne v5, v2, :cond_8

    long-to-int p1, v6

    .line 3218
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_4

    .line 3220
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 133
    :goto_4
    invoke-interface {v0, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(ID)V

    .line 134
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    return v1

    .line 152
    :cond_9
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    long-to-int v5, v4

    invoke-interface {v0, v2, v5, p1}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(IILandroidx/media2/exoplayer/external/extractor/h;)V

    .line 145
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    return v1

    .line 137
    :cond_b
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_c

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    long-to-int v5, v4

    invoke-static {p1, v5}, Landroidx/media2/exoplayer/external/extractor/b/a;->b(Landroidx/media2/exoplayer/external/extractor/h;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(ILjava/lang/String;)V

    .line 141
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    return v1

    .line 138
    :cond_c
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_d
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    cmp-long v0, v7, v5

    if-gtz v0, :cond_e

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    long-to-int v4, v7

    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/b/a;->a(Landroidx/media2/exoplayer/external/extractor/h;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(IJ)V

    .line 126
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    return v1

    .line 123
    :cond_e
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_f
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v6

    .line 116
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    add-long/2addr v4, v6

    .line 117
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->b:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/b/a$a;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v2, v4, v5, v8}, Landroidx/media2/exoplayer/external/extractor/b/a$a;-><init>(IJLandroidx/media2/exoplayer/external/extractor/b/a$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 118
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->d:Landroidx/media2/exoplayer/external/extractor/b/b;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->f:I

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    invoke-interface/range {v4 .. v9}, Landroidx/media2/exoplayer/external/extractor/b/b;->a(IJJ)V

    .line 119
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    return v1

    .line 148
    :cond_10
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->g:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 149
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/b/a;->e:I

    goto/16 :goto_0
.end method
