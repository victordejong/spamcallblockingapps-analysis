.class public Lcom/google/android/material/n/d;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# instance fields
.field public final a:F

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Landroid/content/res/ColorStateList;

.field public final j:F

.field public final k:F

.field public final l:F

.field private final m:I

.field private n:Z

.field private o:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v4, p0, Lcom/google/android/material/n/d;->n:Z

    .line 75
    sget-object v0, Lcom/google/android/material/a$l;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->a:F

    .line 78
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_textColor:I

    .line 79
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    .line 81
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_textColorHint:I

    .line 82
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/n/d;->c:Landroid/content/res/ColorStateList;

    .line 84
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_textColorLink:I

    .line 85
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/n/d;->d:Landroid/content/res/ColorStateList;

    .line 87
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_textStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->e:I

    .line 88
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_typeface:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->f:I

    .line 89
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_fontFamily:I

    sget v2, Lcom/google/android/material/a$l;->TextAppearance_android_fontFamily:I

    .line 90
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 94
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/n/d;->m:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/n/d;->g:Ljava/lang/String;

    .line 96
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/n/d;->h:Z

    .line 97
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_shadowColor:I

    .line 98
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    .line 100
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->j:F

    .line 101
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->k:F

    .line 102
    sget v1, Lcom/google/android/material/a$l;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/n/d;->l:F

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/n/d;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/n/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/n/d;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/n/d;->n:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/n/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/material/n/d;->g:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/n/d;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 258
    iget v0, p0, Lcom/google/android/material/n/d;->f:I

    packed-switch v0, :pswitch_data_0

    .line 269
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/n/d;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    .line 274
    :cond_1
    return-void

    .line 260
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    goto :goto_0

    .line 263
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    goto :goto_0

    .line 266
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/android/material/n/d;->b()V

    .line 247
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/n/d;->n:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    .line 137
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :try_start_0
    iget v0, p0, Lcom/google/android/material/n/d;->m:I

    invoke-static {p1, v0}, Landroidx/core/a/a/f;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    .line 123
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/n/d;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/n/d;->b()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/n/d;->n:Z

    .line 137
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "TextAppearance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/n/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/material/n/d;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/n/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 220
    new-instance v0, Lcom/google/android/material/n/d$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/n/d$2;-><init>(Lcom/google/android/material/n/d;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/n/d;->a(Landroid/content/Context;Lcom/google/android/material/n/f;)V

    .line 235
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/material/n/f;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-static {}, Lcom/google/android/material/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/material/n/d;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 162
    :goto_0
    iget v0, p0, Lcom/google/android/material/n/d;->m:I

    if-nez v0, :cond_0

    .line 164
    iput-boolean v4, p0, Lcom/google/android/material/n/d;->n:Z

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/n/d;->n:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/google/android/material/n/d;->o:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0, v4}, Lcom/google/android/material/n/f;->a(Landroid/graphics/Typeface;Z)V

    .line 201
    :goto_1
    return-void

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/n/d;->b()V

    goto :goto_0

    .line 174
    :cond_2
    :try_start_0
    iget v0, p0, Lcom/google/android/material/n/d;->m:I

    new-instance v1, Lcom/google/android/material/n/d$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/material/n/d$1;-><init>(Lcom/google/android/material/n/d;Lcom/google/android/material/n/f;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/core/a/a/f;->a(Landroid/content/Context;ILandroidx/core/a/a/f$a;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    iput-boolean v4, p0, Lcom/google/android/material/n/d;->n:Z

    .line 195
    invoke-virtual {p2, v4}, Lcom/google/android/material/n/f;->a(I)V

    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string/jumbo v1, "TextAppearance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/n/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    iput-boolean v4, p0, Lcom/google/android/material/n/d;->n:Z

    .line 199
    const/4 v0, -0x3

    invoke-virtual {p2, v0}, Lcom/google/android/material/n/f;->a(I)V

    goto :goto_1
.end method

.method public a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 327
    iget v0, p0, Lcom/google/android/material/n/d;->e:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    .line 328
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 329
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    const/high16 v0, -0x41800000    # -0.25f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 331
    iget v0, p0, Lcom/google/android/material/n/d;->a:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 332
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V
    .locals 6

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/n/d;->c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    iget-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    .line 290
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 288
    :goto_0
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    iget v1, p0, Lcom/google/android/material/n/d;->l:F

    iget v2, p0, Lcom/google/android/material/n/d;->j:F

    iget v3, p0, Lcom/google/android/material/n/d;->k:F

    iget-object v0, p0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    iget-object v4, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v5, p0, Lcom/google/android/material/n/d;->i:Landroid/content/res/ColorStateList;

    .line 297
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 292
    :goto_1
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 299
    return-void

    .line 290
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/google/android/material/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/material/n/d;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/n/d;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/n/d;->a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    goto :goto_0
.end method
