.class public Lz3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Z

.field public final i:F

.field public j:Landroid/content/res/ColorStateList;

.field public k:F

.field public final l:I

.field public m:Z

.field public n:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lz3/d;->m:Z

    .line 3
    sget-object v1, Lj4/w0;->G:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 5
    iput v3, p0, Lz3/d;->k:F

    const/4 v3, 0x3

    .line 6
    invoke-static {p1, v1, v3}, Lz3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 7
    iput-object v3, p0, Lz3/d;->j:Landroid/content/res/ColorStateList;

    const/4 v3, 0x4

    .line 8
    invoke-static {p1, v1, v3}, Lz3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x5

    .line 9
    invoke-static {p1, v1, v3}, Lz3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    .line 10
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lz3/d;->c:I

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lz3/d;->d:I

    const/16 v3, 0xc

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    .line 13
    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lz3/d;->l:I

    .line 14
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lz3/d;->b:Ljava/lang/String;

    const/16 v3, 0xe

    .line 15
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v3, 0x6

    .line 16
    invoke-static {p1, v1, v3}, Lz3/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lz3/d;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x7

    .line 17
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lz3/d;->e:F

    const/16 v3, 0x8

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lz3/d;->f:F

    const/16 v3, 0x9

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lz3/d;->g:F

    .line 20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    sget-object v1, Lj4/w0;->x:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lz3/d;->h:Z

    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lz3/d;->i:F

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz3/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lz3/d;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    .line 3
    :cond_0
    iget-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 4
    iget v0, p0, Lz3/d;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    .line 9
    :goto_0
    iget-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    iget v1, p0, Lz3/d;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz3/d;->m:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    iget v0, p0, Lz3/d;->l:I

    invoke-static {p1, v0}, Le0/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lz3/d;->c:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lz3/d;->n:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lz3/d;->a()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lz3/d;->m:Z

    .line 8
    iget-object p1, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/support/v4/media/a;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lz3/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lz3/d;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lz3/d;->a()V

    .line 4
    :goto_0
    iget v2, p0, Lz3/d;->l:I

    const/4 v0, 0x1

    if-nez v2, :cond_1

    .line 5
    iput-boolean v0, p0, Lz3/d;->m:Z

    .line 6
    :cond_1
    iget-boolean v1, p0, Lz3/d;->m:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/media/a;->B(Landroid/graphics/Typeface;Z)V

    return-void

    .line 8
    :cond_2
    :try_start_0
    new-instance v5, Lz3/d$a;

    invoke-direct {v5, p0, p2}, Lz3/d$a;-><init>(Lz3/d;Landroid/support/v4/media/a;)V

    const/4 v1, 0x0

    sget-object v3, Le0/f;->a:Ljava/lang/ThreadLocal;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, -0x4

    .line 10
    invoke-virtual {v5, p1, v1}, Le0/f$c;->a(ILandroid/os/Handler;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Le0/f;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILe0/f$c;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    iput-boolean v0, p0, Lz3/d;->m:Z

    const/4 p1, -0x3

    .line 13
    invoke-virtual {p2, p1}, Landroid/support/v4/media/a;->A(I)V

    goto :goto_1

    .line 14
    :catch_1
    iput-boolean v0, p0, Lz3/d;->m:Z

    .line 15
    invoke-virtual {p2, v0}, Landroid/support/v4/media/a;->A(I)V

    :goto_1
    return-void
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 8

    .line 1
    iget v1, p0, Lz3/d;->l:I

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 2
    sget-object v2, Le0/f;->a:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Le0/f;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILe0/f$c;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    move-object v0, p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public e(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/media/a;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lz3/d;->f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/media/a;)V

    .line 2
    iget-object p1, p0, Lz3/d;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 4
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    iget p1, p0, Lz3/d;->g:F

    iget p3, p0, Lz3/d;->e:F

    iget v0, p0, Lz3/d;->f:F

    iget-object v1, p0, Lz3/d;->a:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public f(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/media/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lz3/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lz3/d;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lz3/d;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lz3/d;->a()V

    .line 4
    iget-object v0, p0, Lz3/d;->n:Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p0, p2, v0}, Lz3/d;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 6
    new-instance v0, Lz3/e;

    invoke-direct {v0, p0, p2, p3}, Lz3/e;-><init>(Lz3/d;Landroid/text/TextPaint;Landroid/support/v4/media/a;)V

    invoke-virtual {p0, p1, v0}, Lz3/d;->c(Landroid/content/Context;Landroid/support/v4/media/a;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget v0, p0, Lz3/d;->c:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    not-int p2, p2

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 5
    iget p2, p0, Lz3/d;->k:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    iget-boolean p2, p0, Lz3/d;->h:Z

    if-eqz p2, :cond_2

    .line 7
    iget p2, p0, Lz3/d;->i:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    return-void
.end method
