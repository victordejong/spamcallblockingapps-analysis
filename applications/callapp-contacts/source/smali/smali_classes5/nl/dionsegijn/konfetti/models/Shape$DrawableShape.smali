.class public final Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl/dionsegijn/konfetti/models/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/dionsegijn/konfetti/models/Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawableShape"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c2\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0013\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;",
        "Lnl/dionsegijn/konfetti/models/Shape;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "tint",
        "",
        "(Landroid/graphics/drawable/Drawable;Z)V",
        "getDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "heightRatio",
        "",
        "component1",
        "component2",
        "copy",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "size",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final heightRatio:F

.field private final tint:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p2, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    .line 72
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p2, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p2, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 72
    :goto_1
    iput p1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->heightRatio:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private final component2()Z
    .locals 1

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    return v0
.end method

.method public static synthetic copy$default(Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;Landroid/graphics/drawable/Drawable;ZILjava/lang/Object;)Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->copy(Landroid/graphics/drawable/Drawable;Z)Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final copy(Landroid/graphics/drawable/Drawable;Z)Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;

    invoke-direct {v0, p1, p2}, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 89
    :goto_0
    iget p2, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->heightRatio:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float v0, p2

    sub-float v0, p3, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 92
    iget-object v1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    float-to-int p3, p3

    add-int/2addr p2, v0

    invoke-virtual {v1, v2, v0, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object p2, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;

    if-eqz v0, :cond_0

    check-cast p1, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;

    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    iget-boolean p1, p1, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawableShape(drawable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;->tint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
