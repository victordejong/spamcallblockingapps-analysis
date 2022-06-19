.class final Lcom/google/android/exoplayer2/text/g/g;
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

.field m:I

.field n:I

.field o:Landroid/text/Layout$Alignment;

.field p:I

.field q:Lcom/google/android/exoplayer2/text/g/b;

.field r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->f:I

    .line 95
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->g:I

    .line 96
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->h:I

    .line 97
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->i:I

    .line 98
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->j:I

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->m:I

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->n:I

    .line 101
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->p:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 102
    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->r:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 112
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/text/g/g;->i:I

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

    .line 116
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/g/g;->i:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    .line 165
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->b:I

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/g/g;->c:Z

    return-object p0
.end method

.method final a(Lcom/google/android/exoplayer2/text/g/g;)Lcom/google/android/exoplayer2/text/g/g;
    .locals 3

    if-eqz p1, :cond_d

    .line 223
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g/g;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/g/g;->c:Z

    if-eqz v0, :cond_0

    .line 224
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/g/g;->a(I)Lcom/google/android/exoplayer2/text/g/g;

    .line 226
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 227
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->h:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->h:I

    .line 229
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->i:I

    if-ne v0, v1, :cond_2

    .line 230
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->i:I

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 233
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->a:Ljava/lang/String;

    .line 235
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->f:I

    if-ne v0, v1, :cond_4

    .line 236
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->f:I

    .line 238
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->g:I

    if-ne v0, v1, :cond_5

    .line 239
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->g:I

    .line 241
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->n:I

    if-ne v0, v1, :cond_6

    .line 242
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->n:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->n:I

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    .line 245
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->o:Landroid/text/Layout$Alignment;

    .line 247
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->p:I

    if-ne v0, v1, :cond_8

    .line 248
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->p:I

    .line 250
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->j:I

    if-ne v0, v1, :cond_9

    .line 251
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->j:I

    .line 252
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->k:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->k:F

    .line 254
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    if-nez v0, :cond_a

    .line 255
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g/g;->q:Lcom/google/android/exoplayer2/text/g/b;

    .line 257
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->r:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_b

    .line 258
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->r:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/g/g;->r:F

    .line 261
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g/g;->e:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/g/g;->e:Z

    if-eqz v0, :cond_c

    .line 262
    iget v0, p1, Lcom/google/android/exoplayer2/text/g/g;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/g/g;->b(I)Lcom/google/android/exoplayer2/text/g/g;

    .line 264
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/text/g/g;->m:I

    if-ne v0, v1, :cond_d

    iget p1, p1, Lcom/google/android/exoplayer2/text/g/g;->m:I

    if-eq p1, v1, :cond_d

    .line 265
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->m:I

    :cond_d
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    .line 124
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->f:I

    return-object p0
.end method

.method public final b(I)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    .line 182
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->d:I

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/g/g;->e:Z

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    .line 133
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->g:I

    return-object p0
.end method

.method public final c(Z)Lcom/google/android/exoplayer2/text/g/g;
    .locals 0

    .line 317
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/g;->p:I

    return-object p0
.end method
