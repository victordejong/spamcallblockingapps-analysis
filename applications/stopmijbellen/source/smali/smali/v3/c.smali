.class public final Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:F

.field public C:F

.field public D:[I

.field public E:Z

.field public final F:Landroid/text/TextPaint;

.field public final G:Landroid/text/TextPaint;

.field public H:Landroid/animation/TimeInterpolator;

.field public I:Landroid/animation/TimeInterpolator;

.field public J:F

.field public K:F

.field public L:F

.field public M:Landroid/content/res/ColorStateList;

.field public N:F

.field public O:Landroid/text/StaticLayout;

.field public P:F

.field public Q:F

.field public R:F

.field public S:Ljava/lang/CharSequence;

.field public T:I

.field public final a:Landroid/view/View;

.field public b:Z

.field public c:F

.field public d:F

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/RectF;

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/res/ColorStateList;

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Landroid/graphics/Typeface;

.field public w:Lz3/a;

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lv3/c;->h:I

    .line 3
    iput v0, p0, Lv3/c;->i:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    iput v0, p0, Lv3/c;->j:F

    .line 5
    iput v0, p0, Lv3/c;->k:F

    .line 6
    sget v0, Lv3/m;->m:I

    iput v0, p0, Lv3/c;->T:I

    .line 7
    iput-object p1, p0, Lv3/c;->a:Landroid/view/View;

    .line 8
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    .line 9
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lv3/c;->G:Landroid/text/TextPaint;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lv3/c;->f:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lv3/c;->g:Landroid/graphics/RectF;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 13
    iput p1, p0, Lv3/c;->d:F

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v4, v1

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    .line 5
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static h(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lf3/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static k(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/c;->a:Landroid/view/View;

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lm0/v$e;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lk0/d;->d:Lk0/c;

    goto :goto_1

    :cond_1
    sget-object v0, Lk0/d;->c:Lk0/c;

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    check-cast v0, Lk0/d$c;

    invoke-virtual {v0, p1, v2, v1}, Lk0/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public final c(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv3/c;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    .line 2
    invoke-static {v1, v2, p1, v3}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget-object v0, p0, Lv3/c;->g:Landroid/graphics/RectF;

    iget v1, p0, Lv3/c;->n:F

    iget v2, p0, Lv3/c;->o:F

    iget-object v3, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget-object v0, p0, Lv3/c;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    .line 5
    invoke-static {v1, v2, p1, v3}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6
    iget-object v0, p0, Lv3/c;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-static {v1, v2, p1, v3}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 8
    iget v0, p0, Lv3/c;->p:F

    iget v1, p0, Lv3/c;->q:F

    iget-object v2, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lv3/c;->r:F

    .line 9
    iget v0, p0, Lv3/c;->n:F

    iget v1, p0, Lv3/c;->o:F

    iget-object v2, p0, Lv3/c;->H:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lv3/c;->s:F

    .line 10
    iget v0, p0, Lv3/c;->j:F

    iget v1, p0, Lv3/c;->k:F

    iget-object v2, p0, Lv3/c;->I:Landroid/animation/TimeInterpolator;

    .line 11
    invoke-static {v0, v1, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lv3/c;->o(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 13
    sget-object v2, Lf3/a;->b:Landroid/animation/TimeInterpolator;

    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v0, v1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    .line 15
    iput v1, p0, Lv3/c;->Q:F

    .line 16
    iget-object v1, p0, Lv3/c;->a:Landroid/view/View;

    sget-object v4, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v1}, Lm0/v$d;->k(Landroid/view/View;)V

    .line 18
    invoke-static {v0, v3, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 19
    iput v0, p0, Lv3/c;->R:F

    .line 20
    iget-object v0, p0, Lv3/c;->a:Landroid/view/View;

    .line 21
    invoke-static {v0}, Lm0/v$d;->k(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lv3/c;->m:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lv3/c;->l:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lv3/c;->F:Landroid/text/TextPaint;

    .line 24
    invoke-virtual {p0, v1}, Lv3/c;->g(Landroid/content/res/ColorStateList;)I

    move-result v1

    .line 25
    invoke-virtual {p0}, Lv3/c;->f()I

    move-result v4

    .line 26
    invoke-static {v1, v4, p1}, Lv3/c;->a(IIF)I

    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lv3/c;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 29
    :goto_0
    iget v0, p0, Lv3/c;->N:F

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    .line 31
    invoke-static {v3, v0, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 34
    :goto_1
    iget-object v0, p0, Lv3/c;->F:Landroid/text/TextPaint;

    iget v1, p0, Lv3/c;->J:F

    const/4 v2, 0x0

    .line 35
    invoke-static {v3, v1, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v4, p0, Lv3/c;->K:F

    .line 36
    invoke-static {v3, v4, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget v5, p0, Lv3/c;->L:F

    .line 37
    invoke-static {v3, v5, p1, v2}, Lv3/c;->h(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    .line 38
    invoke-virtual {p0, v2}, Lv3/c;->g(Landroid/content/res/ColorStateList;)I

    move-result v2

    iget-object v5, p0, Lv3/c;->M:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v5}, Lv3/c;->g(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 39
    invoke-static {v2, v5, p1}, Lv3/c;->a(IIF)I

    move-result p1

    .line 40
    invoke-virtual {v0, v1, v4, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 41
    iget-object p1, p0, Lv3/c;->a:Landroid/view/View;

    .line 42
    invoke-static {p1}, Lm0/v$d;->k(Landroid/view/View;)V

    return-void
.end method

.method public final d(FZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lv3/c;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv3/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lv3/c;->k:F

    sub-float v2, p1, v2

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 6
    iget p1, p0, Lv3/c;->k:F

    .line 7
    iput v6, p0, Lv3/c;->B:F

    .line 8
    iget-object p2, p0, Lv3/c;->v:Landroid/graphics/Typeface;

    iget-object v1, p0, Lv3/c;->t:Landroid/graphics/Typeface;

    if-eq p2, v1, :cond_2

    .line 9
    iput-object v1, p0, Lv3/c;->v:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    goto :goto_6

    :cond_2
    const/4 v7, 0x0

    goto :goto_6

    .line 10
    :cond_3
    iget v2, p0, Lv3/c;->j:F

    .line 11
    iget-object v7, p0, Lv3/c;->v:Landroid/graphics/Typeface;

    iget-object v8, p0, Lv3/c;->u:Landroid/graphics/Typeface;

    if-eq v7, v8, :cond_4

    .line 12
    iput-object v8, p0, Lv3/c;->v:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    sub-float v8, p1, v2

    .line 13
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 14
    iput v6, p0, Lv3/c;->B:F

    goto :goto_3

    .line 15
    :cond_6
    iget v3, p0, Lv3/c;->j:F

    div-float/2addr p1, v3

    iput p1, p0, Lv3/c;->B:F

    .line 16
    :goto_3
    iget p1, p0, Lv3/c;->k:F

    iget v3, p0, Lv3/c;->j:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float p2, v3, v0

    if-lez p2, :cond_8

    div-float/2addr v0, p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v1

    :goto_5
    move p1, v2

    :goto_6
    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_b

    .line 18
    iget v1, p0, Lv3/c;->C:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lv3/c;->E:Z

    if-nez v1, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v7, 0x1

    .line 19
    :goto_8
    iput p1, p0, Lv3/c;->C:F

    .line 20
    iput-boolean v4, p0, Lv3/c;->E:Z

    .line 21
    :cond_b
    iget-object p1, p0, Lv3/c;->y:Ljava/lang/CharSequence;

    if-eqz p1, :cond_c

    if-eqz v7, :cond_e

    .line 22
    :cond_c
    iget-object p1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    iget v1, p0, Lv3/c;->C:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 23
    iget-object p1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    iget-object v1, p0, Lv3/c;->v:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    iget-object p1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    iget v1, p0, Lv3/c;->B:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 25
    iget-object p1, p0, Lv3/c;->x:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lv3/c;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lv3/c;->z:Z

    .line 26
    :try_start_0
    iget-object v1, p0, Lv3/c;->x:Ljava/lang/CharSequence;

    iget-object v2, p0, Lv3/c;->F:Landroid/text/TextPaint;

    float-to-int v0, v0

    .line 27
    new-instance v3, Lv3/m;

    invoke-direct {v3, v1, v2, v0}, Lv3/m;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 28
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 29
    iput-object v0, v3, Lv3/m;->l:Landroid/text/TextUtils$TruncateAt;

    .line 30
    iput-boolean p1, v3, Lv3/m;->k:Z

    .line 31
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 32
    iput-object p1, v3, Lv3/m;->e:Landroid/text/Layout$Alignment;

    .line 33
    iput-boolean v4, v3, Lv3/m;->j:Z

    .line 34
    iput v5, v3, Lv3/m;->f:I

    .line 35
    iput p2, v3, Lv3/m;->g:F

    .line 36
    iput v6, v3, Lv3/m;->h:F

    .line 37
    iget p1, p0, Lv3/c;->T:I

    .line 38
    iput p1, v3, Lv3/m;->i:I

    .line 39
    invoke-virtual {v3}, Lv3/m;->a()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lv3/m$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    :goto_a
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lv3/c;->O:Landroid/text/StaticLayout;

    .line 43
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lv3/c;->y:Ljava/lang/CharSequence;

    :cond_e
    return-void
.end method

.method public e()F
    .locals 2

    .line 1
    iget-object v0, p0, Lv3/c;->G:Landroid/text/TextPaint;

    .line 2
    iget v1, p0, Lv3/c;->k:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v1, p0, Lv3/c;->t:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget v1, p0, Lv3/c;->N:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 5
    iget-object v0, p0, Lv3/c;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lv3/c;->g(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final g(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lv3/c;->D:[I

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/c;->f:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lv3/c;->f:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lv3/c;->e:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lv3/c;->e:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lv3/c;->b:Z

    return-void
.end method

.method public j()V
    .locals 12

    .line 1
    iget-object v0, p0, Lv3/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lv3/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lv3/c;->C:F

    .line 3
    iget v1, p0, Lv3/c;->k:F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lv3/c;->d(FZ)V

    .line 4
    iget-object v1, p0, Lv3/c;->y:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lv3/c;->O:Landroid/text/StaticLayout;

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, p0, Lv3/c;->F:Landroid/text/TextPaint;

    .line 6
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lv3/c;->S:Ljava/lang/CharSequence;

    .line 7
    :cond_1
    iget-object v1, p0, Lv3/c;->S:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Landroid/text/TextPaint;

    iget-object v4, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-direct {v1, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 9
    iget v4, p0, Lv3/c;->N:F

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 10
    iget-object v4, p0, Lv3/c;->S:Ljava/lang/CharSequence;

    .line 11
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    iput v1, p0, Lv3/c;->P:F

    goto :goto_0

    .line 12
    :cond_2
    iput v3, p0, Lv3/c;->P:F

    .line 13
    :goto_0
    iget v1, p0, Lv3/c;->i:I

    iget-boolean v4, p0, Lv3/c;->z:Z

    .line 14
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v4, v1, 0x70

    const/16 v5, 0x50

    const/16 v6, 0x30

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    .line 15
    iget-object v4, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget-object v8, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v4, v8

    div-float/2addr v4, v7

    .line 16
    iget-object v8, p0, Lv3/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    iput v8, p0, Lv3/c;->o:F

    goto :goto_1

    .line 17
    :cond_3
    iget-object v4, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v8, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    add-float/2addr v8, v4

    iput v8, p0, Lv3/c;->o:F

    goto :goto_1

    .line 18
    :cond_4
    iget-object v4, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iput v4, p0, Lv3/c;->o:F

    :goto_1
    const v4, 0x800007

    and-int/2addr v1, v4

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eq v1, v9, :cond_6

    if-eq v1, v8, :cond_5

    .line 19
    iget-object v1, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lv3/c;->q:F

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Lv3/c;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v10, p0, Lv3/c;->P:F

    sub-float/2addr v1, v10

    iput v1, p0, Lv3/c;->q:F

    goto :goto_2

    .line 21
    :cond_6
    iget-object v1, p0, Lv3/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v10, p0, Lv3/c;->P:F

    div-float/2addr v10, v7

    sub-float/2addr v1, v10

    iput v1, p0, Lv3/c;->q:F

    .line 22
    :goto_2
    iget v1, p0, Lv3/c;->j:F

    invoke-virtual {p0, v1, v2}, Lv3/c;->d(FZ)V

    .line 23
    iget-object v1, p0, Lv3/c;->O:Landroid/text/StaticLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 24
    :goto_3
    iget-object v10, p0, Lv3/c;->O:Landroid/text/StaticLayout;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    .line 25
    :cond_8
    iget-object v10, p0, Lv3/c;->y:Ljava/lang/CharSequence;

    if-eqz v10, :cond_9

    iget-object v3, p0, Lv3/c;->F:Landroid/text/TextPaint;

    .line 26
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v3, v10, v2, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 27
    :cond_9
    iget-object v10, p0, Lv3/c;->O:Landroid/text/StaticLayout;

    if-eqz v10, :cond_a

    .line 28
    invoke-virtual {v10, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    .line 29
    :cond_a
    iget v2, p0, Lv3/c;->h:I

    iget-boolean v10, p0, Lv3/c;->z:Z

    .line 30
    invoke-static {v2, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v10, v2, 0x70

    if-eq v10, v6, :cond_c

    if-eq v10, v5, :cond_b

    div-float/2addr v1, v7

    .line 31
    iget-object v5, p0, Lv3/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iput v5, p0, Lv3/c;->n:F

    goto :goto_4

    .line 32
    :cond_b
    iget-object v5, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iget-object v1, p0, Lv3/c;->F:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v1, v5

    iput v1, p0, Lv3/c;->n:F

    goto :goto_4

    .line 33
    :cond_c
    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lv3/c;->n:F

    :goto_4
    and-int v1, v2, v4

    if-eq v1, v9, :cond_e

    if-eq v1, v8, :cond_d

    .line 34
    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lv3/c;->p:F

    goto :goto_5

    .line 35
    :cond_d
    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, p0, Lv3/c;->p:F

    goto :goto_5

    .line 36
    :cond_e
    iget-object v1, p0, Lv3/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v7

    sub-float/2addr v1, v3

    iput v1, p0, Lv3/c;->p:F

    .line 37
    :goto_5
    iget-object v1, p0, Lv3/c;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lv3/c;->A:Landroid/graphics/Bitmap;

    .line 40
    :cond_f
    invoke-virtual {p0, v0}, Lv3/c;->o(F)V

    .line 41
    iget v0, p0, Lv3/c;->c:F

    invoke-virtual {p0, v0}, Lv3/c;->c(F)V

    :cond_10
    :goto_6
    return-void
.end method

.method public l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/c;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lv3/c;->m:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lv3/c;->j()V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget v0, p0, Lv3/c;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lv3/c;->i:I

    .line 3
    invoke-virtual {p0}, Lv3/c;->j()V

    :cond_0
    return-void
.end method

.method public n(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :cond_1
    :goto_0
    iget v0, p0, Lv3/c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 2
    iput p1, p0, Lv3/c;->c:F

    .line 3
    invoke-virtual {p0, p1}, Lv3/c;->c(F)V

    :cond_2
    return-void
.end method

.method public final o(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lv3/c;->d(FZ)V

    .line 2
    iget-object p1, p0, Lv3/c;->a:Landroid/view/View;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/v$d;->k(Landroid/view/View;)V

    return-void
.end method

.method public p(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/c;->w:Lz3/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lz3/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lv3/c;->t:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lv3/c;->t:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lv3/c;->u:Landroid/graphics/Typeface;

    if-eq v3, p1, :cond_2

    .line 6
    iput-object p1, p0, Lv3/c;->u:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Lv3/c;->j()V

    :cond_4
    return-void
.end method
