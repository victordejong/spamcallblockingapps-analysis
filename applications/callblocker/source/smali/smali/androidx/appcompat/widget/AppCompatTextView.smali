.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/core/h/t;
.implements Landroidx/core/widget/b;
.implements Landroidx/core/widget/k;


# instance fields
.field private final a:Landroidx/appcompat/widget/f;

.field private final b:Landroidx/appcompat/widget/t;

.field private final c:Landroidx/appcompat/widget/s;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroidx/core/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 95
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p1}, Landroidx/appcompat/widget/am;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroidx/appcompat/widget/f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Landroidx/appcompat/widget/t;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/t;->a(Landroid/util/AttributeSet;I)V

    .line 106
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 108
    new-instance v0, Landroidx/appcompat/widget/s;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/s;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/s;

    .line 109
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 484
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    .line 486
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/c;

    invoke-static {p0, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroidx/core/f/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 197
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 200
    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .prologue
    .line 365
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    .line 372
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->h()I

    move-result v0

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .prologue
    .line 346
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    .line 353
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->g()I

    move-result v0

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .prologue
    .line 327
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->f()I

    move-result v0

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .prologue
    .line 384
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->i()[I

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    sget-boolean v2, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v2, :cond_1

    .line 307
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 315
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 307
    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->e()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    .prologue
    .line 422
    invoke-static {p0}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    .prologue
    .line 427
    invoke-static {p0}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    .line 152
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    .line 180
    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->j()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->k()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->a()V

    .line 496
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .prologue
    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/s;

    if-nez v0, :cond_1

    .line 524
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/s;

    invoke-virtual {v0}, Landroidx/appcompat/widget/s;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextMetricsParamsCompat()Landroidx/core/f/c$a;
    .locals 1

    .prologue
    .line 454
    invoke-static {p0}, Landroidx/core/widget/i;->e(Landroid/widget/TextView;)Landroidx/core/f/c$a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/j;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 204
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 205
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/t;->a(ZIIII)V

    .line 208
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->a()V

    .line 551
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 552
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 224
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()V

    .line 227
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/t;->a(IIII)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t;->a([II)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->a(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 561
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 571
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 610
    if-eqz p1, :cond_2

    .line 611
    invoke-static {v4, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 612
    invoke-static {v4, p2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_4

    .line 613
    invoke-static {v4, p3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 614
    invoke-static {v4, p4}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 610
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 618
    :cond_1
    return-void

    :cond_2
    move-object v3, v0

    .line 611
    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 612
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 613
    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 603
    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 585
    if-eqz p1, :cond_2

    .line 586
    invoke-static {v4, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 587
    invoke-static {v4, p2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-eqz p3, :cond_4

    .line 588
    invoke-static {v4, p3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz p4, :cond_0

    .line 589
    invoke-static {v4, p4}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    :cond_0
    invoke-virtual {p0, v3, v2, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 593
    :cond_1
    return-void

    :cond_2
    move-object v3, v0

    .line 586
    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 587
    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 588
    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    .line 580
    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 441
    .line 442
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 441
    invoke-super {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 443
    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    .prologue
    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 403
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    .prologue
    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 413
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public setLineHeight(I)V
    .locals 0

    .prologue
    .line 432
    invoke-static {p0, p1}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;I)V

    .line 433
    return-void
.end method

.method public setPrecomputedText(Landroidx/core/f/c;)V
    .locals 0

    .prologue
    .line 478
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroidx/core/f/c;)V

    .line 479
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->a(Landroid/content/res/ColorStateList;)V

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 659
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 698
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()V

    .line 699
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 186
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;I)V

    .line 189
    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .prologue
    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/s;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->c:Landroidx/appcompat/widget/s;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/s;->a(Landroid/view/textclassifier/TextClassifier;)V

    goto :goto_0
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroidx/core/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->e:Ljava/util/concurrent/Future;

    .line 543
    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestLayout()V

    .line 546
    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/core/f/c$a;)V
    .locals 0

    .prologue
    .line 465
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroidx/core/f/c$a;)V

    .line 466
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->d:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->b:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/t;->a(IF)V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 705
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 708
    :cond_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 709
    return-void
.end method
