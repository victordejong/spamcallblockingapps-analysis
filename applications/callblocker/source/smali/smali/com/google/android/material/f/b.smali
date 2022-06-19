.class public Lcom/google/android/material/f/b;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/f/d;


# instance fields
.field private final a:Lcom/google/android/material/f/c;


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->a()V

    .line 45
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->b()V

    .line 50
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Landroid/graphics/Canvas;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->d()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/f/d$d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->c()Lcom/google/android/material/f/d$d;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->f()Z

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(I)V

    .line 71
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/f/d$d;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/material/f/b;->a:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Lcom/google/android/material/f/d$d;)V

    .line 61
    return-void
.end method
