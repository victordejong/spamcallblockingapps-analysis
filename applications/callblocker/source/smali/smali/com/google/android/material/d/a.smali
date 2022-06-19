.class public Lcom/google/android/material/d/a;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/d/a$a;
    }
.end annotation


# static fields
.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:I


# instance fields
.field private final i:Lcom/google/android/material/d/b;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/material/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/d/a;->e:[I

    .line 91
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/d/a;->f:[I

    .line 92
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/a$b;->state_dragged:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/d/a;->g:[I

    .line 94
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/d/a;->h:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/d/a;)F
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->s()V

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public A_()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/d/b;->a(IIII)V

    .line 248
    return-void
.end method

.method b(IIII)V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->a(IIII)V

    .line 252
    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getCardViewRadius()F
    .locals 1

    .prologue
    .line 221
    invoke-static {p0}, Lcom/google/android/material/d/a;->a(Lcom/google/android/material/d/a;)F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->p()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->j()F

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->i()F

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->q()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->t()Lcom/google/android/material/q/k;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->b()I

    move-result v0

    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->d()I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->k:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    .line 300
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->e()Lcom/google/android/material/q/g;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 301
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 415
    add-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroidx/cardview/widget/CardView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->A_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    sget-object v1, Lcom/google/android/material/d/a;->e:[I

    invoke-static {v0, v1}, Lcom/google/android/material/d/a;->mergeDrawableStates([I[I)[I

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    sget-object v1, Lcom/google/android/material/d/a;->f:[I

    invoke-static {v0, v1}, Lcom/google/android/material/d/a;->mergeDrawableStates([I[I)[I

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->z_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    sget-object v1, Lcom/google/android/material/d/a;->g:[I

    invoke-static {v0, v1}, Lcom/google/android/material/d/a;->mergeDrawableStates([I[I)[I

    .line 428
    :cond_2
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 153
    const-class v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 155
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 144
    const-class v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->A_()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 160
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {p0}, Lcom/google/android/material/d/a;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/d/a;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/d/b;->a(II)V

    .line 161
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/google/android/material/d/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->j:Z

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-string/jumbo v0, "MaterialCardView"

    const-string/jumbo v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/b;->a(Z)V

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_1
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/b;->b(Landroid/content/res/ColorStateList;)V

    .line 277
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->b(Landroid/content/res/ColorStateList;)V

    .line 282
    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 306
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->k()V

    .line 307
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->b(Z)V

    .line 399
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->k:Z

    if-eq v0, p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->toggle()V

    .line 361
    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 506
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {p0}, Lcom/google/android/material/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 496
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->d(Landroid/content/res/ColorStateList;)V

    .line 528
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->h()V

    .line 294
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->l:Z

    if-eq v0, p1, :cond_0

    .line 370
    iput-boolean p1, p0, Lcom/google/android/material/d/a;->l:Z

    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->refreshDrawableState()V

    .line 372
    invoke-direct {p0}, Lcom/google/android/material/d/a;->c()V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->invalidate()V

    .line 375
    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 312
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->l()V

    .line 313
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/d/a$a;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/material/d/a;->m:Lcom/google/android/material/d/a$a;

    .line 438
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 325
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->l()V

    .line 326
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->n()V

    .line 327
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->b(F)V

    .line 232
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 212
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->a(F)V

    .line 213
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->c(Landroid/content/res/ColorStateList;)V

    .line 450
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/google/android/material/d/b;->c(Landroid/content/res/ColorStateList;)V

    .line 463
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->a(Lcom/google/android/material/q/k;)V

    .line 533
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/d/b;->a(Landroid/content/res/ColorStateList;)V

    .line 170
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->a(Landroid/content/res/ColorStateList;)V

    .line 179
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/d/b;->a(I)V

    .line 201
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 318
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->l()V

    .line 319
    iget-object v0, p0, Lcom/google/android/material/d/a;->i:Lcom/google/android/material/d/b;

    invoke-virtual {v0}, Lcom/google/android/material/d/b;->n()V

    .line 320
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->A_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/d/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/d/a;->k:Z

    .line 405
    invoke-virtual {p0}, Lcom/google/android/material/d/a;->refreshDrawableState()V

    .line 406
    invoke-direct {p0}, Lcom/google/android/material/d/a;->c()V

    .line 407
    iget-object v0, p0, Lcom/google/android/material/d/a;->m:Lcom/google/android/material/d/a$a;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/material/d/a;->m:Lcom/google/android/material/d/a$a;

    iget-boolean v1, p0, Lcom/google/android/material/d/a;->k:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/d/a$a;->a(Lcom/google/android/material/d/a;Z)V

    .line 411
    :cond_0
    return-void

    .line 404
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z_()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/android/material/d/a;->l:Z

    return v0
.end method
