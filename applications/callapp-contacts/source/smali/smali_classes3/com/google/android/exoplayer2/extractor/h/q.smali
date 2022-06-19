.class public final Lcom/google/android/exoplayer2/extractor/h/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/audio/o$a;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/extractor/x;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    .line 71
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v2, -0x1

    .line 72
    aput-byte v2, v1, v0

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/audio/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    .line 80
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    .line 81
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->l:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 87
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->e:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 10

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_a

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 7224
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->k:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7225
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 7226
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    .line 7227
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/h/q;->k:I

    if-lt v1, v7, :cond_0

    .line 7232
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->l:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 7233
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->l:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->l:J

    .line 7234
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    .line 7235
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    goto :goto_0

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4172
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4173
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4173
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    invoke-virtual {p1, v4, v6, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 4174
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    if-lt v4, v5, :cond_0

    .line 4180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 4181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/audio/o$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4184
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    .line 4185
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    goto :goto_0

    .line 4189
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->k:I

    .line 4190
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->h:Z

    if-nez v0, :cond_4

    const-wide/32 v6, 0xf4240

    .line 4191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/o$a;->g:I

    int-to-long v8, v0

    mul-long v8, v8, v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    int-to-long v6, v0

    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/h/q;->j:J

    .line 4192
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->e:Ljava/lang/String;

    .line 5244
    iput-object v4, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 4194
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/audio/o$a;->b:Ljava/lang/String;

    .line 5370
    iput-object v4, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    const/16 v4, 0x1000

    .line 5381
    iput v4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 4196
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/o$a;->e:I

    .line 5517
    iput v4, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 4197
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->b:Lcom/google/android/exoplayer2/audio/o$a;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    .line 5528
    iput v4, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 4198
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->c:Ljava/lang/String;

    .line 6278
    iput-object v4, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 4200
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 4201
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 4202
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->h:Z

    .line 4205
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 4206
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/q;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v2, v5}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 4207
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    goto/16 :goto_0

    .line 2169
    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3144
    iget v4, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 4127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    :goto_1
    if-ge v4, v5, :cond_9

    .line 2138
    aget-byte v6, v0, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 2139
    :goto_2
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/h/q;->i:Z

    if-eqz v7, :cond_7

    aget-byte v7, v0, v4

    const/16 v8, 0xe0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 2140
    :goto_3
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/h/q;->i:Z

    if-eqz v7, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 2142
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 2144
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->i:Z

    .line 2145
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/q;->a:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2145
    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    .line 2146
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/q;->g:I

    .line 2147
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/q;->f:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2151
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
