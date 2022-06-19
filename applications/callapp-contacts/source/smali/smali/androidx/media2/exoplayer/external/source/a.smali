.class abstract Landroidx/media2/exoplayer/external/source/a;
.super Landroidx/media2/exoplayer/external/al;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:Landroidx/media2/exoplayer/external/source/an;

.field private final d:Z


# direct methods
.method public constructor <init>(ZLandroidx/media2/exoplayer/external/source/an;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/al;-><init>()V

    .line 81
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/a;->d:Z

    .line 82
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/a;->c:Landroidx/media2/exoplayer/external/source/an;

    .line 83
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/source/an;->a()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/a;->b:I

    return-void
.end method

.method private a(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 314
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/a;->c:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {p2, p1}, Landroidx/media2/exoplayer/external/source/an;->a(I)I

    move-result p1

    return p1

    .line 315
    :cond_0
    iget p2, p0, Landroidx/media2/exoplayer/external/source/a;->b:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(IIZ)I
    .locals 5

    .line 89
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/a;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->c(I)I

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v3

    .line 97
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Landroidx/media2/exoplayer/external/al;->a(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 105
    :cond_3
    invoke-direct {p0, v0, p3}, Landroidx/media2/exoplayer/external/source/a;->a(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 106
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/source/a;->a(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 110
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result p2

    .line 111
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/al;->b(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 115
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/a;->b(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 3

    .line 239
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3047
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3058
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 248
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    .line 250
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->e(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final a(Z)I
    .locals 3

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/source/a;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/a;->d:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a;->c:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/an;->b()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 165
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_4

    .line 1319
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/a;->c:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v2, v0}, Landroidx/media2/exoplayer/external/source/an;->b(I)I

    move-result v0

    goto :goto_1

    :cond_4
    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v1, :cond_3

    return v1

    .line 172
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v1

    .line 173
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/al;->a(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 4

    .line 223
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->b(I)I

    move-result v0

    .line 224
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v1

    .line 225
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->e(I)I

    move-result v2

    .line 226
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    .line 228
    iget p1, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    if-eqz p3, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->g(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 2069
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 231
    iput-object p1, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;
    .locals 3

    .line 2047
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2058
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/a;->d(Ljava/lang/Object;)I

    move-result v1

    .line 214
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v2

    .line 215
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 216
    iget v0, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 217
    iput-object p1, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    return-object p2
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 3

    .line 199
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->c(I)I

    move-result v0

    .line 200
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v1

    .line 201
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->e(I)I

    move-result v2

    .line 202
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    sub-int/2addr p1, v1

    .line 203
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    .line 204
    iget p1, p2, Landroidx/media2/exoplayer/external/al$b;->g:I

    add-int/2addr p1, v2

    iput p1, p2, Landroidx/media2/exoplayer/external/al$b;->g:I

    .line 205
    iget p1, p2, Landroidx/media2/exoplayer/external/al$b;->h:I

    add-int/2addr p1, v2

    iput p1, p2, Landroidx/media2/exoplayer/external/al$b;->h:I

    return-object p2
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    .line 255
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/a;->b(I)I

    move-result v0

    .line 256
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->e(I)I

    move-result v1

    .line 258
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 259
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/a;->g(I)Ljava/lang/Object;

    move-result-object v0

    .line 3069
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(I)I
.end method

.method public final b(Z)I
    .locals 3

    .line 178
    iget v0, p0, Landroidx/media2/exoplayer/external/source/a;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/a;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a;->c:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/an;->c()I

    move-result v2

    .line 186
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-direct {p0, v2, p1}, Landroidx/media2/exoplayer/external/source/a;->a(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 193
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/a;->f(I)I

    move-result v0

    .line 194
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/a;->d(I)Landroidx/media2/exoplayer/external/al;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/al;->b(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract c(I)I
.end method

.method protected abstract d(Ljava/lang/Object;)I
.end method

.method protected abstract d(I)Landroidx/media2/exoplayer/external/al;
.end method

.method protected abstract e(I)I
.end method

.method protected abstract f(I)I
.end method

.method protected abstract g(I)Ljava/lang/Object;
.end method
