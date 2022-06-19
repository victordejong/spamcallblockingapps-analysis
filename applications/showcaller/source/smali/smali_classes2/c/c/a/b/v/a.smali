.class public Lc/c/a/b/v/a;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Lc/c/a/b/x/p;
.implements Landroidx/core/graphics/drawable/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/v/a$b;
    }
.end annotation


# instance fields
.field private d:Lc/c/a/b/v/a$b;


# direct methods
.method private constructor <init>(Lc/c/a/b/v/a$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p1, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lc/c/a/b/v/a$b;Lc/c/a/b/v/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/b/v/a;-><init>(Lc/c/a/b/v/a$b;)V

    return-void
.end method

.method public constructor <init>(Lc/c/a/b/x/m;)V
    .locals 2

    .line 2
    new-instance v0, Lc/c/a/b/v/a$b;

    new-instance v1, Lc/c/a/b/x/h;

    invoke-direct {v1, p1}, Lc/c/a/b/x/h;-><init>(Lc/c/a/b/x/m;)V

    invoke-direct {v0, v1}, Lc/c/a/b/v/a$b;-><init>(Lc/c/a/b/x/h;)V

    invoke-direct {p0, v0}, Lc/c/a/b/v/a;-><init>(Lc/c/a/b/v/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/b/v/a;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/b/v/a$b;

    iget-object v1, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    invoke-direct {v0, v1}, Lc/c/a/b/v/a$b;-><init>(Lc/c/a/b/v/a$b;)V

    .line 2
    iput-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-boolean v1, v0, Lc/c/a/b/v/a$b;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0}, Lc/c/a/b/x/h;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/b/v/a;->a()Lc/c/a/b/v/a;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v1, v1, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    invoke-static {p1}, Lc/c/a/b/v/b;->e([I)Z

    move-result p1

    .line 4
    iget-object v1, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-boolean v3, v1, Lc/c/a/b/v/a$b;->b:Z

    if-eq v3, p1, :cond_1

    .line 5
    iput-boolean p1, v1, Lc/c/a/b/v/a$b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lc/c/a/b/x/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setShapeAppearanceModel(Lc/c/a/b/x/m;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/v/a;->d:Lc/c/a/b/v/a$b;

    iget-object v0, v0, Lc/c/a/b/v/a$b;->a:Lc/c/a/b/x/h;

    invoke-virtual {v0, p1}, Lc/c/a/b/x/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
