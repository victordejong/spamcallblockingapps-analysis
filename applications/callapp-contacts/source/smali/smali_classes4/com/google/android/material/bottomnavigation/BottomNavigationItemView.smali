.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# static fields
.field private static final d:[I


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroidx/appcompat/view/menu/i;

.field c:Lcom/google/android/material/badge/BadgeDrawable;

.field private final e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:Z

.field private final k:Landroid/view/ViewGroup;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 60
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n:I

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/a$h;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    sget p1, Lcom/google/android/material/a$e;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 99
    sget p1, Lcom/google/android/material/a$d;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    .line 101
    sget p1, Lcom/google/android/material/a$f;->icon:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    .line 102
    sget p1, Lcom/google/android/material/a$f;->labelGroup:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    .line 103
    sget p2, Lcom/google/android/material/a$f;->smallLabel:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    .line 104
    sget p3, Lcom/google/android/material/a$f;->largeLabel:I

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    .line 108
    sget v1, Lcom/google/android/material/a$f;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 112
    invoke-static {p2, p1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 113
    invoke-static {p3, p1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setFocusable(Z)V

    .line 115
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(FF)V

    .line 118
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 119
    new-instance p2, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 531
    sget-boolean p1, Lcom/google/android/material/badge/a;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 454
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 455
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->g:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 456
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->h:F

    return-void
.end method

.method private static a(Landroid/view/View;FFI)V
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 355
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 356
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 3

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 360
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private static a(Landroid/view/View;II)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 348
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;Landroid/view/View;)V
    .locals 1

    .line 2493
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2497
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 2496
    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/a;->b(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private d()I
    .locals 6

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 334
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 337
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 338
    instance-of v5, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public final a(Landroidx/appcompat/view/menu/i;)V
    .locals 1

    .line 142
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    .line 144
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 145
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    .line 146
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setId(I)V

    .line 149
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    :goto_0
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ad;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setVisibility(I)V

    return-void
.end method

.method final a(Lcom/google/android/material/badge/BadgeDrawable;)V
    .locals 2

    .line 473
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    .line 474
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1506
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipChildren(Z)V

    .line 1507
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setClipToPadding(Z)V

    .line 1509
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    .line 1510
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1509
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/a;->a(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->d:[I

    invoke-static {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->c:Lcom/google/android/material/badge/BadgeDrawable;

    .line 308
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    .line 315
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->d()I

    move-result v0

    .line 318
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 312
    invoke-static {v2, v3, v0, v3, v1}, Landroidx/core/view/a/c$c;->a(IIIIZ)Landroidx/core/view/a/c$c;

    move-result-object v0

    .line 311
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p1, v2}, Landroidx/core/view/a/c;->g(Z)V

    .line 321
    sget-object v0, Landroidx/core/view/a/c$a;->e:Landroidx/core/view/a/c$a;

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Landroidx/core/view/a/c$a;)Z

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 8

    .line 218
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 219
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 220
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 221
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 223
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->i:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/16 v4, 0x31

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 284
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/google/android/material/a$f;->mtrl_view_tag_bottom_padding:I

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    if-eqz p1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->f:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 273
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    .line 274
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->g:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 277
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->h:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    .line 278
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 255
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/google/android/material/a$f;->mtrl_view_tag_bottom_padding:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    .line 258
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 261
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 225
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->j:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 227
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 228
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/google/android/material/a$f;->mtrl_view_tag_bottom_padding:I

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 233
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/google/android/material/a$f;->mtrl_view_tag_bottom_padding:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    invoke-static {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;I)V

    if-eqz p1, :cond_8

    .line 241
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->f:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 243
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    .line 244
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->g:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    goto :goto_2

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->e:I

    invoke-static {v0, v1, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;II)V

    .line 247
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->h:F

    invoke-static {v0, v1, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    .line 248
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(Landroid/view/View;FFI)V

    .line 292
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 366
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/t;->a(Landroid/content/Context;)Landroidx/core/view/t;

    move-result-object p1

    .line 372
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/t;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 375
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/t;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->p:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 400
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 403
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->q:Landroid/graphics/drawable/Drawable;

    .line 404
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 405
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 432
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 422
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->o:Landroid/content/res/ColorStateList;

    .line 423
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 424
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 425
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 462
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 469
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->i:I

    if-eq v0, p1, :cond_1

    .line 182
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->i:I

    .line 184
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->j:Z

    if-eq v0, p1, :cond_1

    .line 171
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->j:Z

    .line 173
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;I)V

    .line 443
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;I)V

    .line 438
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->b:Landroidx/appcompat/view/menu/i;

    .line 207
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 208
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ad;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
