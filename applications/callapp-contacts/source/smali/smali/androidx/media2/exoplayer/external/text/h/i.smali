.class final Landroidx/media2/exoplayer/external/text/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/d;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:[J

.field private final d:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/h/e;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/h/i;->a:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/text/h/i;->b:I

    mul-int/lit8 v0, v0, 0x2

    .line 51
    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/i;->c:[J

    const/4 v0, 0x0

    .line 52
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/text/h/i;->b:I

    if-ge v0, v1, :cond_0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/h/e;

    mul-int/lit8 v2, v0, 0x2

    .line 55
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/h/i;->c:[J

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/text/h/e;->p:J

    aput-wide v4, v3, v2

    .line 56
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/h/i;->c:[J

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/text/h/e;->q:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/h/i;->c:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result p1

    .line 65
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a_(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 75
    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 76
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final b()I
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/i;->d:[J

    array-length v0, v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    const/4 v4, 0x0

    .line 86
    :goto_0
    iget v5, p0, Landroidx/media2/exoplayer/external/text/h/i;->b:I

    if-ge v4, v5, :cond_6

    .line 87
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/h/i;->c:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v7, v5, v6

    cmp-long v9, v7, p1

    if-gtz v9, :cond_5

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_5

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/text/h/i;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/text/h/e;

    .line 1061
    iget v6, v5, Landroidx/media2/exoplayer/external/text/h/e;->e:F

    const/4 v7, 0x1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    iget v6, v5, Landroidx/media2/exoplayer/external/text/h/e;->h:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    if-nez v2, :cond_2

    move-object v2, v5

    goto :goto_2

    :cond_2
    const-string v6, "\n"

    if-nez v1, :cond_3

    .line 99
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    iget-object v7, v2, Landroidx/media2/exoplayer/external/text/h/e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroidx/media2/exoplayer/external/text/h/e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroidx/media2/exoplayer/external/text/h/e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 111
    new-instance p1, Landroidx/media2/exoplayer/external/text/h/e;

    invoke-direct {p1, v1}, Landroidx/media2/exoplayer/external/text/h/e;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    return-object v3

    .line 120
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
