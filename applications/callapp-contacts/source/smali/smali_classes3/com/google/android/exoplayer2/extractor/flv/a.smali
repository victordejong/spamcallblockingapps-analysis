.class final Lcom/google/android/exoplayer2/extractor/flv/a;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/x;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/x;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/a;->a:[I

    aget p1, v0, p1

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v2, "audio/mpeg"

    .line 1370
    iput-object v2, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1517
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 1528
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 71
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 84
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio format not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 75
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 2370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 2517
    iput v1, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    const/16 p1, 0x1f40

    .line 2528
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 80
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 82
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    .line 86
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->b:Z

    goto :goto_3

    .line 89
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :goto_3
    return v1
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1, v7}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 99
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    return v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 103
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    new-array p3, p2, [B

    .line 106
    invoke-virtual {p1, p3, v2, p2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 107
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/a;->a([B)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object p1

    .line 108
    new-instance p2, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v0, "audio/mp4a-latm"

    .line 3370
    iput-object v0, p2, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/a$a;->c:Ljava/lang/String;

    .line 4333
    iput-object v0, p2, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 111
    iget v0, p1, Lcom/google/android/exoplayer2/audio/a$a;->b:I

    .line 4517
    iput v0, p2, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 112
    iget p1, p1, Lcom/google/android/exoplayer2/audio/a$a;->a:I

    .line 4528
    iput p1, p2, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 114
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5392
    iput-object p1, p2, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 115
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 117
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    return v2

    .line 119
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 120
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v9

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1, v9}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 122
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    return v1
.end method
