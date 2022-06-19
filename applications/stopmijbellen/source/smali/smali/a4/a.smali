.class public La4/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lc4/m;
.implements Lg0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/a$b;
    }
.end annotation


# instance fields
.field public a:La4/a$b;


# direct methods
.method public constructor <init>(La4/a$b;La4/a$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5
    iput-object p1, p0, La4/a;->a:La4/a$b;

    return-void
.end method

.method public constructor <init>(Lc4/i;)V
    .locals 2

    .line 1
    new-instance v0, La4/a$b;

    new-instance v1, Lc4/f;

    invoke-direct {v1, p1}, Lc4/f;-><init>(Lc4/i;)V

    invoke-direct {v0, v1}, La4/a$b;-><init>(Lc4/f;)V

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    iput-object v0, p0, La4/a;->a:La4/a$b;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-boolean v1, v0, La4/a$b;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0}, Lc4/f;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, La4/a$b;

    iget-object v1, p0, La4/a;->a:La4/a$b;

    invoke-direct {v0, v1}, La4/a$b;-><init>(La4/a$b;)V

    .line 2
    iput-object v0, p0, La4/a;->a:La4/a$b;

    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, La4/a;->a:La4/a$b;

    iget-object v1, v1, La4/a$b;->a:Lc4/f;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    invoke-static {p1}, La4/b;->b([I)Z

    move-result p1

    .line 4
    iget-object v1, p0, La4/a;->a:La4/a$b;

    iget-boolean v3, v1, La4/a$b;->b:Z

    if-eq v3, p1, :cond_1

    .line 5
    iput-boolean p1, v1, La4/a$b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lc4/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    .line 2
    iget-object v1, v0, Lc4/f;->a:Lc4/f$b;

    iput-object p1, v1, Lc4/f$b;->a:Lc4/i;

    .line 3
    invoke-virtual {v0}, Lc4/f;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, La4/a;->a:La4/a$b;

    iget-object v0, v0, La4/a$b;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
