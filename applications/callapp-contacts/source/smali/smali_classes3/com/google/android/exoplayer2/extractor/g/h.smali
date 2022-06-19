.class abstract Lcom/google/android/exoplayer2/extractor/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/g/h$b;,
        Lcom/google/android/exoplayer2/extractor/g/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/extractor/g/d;

.field b:Lcom/google/android/exoplayer2/extractor/x;

.field c:Lcom/google/android/exoplayer2/extractor/j;

.field d:Lcom/google/android/exoplayer2/extractor/g/f;

.field e:J

.field f:I

.field g:I

.field h:Lcom/google/android/exoplayer2/extractor/g/h$a;

.field i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/g/h$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/g/h$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/g/f;->a(Lcom/google/android/exoplayer2/extractor/i;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 200
    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/u;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 203
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/g/h;->c(J)V

    .line 206
    :cond_1
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/g/h;->m:Z

    if-nez v2, :cond_2

    .line 207
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/g/f;->a()Lcom/google/android/exoplayer2/extractor/v;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/v;

    .line 208
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/g/h;->c:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 209
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/g/h;->m:Z

    .line 212
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/g/h;->l:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/g/d;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 225
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    const/4 v1, -0x1

    return v1

    .line 213
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/g/h;->l:J

    .line 214
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 2120
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/g/h;->b(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 216
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/g/h;->k:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/g/h;->j:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 218
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/g/h;->a(J)J

    move-result-wide v10

    .line 219
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/g/h;->b:Lcom/google/android/exoplayer2/extractor/x;

    .line 2127
    iget v5, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 219
    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 220
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/g/h;->b:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v12, 0x1

    .line 3127
    iget v13, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 220
    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 221
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/g/h;->j:J

    .line 223
    :cond_5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/g/h;->k:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/g/h;->k:J

    const/4 v1, 0x0

    return v1
.end method

.method protected final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->g:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method final a(JJ)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 1044
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/d;->a:Lcom/google/android/exoplayer2/extractor/g/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/g/e;->a()V

    .line 1045
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    const/4 v1, -0x1

    .line 1046
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/g/d;->c:I

    .line 1047
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/g/d;->d:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 99
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->m:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Z)V

    return-void

    .line 101
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/g/h;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->j:J

    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->d:Lcom/google/android/exoplayer2/extractor/g/f;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/g/f;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/g/h;->j:J

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/g/f;->a(J)V

    const/4 p1, 0x2

    .line 104
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->c:Lcom/google/android/exoplayer2/extractor/j;

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/g/h;->b:Lcom/google/android/exoplayer2/extractor/x;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/h$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/h$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    .line 84
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 89
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/h;->j:J

    .line 90
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->k:J

    return-void
.end method

.method final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/g/d;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->f:I

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->l:J

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->a:Lcom/google/android/exoplayer2/extractor/g/d;

    .line 1120
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/g/d;->b:Lcom/google/android/exoplayer2/util/u;

    .line 153
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/g/h;->h:Lcom/google/android/exoplayer2/extractor/g/h$a;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/extractor/g/h$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->e:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/extractor/g/h$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method protected final b(J)J
    .locals 2

    .line 248
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/h;->g:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/util/u;)J
.end method

.method protected c(J)V
    .locals 0

    .line 278
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/h;->k:J

    return-void
.end method
