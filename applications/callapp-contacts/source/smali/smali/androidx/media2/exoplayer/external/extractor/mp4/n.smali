.class final Landroidx/media2/exoplayer/external/extractor/mp4/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/media2/exoplayer/external/extractor/mp4/c;

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

.field public o:Landroidx/media2/exoplayer/external/extractor/mp4/m;

.field public p:I

.field public q:Landroidx/media2/exoplayer/external/util/p;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->e:I

    const-wide/16 v1, 0x0

    .line 122
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->s:J

    .line 123
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->m:Z

    .line 124
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->r:Z

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->o:Landroidx/media2/exoplayer/external/extractor/mp4/m;

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    if-eqz v0, :cond_0

    .line 1125
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge v0, p1, :cond_1

    .line 166
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    .line 168
    :cond_1
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->p:I

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->m:Z

    .line 170
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->r:Z

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 137
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->e:I

    .line 138
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->f:I

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->h:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 140
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->g:[J

    .line 141
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->h:[I

    .line 143
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->i:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ge p1, p2, :cond_3

    :cond_2
    mul-int/lit8 p2, p2, 0x7d

    .line 146
    div-int/lit8 p2, p2, 0x64

    .line 147
    new-array p1, p2, [I

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->i:[I

    .line 148
    new-array p1, p2, [I

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->j:[I

    .line 149
    new-array p1, p2, [J

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->k:[J

    .line 150
    new-array p1, p2, [Z

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->l:[Z

    .line 151
    new-array p1, p2, [Z

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->n:[Z

    :cond_3
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 3

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->p:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 191
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->q:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 192
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->r:Z

    return-void
.end method

.method public final b(I)J
    .locals 5

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->j:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final c(I)Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/n;->n:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
