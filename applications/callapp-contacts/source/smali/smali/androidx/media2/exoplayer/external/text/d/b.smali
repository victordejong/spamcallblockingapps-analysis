.class final Landroidx/media2/exoplayer/external/text/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/text/d;


# instance fields
.field private final a:[Landroidx/media2/exoplayer/external/text/a;

.field private final b:[J


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/text/a;[J)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/d/b;->a:[Landroidx/media2/exoplayer/external/text/a;

    .line 46
    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 51
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZZ)I

    move-result p1

    .line 52
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

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

    .line 62
    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 63
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 64
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final b()I
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    array-length v0, v0

    return v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/d/b;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 70
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/d/b;->a:[Landroidx/media2/exoplayer/external/text/a;

    aget-object p2, p2, p1

    sget-object v0, Landroidx/media2/exoplayer/external/text/a;->a:Landroidx/media2/exoplayer/external/text/a;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/d/b;->a:[Landroidx/media2/exoplayer/external/text/a;

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
