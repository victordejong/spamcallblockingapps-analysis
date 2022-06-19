.class final Lcom/google/android/exoplayer2/ae;
.super Lcom/google/android/exoplayer2/a;
.source "SourceFile"


# instance fields
.field final a:[Lcom/google/android/exoplayer2/al;

.field private final c:I

.field private final d:I

.field private final e:[I

.field private final f:[I

.field private final g:[Ljava/lang/Object;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ac;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplayer2/x;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ac;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/a;-><init>(ZLcom/google/android/exoplayer2/source/ac;)V

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 42
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/ae;->e:[I

    .line 43
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/ae;->f:[I

    .line 44
    new-array v1, p2, [Lcom/google/android/exoplayer2/al;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    .line 45
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ae;->g:[Ljava/lang/Object;

    .line 46
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ae;->h:Ljava/util/HashMap;

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/x;

    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/x;->b()Lcom/google/android/exoplayer2/al;

    move-result-object v4

    aput-object v4, v3, v1

    .line 52
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->f:[I

    aput v0, v3, v1

    .line 53
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->e:[I

    aput p2, v3, v1

    .line 54
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/al;->a()I

    move-result v3

    add-int/2addr v0, v3

    .line 55
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v3

    add-int/2addr p2, v3

    .line 56
    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->g:[Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/x;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/ae;->h:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ae;->g:[Ljava/lang/Object;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    .line 59
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/ae;->c:I

    .line 60
    iput p2, p0, Lcom/google/android/exoplayer2/ae;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/ae;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer2/ae;->d:I

    return v0
.end method

.method protected final b(I)I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->e:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/af;->b([II)I

    move-result p1

    return p1
.end method

.method protected final c(I)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->f:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/af;->b([II)I

    move-result p1

    return p1
.end method

.method protected final d(Ljava/lang/Object;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final d(I)Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->a:[Lcom/google/android/exoplayer2/al;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final e(I)I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final f(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final g(I)Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ae;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
