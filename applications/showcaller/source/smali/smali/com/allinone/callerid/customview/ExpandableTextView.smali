.class public Lcom/allinone/callerid/customview/ExpandableTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/ExpandableTextView$d;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Z

.field private l:Lcom/allinone/callerid/customview/ExpandableTextView$d;

.field private m:Landroid/util/SparseBooleanArray;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/customview/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    .line 4
    invoke-direct {p0, p2}, Lcom/allinone/callerid/customview/ExpandableTextView;->p(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    .line 7
    invoke-direct {p0, p2}, Lcom/allinone/callerid/customview/ExpandableTextView;->p(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/customview/ExpandableTextView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->r:I

    return p0
.end method

.method static synthetic b(Lcom/allinone/callerid/customview/ExpandableTextView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->r:I

    return p1
.end method

.method static synthetic c(Lcom/allinone/callerid/customview/ExpandableTextView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->k:Z

    return p1
.end method

.method static synthetic d(Lcom/allinone/callerid/customview/ExpandableTextView;)Lcom/allinone/callerid/customview/ExpandableTextView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->l:Lcom/allinone/callerid/customview/ExpandableTextView$d;

    return-object p0
.end method

.method static synthetic e(Lcom/allinone/callerid/customview/ExpandableTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    return p0
.end method

.method private j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c3

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0901b2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    const v0, 0x7f0907db

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->A:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b1

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandableTextView;->q()V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->u:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->v:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->y:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static o(Landroid/widget/TextView;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method private p(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->m:Landroid/util/SparseBooleanArray;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/R$styleable;->ExpandableTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x9

    const/4 v1, 0x5

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->o:I

    const/4 v0, 0x0

    const/16 v2, 0xc8

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->j:I

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->h:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->i:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xa

    .line 7
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->w:Ljava/lang/String;

    const/16 v3, 0xb

    .line 8
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->x:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->h:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801f8

    invoke-static {v3, v4}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->h:Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->i:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801f7

    invoke-static {v3, v4}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->i:Landroid/graphics/drawable/Drawable;

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->w:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10016c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->x:Ljava/lang/String;

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600fb

    invoke-static {v3, v4}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->s:I

    const/4 v1, 0x6

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->u:F

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f06003a

    invoke-static {v1, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->t:I

    const/4 v1, 0x4

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->v:F

    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->y:I

    const/4 v1, 0x7

    .line 22
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->z:I

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {p0, v2}, Lcom/allinone/callerid/customview/ExpandableTextView;->setOrientation(I)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->h:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->h:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10016c

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandableTextView;->q()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->m:Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_1

    .line 5
    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->n:I

    iget-boolean v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6
    :cond_1
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->k:Z

    .line 7
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array p1, v2, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    aput v2, p1, v1

    iget v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->p:I

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array p1, v2, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    aput v2, p1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->q:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 11
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 12
    :goto_0
    new-instance v0, Lcom/allinone/callerid/customview/ExpandableTextView$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/ExpandableTextView$a;-><init>(Lcom/allinone/callerid/customview/ExpandableTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance v0, Lcom/allinone/callerid/customview/ExpandableTextView$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/ExpandableTextView$b;-><init>(Lcom/allinone/callerid/customview/ExpandableTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    iget v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->j:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandableTextView;->j()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->k:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->f:Z

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->A:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->o:I

    if-gt v1, v2, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/allinone/callerid/customview/ExpandableTextView;->o(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->q:I

    .line 9
    iget-boolean v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->o:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->A:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 14
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    new-instance p2, Lcom/allinone/callerid/customview/ExpandableTextView$c;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/customview/ExpandableTextView$c;-><init>(Lcom/allinone/callerid/customview/ExpandableTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->p:I

    :cond_3
    return-void

    .line 17
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnExpandStateChangeListener(Lcom/allinone/callerid/customview/ExpandableTextView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->l:Lcom/allinone/callerid/customview/ExpandableTextView$d;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExpandableTextView only supports Vertical Orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->f:Z

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 4
    iput p2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->n:I

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->m:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ExpandableTextView;->q()V

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10016c

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000d4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
