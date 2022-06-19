.class public Lcom/google/android/material/bottomnavigation/a;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# static fields
.field private static final a:[I


# instance fields
.field private final b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:Z

.field private h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private k:I

.field private l:Landroidx/appcompat/view/menu/i;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lcom/google/android/material/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/bottomnavigation/a;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomnavigation/a;->k:I

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$h;->design_bottom_navigation_item:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    sget v1, Lcom/google/android/material/a$e;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/a;->setBackgroundResource(I)V

    .line 94
    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    .line 96
    sget v0, Lcom/google/android/material/a$f;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/google/android/material/a$f;->smallLabel:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/google/android/material/a$f;->largeLabel:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomnavigation/a;->setFocusable(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/a;->a(FF)V

    .line 107
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/material/bottomnavigation/a$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomnavigation/a$1;-><init>(Lcom/google/android/material/bottomnavigation/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 393
    sub-float v0, p1, p2

    iput v0, p0, Lcom/google/android/material/bottomnavigation/a;->c:F

    .line 394
    mul-float v0, v1, p2

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/bottomnavigation/a;->d:F

    .line 395
    mul-float v0, v1, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/material/bottomnavigation/a;->e:F

    .line 396
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 435
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;FFI)V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 299
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 300
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 293
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/a;->setClipChildren(Z)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/a;->setClipToPadding(Z)V

    .line 448
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 448
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->a(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 454
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/a;->setClipChildren(Z)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/a;->setClipToPadding(Z)V

    .line 462
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 462
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->b(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 465
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 471
    sget-boolean v1, Lcom/google/android/material/b/b;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 474
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;I)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setCheckable(Z)V

    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setChecked(Z)V

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setEnabled(Z)V

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setId(I)V

    .line 139
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    :goto_0
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setVisibility(I)V

    .line 148
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->c(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method getBadge()Lcom/google/android/material/b/a;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    return-object v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/material/bottomnavigation/a;->k:I

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 320
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    sget-object v1, Lcom/google/android/material/bottomnavigation/a;->a:[I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/a;->mergeDrawableStates([I[I)[I

    .line 324
    :cond_0
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    invoke-virtual {v0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    .line 286
    invoke-virtual {v1}, Lcom/google/android/material/b/a;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    :cond_1
    return-void
.end method

.method setBadge(Lcom/google/android/material/b/a;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a;->p:Lcom/google/android/material/b/a;

    .line 413
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->b(Landroid/view/View;)V

    .line 416
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->refreshDrawableState()V

    .line 202
    return-void
.end method

.method public setChecked(Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v6, 0x31

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 206
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 208
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 209
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 211
    iget v0, p0, Lcom/google/android/material/bottomnavigation/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->refreshDrawableState()V

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->setSelected(Z)V

    .line 275
    return-void

    .line 213
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/a;->g:Z

    if-eqz v0, :cond_1

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 216
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 219
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v7, v7, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto :goto_1

    .line 223
    :cond_1
    if-eqz p1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->c:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 226
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 227
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->d:F

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->d:F

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 230
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->e:F

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->e:F

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 231
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto :goto_0

    .line 237
    :pswitch_1
    if-eqz p1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 239
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 242
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v7, v7, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto :goto_2

    .line 248
    :pswitch_2
    if-eqz p1, :cond_4

    .line 249
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->c:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 251
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->d:F

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->d:F

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 255
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->e:F

    iget v2, p0, Lcom/google/android/material/bottomnavigation/a;->e:F

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v3, v5}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/a;->b:I

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomnavigation/a;->a(Landroid/view/View;II)V

    .line 262
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 310
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroidx/core/h/s;->a(Landroid/content/Context;I)Landroidx/core/h/s;

    move-result-object v0

    .line 311
    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/s;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/s;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->n:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a;->n:Landroid/graphics/drawable/Drawable;

    .line 338
    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 340
    if-nez v0, :cond_2

    .line 341
    :goto_1
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 342
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a;->o:Landroid/graphics/drawable/Drawable;

    .line 343
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1
.end method

.method public setIconSize(I)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 370
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 371
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 372
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/a;->m:Landroid/content/res/ColorStateList;

    .line 362
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 366
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    .prologue
    .line 399
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 401
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 402
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 405
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 408
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/google/android/material/bottomnavigation/a;->k:I

    .line 152
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/material/bottomnavigation/a;->f:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lcom/google/android/material/bottomnavigation/a;->f:I

    .line 173
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 174
    :goto_0
    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setChecked(Z)V

    .line 178
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShifting(Z)V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/a;->g:Z

    if-eq v0, p1, :cond_0

    .line 160
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/a;->g:Z

    .line 162
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/a;->setChecked(Z)V

    .line 167
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextAppearanceActive(I)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/a;->a(FF)V

    .line 383
    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 377
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomnavigation/a;->a(FF)V

    .line 378
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 390
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 197
    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/a;->l:Landroidx/appcompat/view/menu/i;

    .line 195
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method
