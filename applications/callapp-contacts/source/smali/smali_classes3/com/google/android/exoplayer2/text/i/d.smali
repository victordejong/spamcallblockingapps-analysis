.class public final Lcom/google/android/exoplayer2/text/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:I

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:F

.field p:I

.field q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 102
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->a:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->b:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/i/d;->c:Ljava/util/Set;

    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/i/d;->g:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/i/d;->i:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->j:I

    .line 110
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->k:I

    .line 111
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->l:I

    .line 112
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->m:I

    .line 113
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->n:I

    .line 114
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/d;->p:I

    .line 115
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/i/d;->q:Z

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr p0, p3

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/text/i/d;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/text/i/d;->m:I

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

    .line 183
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/i/d;->m:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->d:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->a:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/text/i/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/d;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v0, p2, v2}, Lcom/google/android/exoplayer2/text/i/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 163
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/d;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lcom/google/android/exoplayer2/text/i/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 164
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/d;->c:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/d;->c:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    return p1

    :cond_3
    :goto_0
    return v1
.end method
