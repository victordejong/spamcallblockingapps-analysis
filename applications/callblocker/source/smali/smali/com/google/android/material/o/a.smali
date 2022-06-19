.class public Lcom/google/android/material/o/a;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/o/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/o/a$a;


# direct methods
.method private constructor <init>(Lcom/google/android/material/o/a$a;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/o/a$a;Lcom/google/android/material/o/a$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/material/o/a;-><init>(Lcom/google/android/material/o/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/q/k;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/material/o/a$a;

    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1, p1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    invoke-direct {v0, v1}, Lcom/google/android/material/o/a$a;-><init>(Lcom/google/android/material/q/g;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/o/a;-><init>(Lcom/google/android/material/o/a$a;)V

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/o/a;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/material/o/a$a;

    iget-object v1, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    invoke-direct {v0, v1}, Lcom/google/android/material/o/a$a;-><init>(Lcom/google/android/material/o/a$a;)V

    .line 147
    iput-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    .line 148
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-boolean v0, v0, Lcom/google/android/material/o/a$a;->b:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->draw(Landroid/graphics/Canvas;)V

    .line 129
    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->a()Lcom/google/android/material/o/a;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v2, v2, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v2, p1}, Lcom/google/android/material/q/g;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/o/b;->a([I)Z

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-boolean v3, v3, Lcom/google/android/material/o/a$a;->b:Z

    if-eq v3, v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iput-boolean v2, v0, Lcom/google/android/material/o/a$a;->b:Z

    .line 120
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setAlpha(I)V

    .line 154
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 159
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 84
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTint(I)V

    .line 69
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/material/o/a;->a:Lcom/google/android/material/o/a$a;

    iget-object v0, v0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    return-void
.end method
