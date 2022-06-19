.class public final Lnl/dionsegijn/konfetti/models/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00058@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/Size;",
        "",
        "sizeInDp",
        "",
        "mass",
        "",
        "(IF)V",
        "getMass",
        "()F",
        "getSizeInDp",
        "()I",
        "sizeInPx",
        "getSizeInPx$konfetti_release",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final mass:F

.field private final sizeInDp:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    iput p2, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mass="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " must be != 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public synthetic constructor <init>(IFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x40a00000    # 5.0f

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Size;-><init>(IF)V

    return-void
.end method

.method public static synthetic copy$default(Lnl/dionsegijn/konfetti/models/Size;IFILjava/lang/Object;)Lnl/dionsegijn/konfetti/models/Size;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Size;->copy(IF)Lnl/dionsegijn/konfetti/models/Size;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    return v0
.end method

.method public final copy(IF)Lnl/dionsegijn/konfetti/models/Size;
    .locals 1

    new-instance v0, Lnl/dionsegijn/konfetti/models/Size;

    invoke-direct {v0, p1, p2}, Lnl/dionsegijn/konfetti/models/Size;-><init>(IF)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnl/dionsegijn/konfetti/models/Size;

    if-eqz v0, :cond_0

    check-cast p1, Lnl/dionsegijn/konfetti/models/Size;

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    iget v1, p1, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    iget p1, p1, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMass()F
    .locals 1

    .line 11
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    return v0
.end method

.method public final getSizeInDp()I
    .locals 1

    .line 11
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    return v0
.end method

.method public final getSizeInPx$konfetti_release()F
    .locals 3

    .line 14
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size(sizeInDp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Size;->sizeInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Size;->mass:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
