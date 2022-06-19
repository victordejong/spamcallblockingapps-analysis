.class public final Lcom/google/android/material/progressindicator/i;
.super Lcom/google/android/material/progressindicator/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Lcom/google/android/material/progressindicator/f;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/progressindicator/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/android/material/progressindicator/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/b;",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;",
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V

    .line 1177
    iput-object p3, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    .line 1178
    invoke-virtual {p3, p0}, Lcom/google/android/material/progressindicator/g;->a(Lcom/google/android/material/progressindicator/f;)V

    .line 43
    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/i;->a(Lcom/google/android/material/progressindicator/h;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/android/material/progressindicator/i;

    new-instance v1, Lcom/google/android/material/progressindicator/c;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    new-instance v2, Lcom/google/android/material/progressindicator/d;

    invoke-direct {v2, p1}, Lcom/google/android/material/progressindicator/d;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/i;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/i<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/android/material/progressindicator/i;

    new-instance v1, Lcom/google/android/material/progressindicator/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    iget v2, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->g:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/material/progressindicator/k;

    invoke-direct {v2, p1}, Lcom/google/android/material/progressindicator/k;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/material/progressindicator/l;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/progressindicator/l;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/i;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;Lcom/google/android/material/progressindicator/h;)V

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/android/material/progressindicator/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/h<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    .line 168
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/h;->a(Lcom/google/android/material/progressindicator/i;)V

    return-void
.end method

.method public final bridge synthetic a()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->a()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroidx/l/a/a/b$a;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->a(Landroidx/l/a/a/b$a;)Z

    move-result p1

    return p1
.end method

.method final a(ZZZ)Z
    .locals 1

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->a(ZZZ)Z

    move-result p2

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/h;->b()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->b:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-gt p1, p3, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/h;->a()V

    :cond_2
    return p2
.end method

.method public final bridge synthetic b(Landroidx/l/a/a/b$a;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->b(Landroidx/l/a/a/b$a;)V

    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(ZZZ)Z
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->b(ZZZ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->c()Z

    move-result v0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/i;->d()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->b(Landroid/graphics/Canvas;F)V

    .line 143
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/h;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/i;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/h;->c:[F

    mul-int/lit8 v3, v0, 0x2

    aget v5, v1, v3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/h;->c:[F

    add-int/lit8 v3, v3, 0x1

    aget v6, v1, v3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/i;->f:Lcom/google/android/material/progressindicator/h;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/h;->d:[I

    aget v7, v1, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final bridge synthetic getAlpha()I
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->b()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/material/progressindicator/i;->a:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->a()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isRunning()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setAlpha(I)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setAlpha(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/f;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic start()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->start()V

    return-void
.end method

.method public final bridge synthetic stop()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/google/android/material/progressindicator/f;->stop()V

    return-void
.end method
