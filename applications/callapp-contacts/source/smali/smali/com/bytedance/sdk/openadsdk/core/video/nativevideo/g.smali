.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;
.super Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
.source "SourceFile"


# instance fields
.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/SeekBar;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/ImageView;

.field private final Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

.field private Z:Z

.field private aA:Z

.field private aB:Z

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private final ag:Landroid/graphics/Rect;

.field private ah:Landroid/content/res/ColorStateList;

.field private ai:F

.field private final aj:Landroid/graphics/Rect;

.field private ak:I

.field private al:Z

.field private am:I

.field private an:I

.field private ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

.field private ap:Z

.field private final aq:Landroid/view/View$OnTouchListener;

.field private ar:F

.field private as:Landroid/content/res/ColorStateList;

.field private at:F

.field private final au:Landroid/graphics/Rect;

.field private av:F

.field private aw:Landroid/content/res/ColorStateList;

.field private ax:F

.field private final ay:Landroid/graphics/Rect;

.field private final az:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            "Z)V"
        }
    .end annotation

    .line 99
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aa:Z

    .line 75
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    .line 76
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    .line 77
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    .line 78
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    .line 80
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aj:Landroid/graphics/Rect;

    .line 88
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    .line 93
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    .line 94
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 260
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ap:Z

    .line 262
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aq:Landroid/view/View$OnTouchListener;

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    .line 661
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(Z)V

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    .line 103
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    .line 104
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 105
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Z)V

    .line 106
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 107
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    .line 108
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    if-nez p4, :cond_0

    .line 109
    const-class p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    .line 110
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 111
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/16 p2, 0x8

    .line 112
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 113
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a()V

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ap:Z

    return p1
.end method

.method private e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y()V

    return-void

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z()V

    return-void
.end method

