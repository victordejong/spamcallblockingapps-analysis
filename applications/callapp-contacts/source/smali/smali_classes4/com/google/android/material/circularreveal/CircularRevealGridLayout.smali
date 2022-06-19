.class public Lcom/google/android/material/circularreveal/CircularRevealGridLayout;
.super Landroid/widget/GridLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/circularreveal/c;


# instance fields
.field private final a:Lcom/google/android/material/circularreveal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Lcom/google/android/material/circularreveal/b;

    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/b;-><init>(Lcom/google/android/material/circularreveal/b$a;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/b;->a()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/b;->b()V

    return-void
.end method

.method public final c()Lcom/google/android/material/circularreveal/c$d;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/b;->c()Lcom/google/android/material/circularreveal/c$d;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    .line 1228
    iget-object v0, v0, Lcom/google/android/material/circularreveal/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/b;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/b;->d()Z

    move-result v0

    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/b;->a(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/c$d;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealGridLayout;->a:Lcom/google/android/material/circularreveal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/b;->a(Lcom/google/android/material/circularreveal/c$d;)V

    return-void
.end method
