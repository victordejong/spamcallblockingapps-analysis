.class public Lcom/allinone/callerid/customview/ExpandTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/allinone/callerid/customview/c;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/customview/ExpandTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/customview/ExpandTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    sget-object v0, Lcom/allinone/callerid/R$styleable;->ExpandTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->f:Ljava/lang/String;

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->g:Ljava/lang/String;

    const/4 p3, 0x3

    .line 10
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->h:Ljava/lang/String;

    const/16 p3, 0xa

    const/high16 v0, -0x76000000

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->i:I

    const/16 p3, 0x8

    const/high16 v0, -0x22000000

    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->j:I

    const/16 p3, 0x9

    .line 13
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->k:I

    const/4 p3, 0x6

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x7

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->m:I

    .line 16
    iget-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->n:F

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->o:F

    .line 18
    iget-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->p:F

    const/4 p2, 0x0

    const/16 p3, 0x258

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/customview/ExpandTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->y:Z

    const-string v1, "rotation"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->y:Z

    .line 3
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMaxMeasureHeight()I

    move-result v5

    if-ge v5, v0, :cond_0

    move v5, v0

    .line 5
    :cond_0
    iget-object v6, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/customview/ExpandTextView;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v6, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    new-array v7, v4, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->x:Lcom/allinone/callerid/customview/c;

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1}, Lcom/allinone/callerid/customview/c;->b()V

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->y:Z

    .line 10
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMaxMeasureHeight()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v5

    if-ge v0, v5, :cond_2

    move v0, v5

    .line 12
    :cond_2
    iget-object v6, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/customview/ExpandTextView;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v6, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    new-array v7, v4, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v1, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->x:Lcom/allinone/callerid/customview/c;

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1}, Lcom/allinone/callerid/customview/c;->a()V

    .line 16
    :cond_3
    :goto_0
    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    if-gez v1, :cond_4

    const/16 v1, 0x258

    .line 17
    iput v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-array v4, v4, [I

    aput v0, v4, v3

    aput v5, v4, v2

    .line 19
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 20
    iget v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    new-instance v2, Lcom/allinone/callerid/customview/ExpandTextView$a;

    invoke-direct {v2, p0, v1}, Lcom/allinone/callerid/customview/ExpandTextView$a;-><init>(Lcom/allinone/callerid/customview/ExpandTextView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
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

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const v1, 0x7f0c00ae

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09079a

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    const v0, 0x7f090650

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    const v0, 0x7f0906c8

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    const v0, 0x7f0902b5

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    const v0, 0x7f090504

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->v:Landroid/widget/RelativeLayout;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->n:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->o:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->p:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->j:I

    return v0
.end method

.method public getContentTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->o:F

    return v0
.end method

.method public getExpandHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getFoldHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getHintTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->k:I

    return v0
.end method

.method public getHintTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->p:F

    return v0
.end method

.method public getIndicateImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaxMeasureHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0xbb8

    const/high16 v2, -0x80000000

    .line 3
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMinMeasureHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0x3e8

    const/high16 v2, -0x80000000

    .line 8
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMinVisibleLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->m:I

    return v0
.end method

.method public getReadMoreListener()Lcom/allinone/callerid/customview/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->x:Lcom/allinone/callerid/customview/c;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->i:I

    return v0
.end method

.method public getTitleTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->n:F

    return v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090504

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->b()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->q:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->f:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->j:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setContentTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->o:F

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setExpandHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->h:Ljava/lang/String;

    return-void
.end method

.method public setFoldHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->g:Ljava/lang/String;

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->k:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setHintTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->p:F

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setIndicateImage(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndicateImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->l:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinVisibleLines(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->m:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->w:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ExpandTextView;->getMinMeasureHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnReadMoreListener(Lcom/allinone/callerid/customview/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->x:Lcom/allinone/callerid/customview/c;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandTextView;->i:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->n:F

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
