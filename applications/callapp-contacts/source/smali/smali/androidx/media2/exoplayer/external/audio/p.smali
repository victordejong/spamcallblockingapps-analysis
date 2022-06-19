.class public final Landroidx/media2/exoplayer/external/audio/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/p;->a:I

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/p;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/audio/p;

    .line 80
    iget v2, p0, Landroidx/media2/exoplayer/external/audio/p;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/audio/p;->a:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Landroidx/media2/exoplayer/external/audio/p;->b:F

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/p;->b:F

    .line 81
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 87
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/p;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/p;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
