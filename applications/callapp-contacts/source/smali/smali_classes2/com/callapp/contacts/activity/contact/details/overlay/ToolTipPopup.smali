.class public Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Landroid/animation/ObjectAnimator;

.field private q:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 32
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->b:I

    const/high16 v0, 0x41600000    # 14.0f

    .line 33
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->c:I

    const/16 v0, 0xe

    .line 34
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->d:I

    .line 35
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    .line 36
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->f:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->m:Landroid/graphics/drawable/Drawable;

    .line 47
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->TOP:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->q:Z

    .line 80
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    const-string v1, "layout_inflater"

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->setContentView(Landroid/view/View;)V

    .line 1088
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    const p2, 0x7f0a093e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->h:Landroid/view/ViewGroup;

    .line 1089
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    const p2, 0x7f0a0945

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->i:Landroid/widget/TextView;

    const p2, 0x7f12023c

    .line 1090
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    const p2, 0x7f0a00ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->j:Landroid/widget/ImageView;

    .line 1092
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    const p2, 0x7f0a00ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->k:Landroid/widget/ImageView;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0d028f

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;)Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x5dc

    const/4 v3, 0x7

    .line 357
    invoke-static {p4, v0, v1, v2, v3}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFII)V

    .line 358
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;

    invoke-direct {v0, p4, p3}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;-><init>(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)V

    if-eqz p0, :cond_0

    .line 1369
    new-instance p3, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p4, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;

    invoke-direct {p4, p3, v0, p0, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p4, v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-object p3

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;)V

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/view/View;I)V
    .locals 10

    .line 2239
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2250
    :cond_1
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2253
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2254
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2256
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 2102
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2104
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v4, v2

    aget v7, v4, v3

    aget v8, v4, v2

    .line 2105
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v4, v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2107
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 2108
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2109
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2111
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v6

    if-le v1, v6, :cond_2

    .line 2114
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    .line 2117
    :cond_2
    sget v7, Lcom/callapp/contacts/manager/popup/DialogPopup;->MAX_ALLOWED_DIALOG_WIDTH_PX:I

    if-le v1, v7, :cond_3

    .line 2119
    sget v1, Lcom/callapp/contacts/manager/popup/DialogPopup;->MAX_ALLOWED_DIALOG_WIDTH_PX:I

    .line 2123
    :cond_3
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->i:Landroid/widget/TextView;

    iget v8, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    invoke-static {v7, v8}, Lcom/callapp/contacts/util/ViewUtils;->h(Landroid/view/View;I)V

    .line 2125
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v7

    .line 2126
    iget v8, v5, Landroid/graphics/Rect;->top:I

    div-int/2addr v7, v0

    if-ge v8, v7, :cond_4

    .line 2128
    sget-object v7, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->BOTTOM:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    iput-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    .line 2132
    :cond_4
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    .line 3220
    sget-object v8, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$5;->a:[I

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v3, :cond_5

    .line 3228
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->j:Landroid/widget/ImageView;

    .line 3229
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->k:Landroid/widget/ImageView;

    goto :goto_2

    .line 3222
    :cond_5
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->k:Landroid/widget/ImageView;

    .line 3223
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->j:Landroid/widget/ImageView;

    .line 3233
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x4

    .line 3234
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    invoke-direct {p0, v7}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->setTextViewPadding(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;)V

    .line 2136
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 2137
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 2138
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2139
    div-int/lit8 v8, v1, 0x2

    add-int v9, v5, v8

    if-gt v9, v6, :cond_6

    sub-int v8, v5, v8

    if-ltz v8, :cond_6

    sub-int v5, v1, v7

    .line 2141
    div-int/2addr v5, v0

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 2142
    :cond_6
    div-int/lit8 v8, v6, 0x2

    if-le v5, v8, :cond_7

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    .line 2144
    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    sub-int/2addr v5, v6

    div-int/2addr v7, v0

    sub-int/2addr v5, v7

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 2147
    :cond_7
    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->e:I

    sub-int/2addr v5, v6

    div-int/2addr v7, v0

    sub-int/2addr v5, v7

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2152
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/2addr v3, v0

    .line 2154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->n:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->TOP:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;

    if-ne v0, v1, :cond_8

    .line 2155
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    sub-int/2addr p2, v4

    goto :goto_4

    .line 2157
    :cond_8
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->f:I

    neg-int v0, v0

    sub-int p2, v0, p2

    .line 2161
    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2162
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v3, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 2163
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x2bc

    invoke-static {p1, p2, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_9

    .line 2165
    new-instance p2, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2186
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 2192
    :goto_5
    const-class p1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 319
    const-class v1, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeToolTipFromWindow() Activity is destroyed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->b()V

    return-void
.end method

.method private setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private setTextViewPadding(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;)V
    .locals 3

    .line 200
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$5;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 208
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->c:I

    .line 209
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->b:I

    goto :goto_0

    .line 202
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->b:I

    .line 203
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->c:I

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a:I

    invoke-virtual {v1, v2, p1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->b()V

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->p:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->o:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a()V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->q:Z

    return v0
.end method

.method public isTooltipShowing()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelled(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->q:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 262
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->l:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
