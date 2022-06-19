.class final Lcom/google/android/exoplayer2/text/i/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/e;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[J

.field private final c:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/e;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/i;->a:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/i/i;->b:[J

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i/e;

    mul-int/lit8 v2, v0, 0x2

    .line 44
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/i/i;->b:[J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/i/e;->b:J

    aput-wide v4, v3, v2

    .line 45
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/i/i;->b:[J

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Lcom/google/android/exoplayer2/text/i/e;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/i/i;->b:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/text/i/e;Lcom/google/android/exoplayer2/text/i/e;)I
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/i/e;->b:J

    iget-wide p0, p1, Lcom/google/android/exoplayer2/text/i/e;->b:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tXqc5KJ6nlSQ-YbMMLKX56kDVlg(Lcom/google/android/exoplayer2/text/i/e;Lcom/google/android/exoplayer2/text/i/e;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/i/i;->a(Lcom/google/android/exoplayer2/text/i/e;Lcom/google/android/exoplayer2/text/i/e;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/af;->b([JJZ)I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    array-length v0, v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/i/i;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/i/i;->b:[J

    mul-int/lit8 v5, v3, 0x2

    aget-wide v6, v4, v5

    cmp-long v8, v6, p1

    if-gtz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v4, v5

    cmp-long v4, p1, v5

    if-gez v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/i/i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/i/e;

    .line 76
    iget-object v5, v4, Lcom/google/android/exoplayer2/text/i/e;->a:Lcom/google/android/exoplayer2/text/b;

    iget v5, v5, Lcom/google/android/exoplayer2/text/b;->e:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 77
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/text/i/e;->a:Lcom/google/android/exoplayer2/text/b;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    sget-object p1, Lcom/google/android/exoplayer2/text/i/-$$Lambda$i$tXqc5KJ6nlSQ-YbMMLKX56kDVlg;->INSTANCE:Lcom/google/android/exoplayer2/text/i/-$$Lambda$i$tXqc5KJ6nlSQ-YbMMLKX56kDVlg;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/i/e;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/i/e;->a:Lcom/google/android/exoplayer2/text/b;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    rsub-int/lit8 p2, v2, -0x1

    int-to-float p2, p2

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final b_(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/i;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
