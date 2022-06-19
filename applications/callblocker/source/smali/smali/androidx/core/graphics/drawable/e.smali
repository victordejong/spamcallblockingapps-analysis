.class Landroidx/core/graphics/drawable/e;
.super Landroidx/core/graphics/drawable/d;
.source "WrappedDrawableApi21.java"


# static fields
.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroidx/core/graphics/drawable/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/drawable/e;->c()V

    .line 45
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/f;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/d;-><init>(Landroidx/core/graphics/drawable/f;Landroid/content/res/Resources;)V

    .line 49
    invoke-direct {p0}, Landroidx/core/graphics/drawable/e;->c()V

    .line 50
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Landroidx/core/graphics/drawable/e;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/e;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "WrappedDrawableApi21"

    const-string/jumbo v2, "Failed to retrieve Drawable#isProjected() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 114
    iget-object v1, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    .line 115
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 120
    :cond_1
    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 65
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 55
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 60
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->invalidateSelf()V

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTint(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroidx/core/graphics/drawable/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
