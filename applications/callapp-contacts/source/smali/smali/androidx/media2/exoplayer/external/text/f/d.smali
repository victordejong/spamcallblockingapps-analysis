.class final Landroidx/media2/exoplayer/external/text/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:I

.field e:Z

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:F

.field l:Ljava/lang/String;

.field m:Landroidx/media2/exoplayer/external/text/f/d;

.field n:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    .line 85
    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    .line 86
    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    .line 87
    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    .line 88
    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 98
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget v3, p0, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 2

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 156
    iput p1, p0, Landroidx/media2/exoplayer/external/text/f/d;->b:I

    .line 157
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/text/f/d;->c:Z

    return-object p0
.end method

.method final a(Landroidx/media2/exoplayer/external/text/f/d;)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 2

    if-eqz p1, :cond_8

    .line 205
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->c:Z

    if-eqz v0, :cond_0

    .line 206
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->b:I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/text/f/d;->a(I)Landroidx/media2/exoplayer/external/text/f/d;

    .line 208
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 209
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->h:I

    .line 211
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    if-ne v0, v1, :cond_2

    .line 212
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->i:I

    .line 214
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->a:Ljava/lang/String;

    .line 217
    :cond_3
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    if-ne v0, v1, :cond_4

    .line 218
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    .line 220
    :cond_4
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    if-ne v0, v1, :cond_5

    .line 221
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    .line 223
    :cond_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 224
    iget-object v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->n:Landroid/text/Layout$Alignment;

    .line 226
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    if-ne v0, v1, :cond_7

    .line 227
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->j:I

    .line 228
    iget v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    iput v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->k:F

    .line 231
    :cond_7
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->e:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/text/f/d;->e:Z

    if-eqz v0, :cond_8

    .line 232
    iget p1, p1, Landroidx/media2/exoplayer/external/text/f/d;->d:I

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/f/d;->b(I)Landroidx/media2/exoplayer/external/text/f/d;

    :cond_8
    return-object p0
.end method

.method public final a(Z)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 111
    iput p1, p0, Landroidx/media2/exoplayer/external/text/f/d;->f:I

    return-object p0
.end method

.method public final b(I)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 0

    .line 173
    iput p1, p0, Landroidx/media2/exoplayer/external/text/f/d;->d:I

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/text/f/d;->e:Z

    return-object p0
.end method

.method public final b(Z)Landroidx/media2/exoplayer/external/text/f/d;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/f/d;->m:Landroidx/media2/exoplayer/external/text/f/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 121
    iput p1, p0, Landroidx/media2/exoplayer/external/text/f/d;->g:I

    return-object p0
.end method
