.class public Lcom/callerid/block/customview/ExpandTextView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/callerid/block/customview/d;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/customview/ExpandTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/customview/ExpandTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v0, Lcom/callerid/block/R$styleable;->ExpandTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/customview/ExpandTextView;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/customview/ExpandTextView;->d:Ljava/lang/String;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/callerid/block/customview/ExpandTextView;->e:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/callerid/block/customview/ExpandTextView;->f:Ljava/lang/String;

    const/16 p3, 0xa

    const/high16 v0, -0x76000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/callerid/block/customview/ExpandTextView;->g:I

    const/16 p3, 0x8

    const/high16 v0, -0x22000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/callerid/block/customview/ExpandTextView;->h:I

    const/16 p3, 0x9

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/callerid/block/customview/ExpandTextView;->i:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/ExpandTextView;->k:I

    iget-object p2, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p2, p3}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/ExpandTextView;->l:F

    iget-object p2, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p2, p3}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/ExpandTextView;->m:F

    iget-object p2, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p2, p3}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/ExpandTextView;->n:F

    const/4 p2, 0x0

    const/16 p3, 0x258

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/callerid/block/customview/ExpandTextView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/customview/ExpandTextView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 8

    iget-boolean v0, p0, Lcom/callerid/block/customview/ExpandTextView;->w:Z

    const-string v1, "rotation"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/callerid/block/customview/ExpandTextView;->w:Z

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMaxMeasureHeight()I

    move-result v5

    if-ge v5, v0, :cond_0

    move v5, v0

    :cond_0
    iget-object v6, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/customview/ExpandTextView;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    new-array v7, v4, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->v:Lcom/callerid/block/customview/d;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/callerid/block/customview/d;->a()V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/callerid/block/customview/ExpandTextView;->w:Z

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMaxMeasureHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v5

    if-ge v0, v5, :cond_2

    move v0, v5

    :cond_2
    iget-object v6, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/customview/ExpandTextView;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    new-array v7, v4, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->v:Lcom/callerid/block/customview/d;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/callerid/block/customview/d;->b()V

    :cond_3
    :goto_0
    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    if-gez v1, :cond_4

    const/16 v1, 0x258

    iput v1, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    :cond_4
    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-array v4, v4, [I

    aput v0, v4, v3

    aput v5, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v2, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/callerid/block/customview/ExpandTextView$a;

    invoke-direct {v2, p0, v1}, Lcom/callerid/block/customview/ExpandTextView$a;-><init>(Lcom/callerid/block/customview/ExpandTextView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const v1, 0x7f0c0069

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090489

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    const v0, 0x7f0903c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    const v0, 0x7f090416

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->t:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->l:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->m:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->n:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTextColor()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->h:I

    return v0
.end method

.method public getContentTextSize()F
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->m:F

    return v0
.end method

.method public getExpandHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFoldHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTextColor()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->i:I

    return v0
.end method

.method public getHintTextSize()F
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->n:F

    return v0
.end method

.method public getIndicateImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaxMeasureHeight()I
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0xbb8

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMinMeasureHeight()I
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/callerid/block/customview/ExpandTextView;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/callerid/block/util/f;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/callerid/block/customview/ExpandTextView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0x3e8

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMinVisibleLines()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->k:I

    return v0
.end method

.method public getReadMoreListener()Lcom/callerid/block/customview/d;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->v:Lcom/callerid/block/customview/d;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextColor()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->g:I

    return v0
.end method

.method public getTitleTextSize()F
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ExpandTextView;->l:F

    return v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902f2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/customview/ExpandTextView;->b()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/ExpandTextView;->o:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/callerid/block/customview/ExpandTextView;->h:I

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setContentTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callerid/block/customview/ExpandTextView;->m:F

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setExpandHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->f:Ljava/lang/String;

    return-void
.end method

.method public setFoldHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->e:Ljava/lang/String;

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/callerid/block/customview/ExpandTextView;->i:I

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setHintTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callerid/block/customview/ExpandTextView;->n:F

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setIndicateImage(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndicateImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinVisibleLines(I)V
    .locals 1

    iput p1, p0, Lcom/callerid/block/customview/ExpandTextView;->k:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->u:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callerid/block/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnReadMoreListener(Lcom/callerid/block/customview/d;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->v:Lcom/callerid/block/customview/d;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/callerid/block/customview/ExpandTextView;->g:I

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/callerid/block/util/f;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callerid/block/customview/ExpandTextView;->l:F

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
