.class public final Lnl/dionsegijn/konfetti/models/Vector;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0000J\u0016\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0003J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/Vector;",
        "",
        "x",
        "",
        "y",
        "(FF)V",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "getY",
        "setY",
        "add",
        "",
        "v",
        "addScaled",
        "s",
        "component1",
        "component2",
        "copy",
        "div",
        "n",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "mult",
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
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lnl/dionsegijn/konfetti/models/Vector;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    iput p2, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Vector;-><init>(FF)V

    return-void
.end method

.method public static synthetic copy$default(Lnl/dionsegijn/konfetti/models/Vector;FFILjava/lang/Object;)Lnl/dionsegijn/konfetti/models/Vector;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Vector;->copy(FF)Lnl/dionsegijn/konfetti/models/Vector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lnl/dionsegijn/konfetti/models/Vector;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    iget v1, p1, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    .line 9
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    iget p1, p1, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public final addScaled(Lnl/dionsegijn/konfetti/models/Vector;F)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    iget v1, p1, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    .line 14
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    iget p1, p1, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public final component1()F
    .locals 1

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return v0
.end method

.method public final copy(FF)Lnl/dionsegijn/konfetti/models/Vector;
    .locals 1

    new-instance v0, Lnl/dionsegijn/konfetti/models/Vector;

    invoke-direct {v0, p1, p2}, Lnl/dionsegijn/konfetti/models/Vector;-><init>(FF)V

    return-object v0
.end method

.method public final div(F)V
    .locals 1

    .line 23
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    .line 24
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnl/dionsegijn/konfetti/models/Vector;

    if-eqz v0, :cond_0

    check-cast p1, Lnl/dionsegijn/konfetti/models/Vector;

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    iget v1, p1, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    iget p1, p1, Lnl/dionsegijn/konfetti/models/Vector;->y:F

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

.method public final getX()F
    .locals 1

    .line 6
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 6
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final mult(F)V
    .locals 1

    .line 18
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    mul-float v0, v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    .line 19
    iget v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    mul-float v0, v0, p1

    iput v0, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    .line 6
    iput p1, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 6
    iput p1, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Vector(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Vector;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnl/dionsegijn/konfetti/models/Vector;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
