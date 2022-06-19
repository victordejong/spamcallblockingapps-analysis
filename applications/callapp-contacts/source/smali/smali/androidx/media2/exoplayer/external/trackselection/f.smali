.class public final Landroidx/media2/exoplayer/external/trackselection/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Landroidx/media2/exoplayer/external/trackselection/e;

.field private c:I


# direct methods
.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/trackselection/e;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    .line 44
    array-length p1, p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/f;->a:I

    return-void
.end method


# virtual methods
.method public final a()[Landroidx/media2/exoplayer/external/trackselection/e;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-virtual {v0}, [Landroidx/media2/exoplayer/external/trackselection/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/trackselection/e;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/f;

    .line 82
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 65
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->c:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 68
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->c:I

    .line 70
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/f;->c:I

    return v0
.end method
