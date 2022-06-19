.class public final Landroidx/media2/exoplayer/external/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 37
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/util/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 4

    if-ltz p1, :cond_0

    .line 68
    iget v0, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    const/16 v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .line 53
    iget v0, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 54
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    .line 56
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final a()[J
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/k;->b:[J

    iget v1, p0, Landroidx/media2/exoplayer/external/util/k;->a:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
