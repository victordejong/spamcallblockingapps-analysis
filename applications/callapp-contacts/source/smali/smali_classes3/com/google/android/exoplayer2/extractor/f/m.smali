.class final Lcom/google/android/exoplayer2/extractor/f/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/exoplayer2/extractor/f/c;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/android/exoplayer2/extractor/f/l;

.field public final p:Lcom/google/android/exoplayer2/util/u;

.field public q:Z

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 104
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->g:[J

    new-array v1, v0, [I

    .line 105
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    new-array v1, v0, [I

    .line 106
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->i:[I

    new-array v1, v0, [I

    .line 107
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->j:[I

    new-array v1, v0, [J

    .line 108
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->k:[J

    new-array v1, v0, [Z

    .line 109
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->l:[Z

    new-array v0, v0, [Z

    .line 110
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    .line 111
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->e:I

    const-wide/16 v1, 0x0

    .line 123
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->r:J

    .line 124
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->s:Z

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->m:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->q:Z

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->o:Lcom/google/android/exoplayer2/extractor/f/l;

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->m:Z

    .line 168
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->q:Z

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 139
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->e:I

    .line 140
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 142
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->g:[J

    .line 143
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->i:[I

    array-length p1, p1

    if-ge p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x7d

    .line 148
    div-int/lit8 p2, p2, 0x64

    .line 149
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->i:[I

    .line 150
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->j:[I

    .line 151
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->k:[J

    .line 152
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->l:[Z

    .line 153
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 188
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 2127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 190
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/f/m;->q:Z

    return-void
.end method

.method public final b(I)J
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->j:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final c(I)Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/m;->n:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
