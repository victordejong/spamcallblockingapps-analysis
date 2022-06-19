.class public Lsb0;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lob0;


# instance fields
.field public a:Lcarbon/animation/AnimatedColorStateList;


# direct methods
.method public constructor <init>(Lcarbon/animation/AnimatedColorStateList;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcarbon/animation/AnimatedColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 3

    iget-object v0, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcarbon/animation/AnimatedColorStateList;->getColorForState([II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-object v0, p0, Lsb0;->a:Lcarbon/animation/AnimatedColorStateList;

    invoke-virtual {v0, p1}, Lcarbon/animation/AnimatedColorStateList;->e([I)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method