.method private y()V
    .locals 15

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const-string v3, "tt_video_shaoow_color_fullscreen"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "tt_ssxinzi15"

    const v7, 0x3f59999a    # 0.85f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ar:F

    .line 669
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 670
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->at:F

    .line 676
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 677
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v11

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v12

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v13, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v4, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 678
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 679
    instance-of v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_1

    .line 680
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 681
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v14, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 682
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 683
    invoke-static {v10, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    iget-object v14, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 682
    invoke-static {v1, v11, v12, v13, v14}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 689
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->av:F

    .line 690
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ax:F

    .line 697
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 698
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v5

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v8

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v4, v5, v8, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 699
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 700
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 701
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 702
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {v10, v9, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v4, v5, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 709
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 710
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 711
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    .line 712
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 713
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 715
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 714
    invoke-static {v1, v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 721
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 722
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_shrink_fullscreen"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 726
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 728
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ai:F

    .line 731
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 732
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 733
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    .line 734
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 735
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aj:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 736
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 741
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 742
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 743
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    const/high16 v2, 0x42440000    # 49.0f

    .line 744
    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 745
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_shadow_fullscreen_top"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 749
    :cond_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->al:Z

    invoke-virtual {p0, v0, v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(ZZ)V

    return-void
.end method

.method private z()V
    .locals 9

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    const-string v1, "tt_video_shadow_color"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 758
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ar:F

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 761
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->at:F

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v4, v4, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v5, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 770
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->av:F

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 772
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ax:F

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v4, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 780
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 784
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 785
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_enlarge_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 789
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 790
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ai:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 793
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 797
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 798
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 799
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 800
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_video_black_desc_gradient"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 807
    :cond_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->al:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(ZZ)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 166
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a()V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v1, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->P:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->R:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aq:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(JJ)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result p1

    .line 378
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/content/Context;Landroid/view/View;)V

    const-string v0, "tt_video_back"

    .line 125
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    const-string v0, "tt_video_close"

    .line 126
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    const-string v0, "tt_video_top_layout"

    .line 127
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    const-string v0, "tt_video_fullscreen_back"

    .line 128
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->P:Landroid/widget/ImageView;

    const-string v0, "tt_video_title"

    .line 129
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    const-string v0, "tt_video_top_title"

    .line 130
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    const-string v0, "tt_video_current_time"

    .line 131
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    const-string v0, "tt_video_loading_retry"

    .line 133
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    const-string v0, "tt_video_retry"

    .line 134
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->R:Landroid/widget/ImageView;

    const-string v0, "tt_video_retry_des"

    .line 135
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->S:Landroid/widget/TextView;

    const-string v0, "tt_video_seekbar"

    .line 137
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    const-string v0, "tt_video_time_left_time"

    .line 138
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    const-string v0, "tt_video_time_play"

    .line 139
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    const-string v0, "tt_video_ad_bottom_layout"

    .line 141
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    const-string v0, "tt_video_ad_full_screen"

    .line 142
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    const-string v0, "tt_video_ad_cover"

    .line 144
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->g:Landroid/view/ViewStub;

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .line 812
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 3

    .line 926
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 927
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "HH:mm"

    invoke-direct {p2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 928
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 929
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Ljava/lang/String;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 934
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :goto_0
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->C:Z

    if-nez p2, :cond_4

    .line 940
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    .line 941
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 942
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p2, p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 550
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    .line 552
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    .line 553
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    .line 554
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    const/4 v2, -0x1

    .line 555
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 556
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    .line 557
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 558
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 559
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 562
    instance-of v3, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_3

    .line 563
    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 564
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 565
    array-length v5, v4

    const/4 v6, 0x3

    if-lez v5, :cond_2

    aget v4, v4, v6

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    .line 566
    invoke-virtual {v3, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 567
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    :cond_3
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    .line 570
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 571
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    invoke-static {p1, v2, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    .line 574
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Z)V

    .line 576
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_shrink_video"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_seek_thumb_fullscreen_selector"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 582
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(Landroid/view/View;Z)V

    .line 583
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e(Z)V

    .line 585
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 586
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez p1, :cond_5

    .line 587
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 588
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void

    .line 589
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 590
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_6
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 418
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    .line 419
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 420
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 422
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 423
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 424
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 429
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 431
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 432
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-string p2, ""

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    if-eqz v0, :cond_6

    .line 441
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 445
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 462
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 464
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result p1

    const/4 p2, 0x2

    const-string p3, "tt_video_mobile_go_detail"

    if-eq p1, p2, :cond_a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    if-eq p1, v1, :cond_9

    const/4 p2, 0x5

    if-eq p1, p2, :cond_8

    .line 476
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 469
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string p2, "tt_video_dial_phone"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 466
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string p2, "tt_video_download_apk"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 473
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    :goto_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    if-eqz p2, :cond_b

    .line 480
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 301
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->q:I

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r:I

    .line 303
    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    if-gtz v2, :cond_2

    goto :goto_4

    :cond_2
    if-gtz v0, :cond_3

    return-void

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_maxheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_5
    :goto_2
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 318
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 319
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    if-le v2, v1, :cond_6

    int-to-float v0, v1

    mul-float v0, v0, v3

    .line 322
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 323
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-nez p1, :cond_7

    .line 329
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result p1

    if-nez p1, :cond_7

    .line 330
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->q:I

    .line 331
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r:I

    .line 336
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(II)V

    :cond_8
    :goto_4
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 855
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 856
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 857
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 858
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez p1, :cond_1

    .line 859
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 860
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 861
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 864
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 867
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 868
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 870
    :cond_3
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 2

    .line 824
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 825
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 826
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 827
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 828
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 830
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 832
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 833
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez p1, :cond_5

    .line 834
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p3, :cond_3

    .line 835
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 837
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 840
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 841
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 842
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "FullScreen"

    const-string v1, "Detail exitFullScreen....."

    .line 598
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 606
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 608
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 609
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 610
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 612
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 615
    instance-of v2, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_2

    .line 616
    move-object v2, v1

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x3

    .line 617
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :cond_2
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 621
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;IIII)V

    :cond_3
    const/4 p1, 0x1

    .line 623
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Z)V

    .line 625
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_enlarge_video"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_seek_thumb_normal"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 632
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(Landroid/view/View;Z)V

    .line 634
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e(Z)V

    .line 636
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 637
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 638
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 886
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-eqz v0, :cond_0

    .line 887
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_0
    const/16 v0, 0x8

    move-object v0, p1

    const/16 p1, 0x8

    :goto_1
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeMessages(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 901
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->w:I

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 905
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aB:Z

    return-void

    .line 906
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aA:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 907
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aB:Z

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->g(Landroid/view/View;)V

    .line 391
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 401
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    .line 402
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->v()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/view/View;)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_00_00"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x8

    .line 509
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 510
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 517
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 518
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 519
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 520
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 521
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 522
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 523
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 524
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    :cond_2
    return-void
.end method

.method public h()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 875
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->v:Z

    return v0
.end method

.method public l()V
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j()V

    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
