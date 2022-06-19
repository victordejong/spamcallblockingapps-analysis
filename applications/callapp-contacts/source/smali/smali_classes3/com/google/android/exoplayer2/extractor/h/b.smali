.class public final Lcom/google/android/exoplayer2/extractor/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field a:J

.field private final b:Lcom/google/android/exoplayer2/util/t;

.field private final c:Lcom/google/android/exoplayer2/util/u;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/exoplayer2/extractor/x;

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->b:Lcom/google/android/exoplayer2/util/t;

    .line 90
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;[B)Z
    .locals 3

    .line 166
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    const/16 v2, 0x80

    rsub-int v1, v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 168
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 5

    .line 180
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 181
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->i:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->i:Z

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 187
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->i:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 190
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->i:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->a(Lcom/google/android/exoplayer2/util/t;)Lcom/google/android/exoplayer2/audio/b$a;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$a;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$a;->c:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/b$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 204
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->e:Ljava/lang/String;

    .line 3244
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 207
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$a;->a:Ljava/lang/String;

    .line 3370
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 208
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$a;->d:I

    .line 3517
    iput v2, v1, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 209
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$a;->c:I

    .line 3528
    iput v2, v1, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->d:Ljava/lang/String;

    .line 4278
    iput-object v2, v1, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 212
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 215
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$a;->e:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->l:I

    const-wide/32 v1, 0xf4240

    .line 218
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b$a;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->k:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/h/b;->j:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    .line 99
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->a:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 1

    .line 104
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 105
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 10

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_4

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->l:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 138
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    .line 139
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/h/b;->l:I

    if-ne v2, v7, :cond_0

    .line 140
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/b;->a:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 141
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->a:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/b;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->a:J

    .line 142
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/h/b;->a(Lcom/google/android/exoplayer2/util/u;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/b;->c()V

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->f:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    const/16 v3, 0x80

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 132
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/b;->b(Lcom/google/android/exoplayer2/util/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/b;->g:I

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v4, 0xb

    .line 122
    aput-byte v4, v0, v1

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v1, 0x77

    .line 123
    aput-byte v1, v0, v3

    .line 124
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/b;->h:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
