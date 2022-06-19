.class public final Lcom/google/android/material/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:F

.field public n:F

.field o:Z

.field p:Landroid/graphics/Typeface;

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/google/android/material/h/d;->o:Z

    .line 81
    sget-object v1, Lcom/google/android/material/a$l;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->n:F

    .line 84
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_textColor:I

    .line 85
    invoke-static {p1, v1, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    .line 87
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_textColorHint:I

    .line 88
    invoke-static {p1, v1, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/h/d;->b:Landroid/content/res/ColorStateList;

    .line 90
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_textColorLink:I

    .line 91
    invoke-static {p1, v1, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/h/d;->c:Landroid/content/res/ColorStateList;

    .line 93
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->f:I

    .line 94
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->g:I

    .line 95
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_fontFamily:I

    sget v4, Lcom/google/android/material/a$l;->TextAppearance_android_fontFamily:I

    .line 1200
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 100
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/h/d;->q:I

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/h/d;->e:Ljava/lang/String;

    .line 102
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/h/d;->h:Z

    .line 103
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_shadowColor:I

    .line 104
    invoke-static {p1, v1, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    .line 106
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->i:F

    .line 107
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->j:F

    .line 108
    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/h/d;->k:F

    .line 110
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 113
    sget-object v0, Lcom/google/android/material/a$l;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 114
    sget p2, Lcom/google/android/material/a$l;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/h/d;->l:Z

    .line 115
    sget p2, Lcom/google/android/material/a$l;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/h/d;->m:F

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 118
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/h/d;->l:Z

    .line 119
    iput v3, p0, Lcom/google/android/material/h/d;->m:F

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/google/android/material/h/d;->o:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :try_start_0
    iget v0, p0, Lcom/google/android/material/h/d;->q:I

    invoke-static {p1, v0}, Landroidx/core/content/res/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    .line 140
    iget v0, p0, Lcom/google/android/material/h/d;->f:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error loading font "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/h/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :catch_1
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/h/d;->b()V

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/google/android/material/h/d;->o:Z

    .line 153
    iget-object p1, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/h/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    iget v1, p0, Lcom/google/android/material/h/d;->f:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 274
    iget v0, p0, Lcom/google/android/material/h/d;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 285
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    goto :goto_0

    .line 282
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    goto :goto_0

    .line 279
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    goto :goto_0

    .line 276
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/h/d;->f:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/h/d;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/h/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 236
    new-instance v0, Lcom/google/android/material/h/d$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/h/d$2;-><init>(Lcom/google/android/material/h/d;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;Lcom/google/android/material/h/f;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/google/android/material/h/d;->b()V

    .line 263
    iget-object v0, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V
    .locals 4

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/h/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V

    .line 304
    iget-object p1, p0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, p0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    .line 306
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 304
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 308
    iget p1, p0, Lcom/google/android/material/h/d;->k:F

    iget p3, p0, Lcom/google/android/material/h/d;->i:F

    iget v0, p0, Lcom/google/android/material/h/d;->j:F

    iget-object v1, p0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, p0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    .line 313
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 308
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/material/h/f;)V
    .locals 3

    .line 2037
    sget-boolean v0, Lcom/google/android/material/h/e;->a:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/h/d;->b()V

    .line 178
    :goto_0
    iget v0, p0, Lcom/google/android/material/h/d;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 180
    iput-boolean v1, p0, Lcom/google/android/material/h/d;->o:Z

    .line 183
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/h/d;->o:Z

    if-eqz v2, :cond_2

    .line 184
    iget-object p1, p0, Lcom/google/android/material/h/d;->p:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/h/f;->a(Landroid/graphics/Typeface;Z)V

    return-void

    .line 190
    :cond_2
    :try_start_0
    new-instance v2, Lcom/google/android/material/h/d$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/h/d$1;-><init>(Lcom/google/android/material/h/d;Lcom/google/android/material/h/f;)V

    invoke-static {p1, v0, v2}, Landroidx/core/content/res/f;->a(Landroid/content/Context;ILandroidx/core/content/res/f$a;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 213
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error loading font "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/material/h/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iput-boolean v1, p0, Lcom/google/android/material/h/d;->o:Z

    const/4 p1, -0x3

    .line 215
    invoke-virtual {p2, p1}, Lcom/google/android/material/h/f;->a(I)V

    return-void

    .line 210
    :catch_1
    iput-boolean v1, p0, Lcom/google/android/material/h/d;->o:Z

    .line 211
    invoke-virtual {p2, v1}, Lcom/google/android/material/h/f;->a(I)V

    return-void
.end method

.method public final a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 341
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 343
    iget v0, p0, Lcom/google/android/material/h/d;->f:I

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

    .line 344
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 345
    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 347
    iget p2, p0, Lcom/google/android/material/h/d;->n:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 349
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    .line 350
    iget-boolean p2, p0, Lcom/google/android/material/h/d;->l:Z

    if-eqz p2, :cond_2

    .line 351
    iget p2, p0, Lcom/google/android/material/h/d;->m:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V
    .locals 1

    .line 3037
    sget-boolean v0, Lcom/google/android/material/h/e;->a:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/h/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    return-void

    .line 330
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/h/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V

    return-void
.end method
