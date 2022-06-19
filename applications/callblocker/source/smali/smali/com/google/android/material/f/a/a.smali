.class public Lcom/google/android/material/f/a/a;
.super Lcom/google/android/material/d/a;
.source "CircularRevealCardView.java"

# interfaces
.implements Lcom/google/android/material/f/d;


# instance fields
.field private final e:Lcom/google/android/material/f/c;


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->a()V

    .line 48
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/material/d/a;->draw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->b()V

    .line 53
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/android/material/d/a;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Landroid/graphics/Canvas;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/d/a;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->d()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/f/d$d;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->c()Lcom/google/android/material/f/d$d;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0}, Lcom/google/android/material/f/c;->f()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/material/d/a;->isOpaque()Z

    move-result v0

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(I)V

    .line 69
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/f/d$d;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/material/f/a/a;->e:Lcom/google/android/material/f/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/f/c;->a(Lcom/google/android/material/f/d$d;)V

    .line 58
    return-void
.end method
