.class public abstract Lcom/google/android/exoplayer2/a;
.super Lcom/google/android/exoplayer2/al;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final c:Lcom/google/android/exoplayer2/source/ac;

.field private final d:Z


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ac;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/al;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/a;->d:Z

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/source/ac;

    .line 73
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ac;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/a;->a:I

    return-void
.end method

.method private a(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 316
    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/source/ac;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/ac;->a(I)I

    move-result p1

    return p1

    .line 317
    :cond_0
    iget p2, p0, Lcom/google/android/exoplayer2/a;->a:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 322
    iget-object p2, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/source/ac;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/source/ac;->b(I)I

    move-result p1

    return p1

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(IIZ)I
    .locals 5

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->c(I)I

    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v3

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 89
    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lcom/google/android/exoplayer2/al;->a(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 97
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/a;->a(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/a;->a(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result p2

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 107
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a;->b(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final a(Z)I
    .locals 3

    .line 151
    iget v0, p0, Lcom/google/android/exoplayer2/a;->a:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a;->d:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/source/ac;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ac;->b()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 159
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/a;->b(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 166
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v1

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/al;->a(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 4

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->b(I)I

    move-result v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v1

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->e(I)I

    move-result v2

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 227
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 228
    iget p1, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    if-eqz p3, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->g(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 2059
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 231
    iput-object p1, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;
    .locals 3

    .line 2037
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2048
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a;->d(Ljava/lang/Object;)I

    move-result v1

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v2

    .line 215
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 216
    iget v0, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 217
    iput-object p1, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    return-object p2
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 4

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->c(I)I

    move-result v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v1

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->e(I)I

    move-result v2

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 197
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 198
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->g(I)Ljava/lang/Object;

    move-result-object p1

    .line 201
    sget-object p3, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object p3, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 1059
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 203
    :goto_0
    iput-object p1, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 204
    iget p1, p2, Lcom/google/android/exoplayer2/al$b;->n:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/al$b;->n:I

    .line 205
    iget p1, p2, Lcom/google/android/exoplayer2/al$b;->o:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/exoplayer2/al$b;->o:I

    return-object p2
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->b(I)I

    move-result v0

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->e(I)I

    move-result v1

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->g(I)Ljava/lang/Object;

    move-result-object v0

    .line 3059
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(I)I
.end method

.method public final b(IIZ)I
    .locals 5

    .line 115
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->c(I)I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v3

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 125
    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lcom/google/android/exoplayer2/al;->b(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 133
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/a;->b(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/a;->b(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result p2

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/al;->a(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 144
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/a;->a(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final b(Z)I
    .locals 3

    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/a;->a:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/source/ac;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ac;->c()I

    move-result v2

    .line 180
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/a;->a(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 187
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a;->f(I)I

    move-result v0

    .line 188
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract c(I)I
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 3

    .line 239
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3037
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3048
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 248
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->d(I)Lcom/google/android/exoplayer2/al;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    .line 251
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a;->e(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract d(Ljava/lang/Object;)I
.end method

.method protected abstract d(I)Lcom/google/android/exoplayer2/al;
.end method

.method protected abstract e(I)I
.end method

.method protected abstract f(I)I
.end method

.method protected abstract g(I)Ljava/lang/Object;
.end method
