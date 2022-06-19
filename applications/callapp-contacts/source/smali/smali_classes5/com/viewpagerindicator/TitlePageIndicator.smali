.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/TitlePageIndicator$SavedState;,
        Lcom/viewpagerindicator/TitlePageIndicator$b;,
        Lcom/viewpagerindicator/TitlePageIndicator$a;,
        Lcom/viewpagerindicator/TitlePageIndicator$c;
    }
.end annotation


# instance fields
.field private A:Lcom/viewpagerindicator/TitlePageIndicator$c;

.field private a:Landroidx/viewpager/widget/ViewPager;

.field private b:Landroidx/viewpager/widget/ViewPager$e;

.field private c:I

.field private d:F

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Paint;

.field private m:Lcom/viewpagerindicator/TitlePageIndicator$a;

.field private n:Lcom/viewpagerindicator/TitlePageIndicator$b;

.field private final o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 156
    sget v0, Lcom/viewpagerindicator/d$a;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23

    move-object/from16 v0, p0

    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, -0x1

    .line 119
    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 122
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    .line 126
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    .line 128
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    .line 131
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/high16 v5, -0x40800000    # -1.0f

    .line 144
    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 145
    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    sget v5, Lcom/viewpagerindicator/d$c;->default_title_indicator_footer_color:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 166
    sget v6, Lcom/viewpagerindicator/d$d;->default_title_indicator_footer_line_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 167
    sget v7, Lcom/viewpagerindicator/d$e;->default_title_indicator_footer_indicator_style:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 168
    sget v8, Lcom/viewpagerindicator/d$d;->default_title_indicator_footer_indicator_height:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 169
    sget v9, Lcom/viewpagerindicator/d$d;->default_title_indicator_footer_indicator_underline_padding:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 170
    sget v10, Lcom/viewpagerindicator/d$d;->default_title_indicator_footer_padding:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 171
    sget v11, Lcom/viewpagerindicator/d$e;->default_title_indicator_line_position:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 172
    sget v12, Lcom/viewpagerindicator/d$c;->default_title_indicator_selected_color:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 173
    sget v13, Lcom/viewpagerindicator/d$b;->default_title_indicator_selected_bold:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 174
    sget v14, Lcom/viewpagerindicator/d$c;->default_title_indicator_text_color:I

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 175
    sget v15, Lcom/viewpagerindicator/d$d;->default_title_indicator_text_size:I

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    move-object/from16 v16, v4

    .line 176
    sget v4, Lcom/viewpagerindicator/d$d;->default_title_indicator_title_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move-object/from16 v17, v3

    .line 177
    sget v3, Lcom/viewpagerindicator/d$d;->default_title_indicator_clip_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    move-object/from16 v18, v2

    .line 178
    sget v2, Lcom/viewpagerindicator/d$d;->default_title_indicator_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 181
    sget-object v2, Lcom/viewpagerindicator/d$f;->TitlePageIndicator:[I

    move/from16 v19, v5

    const/4 v5, 0x0

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v20, v15

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual {v15, v13, v2, v14, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 184
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerLineHeight:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 185
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerIndicatorStyle:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-static {v5}, Lcom/viewpagerindicator/TitlePageIndicator$a;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$a;

    move-result-object v5

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/TitlePageIndicator$a;

    .line 186
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerIndicatorHeight:I

    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    .line 187
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerIndicatorUnderlinePadding:I

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    .line 188
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerPadding:I

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    .line 189
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_linePosition:I

    invoke-virtual {v2, v5, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-static {v5}, Lcom/viewpagerindicator/TitlePageIndicator$b;->fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$b;

    move-result-object v5

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/TitlePageIndicator$b;

    .line 190
    sget v5, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_topPadding:I

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    .line 191
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_titlePadding:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    .line 192
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_clipPadding:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    .line 193
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_selectedColor:I

    invoke-virtual {v2, v1, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    .line 194
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_android_textColor:I

    move/from16 v3, v22

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    .line 195
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_selectedBold:I

    move/from16 v3, v21

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    .line 197
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_android_textSize:I

    move/from16 v3, v20

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 198
    sget v3, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_footerColor:I

    move/from16 v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    move-object/from16 v4, v18

    .line 199
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v4, v17

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v4, v16

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget v1, Lcom/viewpagerindicator/d$f;->TitlePageIndicator_android_background:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:I

    return-void
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private a(Landroid/graphics/Rect;FI)V
    .locals 1

    int-to-float p3, p3

    .line 648
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 649
    iget p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 1

    int-to-float p3, p3

    .line 661
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 662
    iget p3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 355
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v9

    if-nez v9, :cond_1

    return-void

    .line 366
    :cond_1
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 371
    :cond_2
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    .line 1672
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v2

    .line 1675
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v3

    .line 1676
    div-int/lit8 v4, v3, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x0

    :goto_0
    const/high16 v12, 0x40000000    # 2.0f

    if-ge v5, v2, :cond_3

    .line 1700
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1701
    invoke-direct {v0, v5}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1702
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v1, v7, v11, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1703
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v7, v13

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1679
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v13

    .line 1680
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    int-to-float v14, v4

    int-to-float v15, v7

    div-float/2addr v15, v12

    sub-float/2addr v14, v15

    .line 1681
    iget v12, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    sub-int v12, v5, v12

    int-to-float v12, v12

    iget v15, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    sub-float/2addr v12, v15

    int-to-float v15, v3

    mul-float v12, v12, v15

    add-float/2addr v14, v12

    float-to-int v12, v14

    iput v12, v6, Landroid/graphics/Rect;->left:I

    .line 1682
    iget v12, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v7

    iput v12, v6, Landroid/graphics/Rect;->right:I

    .line 1683
    iput v11, v6, Landroid/graphics/Rect;->top:I

    .line 1684
    iput v13, v6, Landroid/graphics/Rect;->bottom:I

    .line 1685
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 375
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    const/4 v14, 0x1

    if-lt v1, v13, :cond_4

    sub-int/2addr v13, v14

    .line 376
    invoke-virtual {v0, v13}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void

    :cond_4
    add-int/lit8 v1, v9, -0x1

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v15, v2, v12

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v7

    int-to-float v2, v7

    .line 383
    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v2, v3

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v6

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v16

    add-int v5, v7, v6

    int-to-float v3, v5

    .line 387
    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v3, v4

    .line 389
    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 391
    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    move/from16 v17, v13

    float-to-double v12, v11

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v20, v12, v18

    if-gtz v20, :cond_5

    move v12, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v12, v4, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v11, v13, v11

    :goto_1
    const/high16 v13, 0x3e800000    # 0.25f

    cmpg-float v18, v11, v13

    if-gtz v18, :cond_6

    const/16 v18, 0x1

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    :goto_2
    const v19, 0x3d4ccccd    # 0.05f

    cmpg-float v19, v11, v19

    if-gtz v19, :cond_7

    const/16 v19, 0x1

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    :goto_3
    sub-float v11, v13, v11

    div-float/2addr v11, v13

    .line 402
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 403
    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 404
    iget v14, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    cmpg-float v14, v14, v2

    if-gez v14, :cond_8

    .line 406
    invoke-direct {v0, v4, v13, v7}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 408
    :cond_8
    iget v14, v4, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    cmpl-float v14, v14, v3

    if-lez v14, :cond_9

    .line 410
    invoke-direct {v0, v4, v13, v5}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 414
    :cond_9
    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez v4, :cond_c

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    :goto_4
    if-ltz v4, :cond_c

    .line 416
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 418
    iget v14, v13, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    cmpg-float v14, v14, v2

    if-gez v14, :cond_a

    .line 419
    iget v14, v13, Landroid/graphics/Rect;->right:I

    move/from16 v21, v2

    iget v2, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v2

    int-to-float v2, v14

    .line 421
    invoke-direct {v0, v13, v2, v7}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v4, 0x1

    .line 423
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move/from16 v22, v6

    .line 425
    iget v6, v13, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move/from16 v23, v15

    iget v15, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v6, v15

    iget v15, v2, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    cmpl-float v6, v6, v15

    if-lez v6, :cond_b

    .line 426
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v14

    int-to-float v2, v2

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 427
    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iput v2, v13, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_a
    move/from16 v21, v2

    move/from16 v22, v6

    move/from16 v23, v15

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v21

    move/from16 v6, v22

    move/from16 v15, v23

    goto :goto_4

    :cond_c
    move/from16 v22, v6

    move/from16 v23, v15

    .line 433
    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-ge v2, v1, :cond_e

    const/4 v1, 0x1

    add-int/2addr v2, v1

    :goto_6
    if-ge v2, v9, :cond_e

    .line 435
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 437
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_d

    .line 438
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    int-to-float v6, v4

    .line 440
    invoke-direct {v0, v1, v6, v5}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    add-int/lit8 v6, v2, -0x1

    .line 442
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 444
    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v13, v14

    iget v14, v6, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d

    .line 445
    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v13, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v6, v13

    float-to-int v6, v6

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 446
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v1, Landroid/graphics/Rect;->right:I

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 453
    :cond_e
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    ushr-int/lit8 v13, v1, 0x18

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v9, :cond_17

    .line 456
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/graphics/Rect;

    .line 458
    iget v1, v15, Landroid/graphics/Rect;->left:I

    if-le v1, v7, :cond_f

    iget v1, v15, Landroid/graphics/Rect;->left:I

    if-lt v1, v5, :cond_10

    :cond_f
    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-le v1, v7, :cond_15

    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-ge v1, v5, :cond_15

    :cond_10
    if-ne v14, v12, :cond_11

    const/16 v21, 0x1

    goto :goto_8

    :cond_11
    const/16 v21, 0x0

    .line 460
    :goto_8
    invoke-direct {v0, v14}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 463
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    if-eqz v21, :cond_12

    if-eqz v19, :cond_12

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 466
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v21, :cond_13

    if-eqz v18, :cond_13

    .line 469
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    int-to-float v2, v13

    mul-float v2, v2, v11

    float-to-int v2, v2

    sub-int v2, v13, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_13
    add-int/lit8 v1, v17, -0x1

    if-ge v14, v1, :cond_14

    add-int/lit8 v1, v14, 0x1

    .line 474
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 476
    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    .line 477
    iget v2, v15, Landroid/graphics/Rect;->right:I

    iget v3, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 478
    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v15, Landroid/graphics/Rect;->left:I

    .line 479
    iget v1, v15, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v15, Landroid/graphics/Rect;->right:I

    :cond_14
    const/4 v3, 0x0

    .line 482
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v6, v1

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float v25, v1, v2

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v26, v2

    move-object/from16 v2, v24

    move/from16 v27, v5

    move v5, v6

    move/from16 v28, v22

    move/from16 v6, v25

    move/from16 v22, v7

    move-object/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v21, :cond_16

    if-eqz v18, :cond_16

    .line 486
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float v2, v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 488
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float v6, v1, v2

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_15
    move/from16 v27, v5

    move/from16 v28, v22

    move/from16 v22, v7

    :cond_16
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v22

    move/from16 v5, v27

    move/from16 v22, v28

    goto/16 :goto_7

    :cond_17
    move/from16 v28, v22

    .line 494
    iget v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 495
    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    .line 496
    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/TitlePageIndicator$b;

    sget-object v4, Lcom/viewpagerindicator/TitlePageIndicator$b;->Top:Lcom/viewpagerindicator/TitlePageIndicator$b;

    if-ne v3, v4, :cond_18

    neg-float v1, v1

    neg-float v2, v2

    const/4 v3, 0x0

    goto :goto_b

    :cond_18
    move/from16 v3, v16

    .line 503
    :goto_b
    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 504
    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    sub-float v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 505
    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move/from16 v5, v28

    int-to-float v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 506
    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 507
    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sub-float/2addr v3, v1

    .line 510
    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$1;->a:[I

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/TitlePageIndicator$a;

    invoke-virtual {v4}, Lcom/viewpagerindicator/TitlePageIndicator$a;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_19

    goto :goto_c

    :cond_19
    if-eqz v18, :cond_1a

    move/from16 v1, v17

    if-ge v12, v1, :cond_1a

    .line 525
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 526
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    add-float/2addr v4, v5

    .line 527
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v1, v5

    sub-float v2, v3, v2

    .line 530
    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 531
    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 532
    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 535
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 537
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v11, v11, v2

    float-to-int v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 539
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1a
    :goto_c
    return-void

    .line 512
    :cond_1b
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 513
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v4, v3, v2

    move/from16 v5, v23

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 514
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    add-float v15, v5, v2

    invoke-virtual {v1, v15, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v15, v5, v2

    invoke-virtual {v1, v15, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 517
    iget-object v1, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 793
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 797
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 800
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    .line 803
    :cond_0
    iget-object p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 804
    iget-object p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 805
    iget-object p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr p2, v0

    .line 806
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/TitlePageIndicator$a;

    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$a;->None:Lcom/viewpagerindicator/TitlePageIndicator$a;

    if-eq v0, v1, :cond_1

    .line 807
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    add-float/2addr p2, v0

    :cond_1
    :goto_0
    float-to-int p2, p2

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 755
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    .line 757
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 764
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 765
    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    .line 766
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 768
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_0

    .line 769
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$e;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 775
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-nez v0, :cond_0

    .line 776
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 777
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroidx/viewpager/widget/ViewPager$e;

    if-eqz v0, :cond_1

    .line 781
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$e;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 817
    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    .line 818
    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 819
    iget p1, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 820
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 825
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 826
    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 827
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 545
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 552
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 626
    :cond_2
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 627
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 628
    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    .line 630
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 632
    :cond_4
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    goto/16 :goto_0

    .line 619
    :cond_5
    invoke-static {p1}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 620
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 621
    invoke-static {p1, v0}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    goto/16 :goto_0

    .line 560
    :cond_6
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 561
    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 562
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    sub-float v0, p1, v0

    .line 564
    iget-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v2, :cond_7

    .line 565
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 566
    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    .line 570
    :cond_7
    iget-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-eqz v2, :cond_f

    .line 571
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    .line 572
    iget-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 573
    :cond_8
    iget-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 582
    :cond_9
    iget-boolean v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v4, :cond_d

    .line 583
    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v4

    .line 584
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    sub-float v7, v6, v5

    add-float/2addr v6, v5

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float v5, p1, v7

    if-gez v5, :cond_b

    .line 592
    iget p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_a

    .line 594
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    :cond_b
    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    .line 599
    iget p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    sub-int/2addr v4, v1

    if-ge p1, v4, :cond_d

    if-eq v0, v3, :cond_c

    .line 601
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 613
    :cond_d
    iput-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    const/4 p1, -0x1

    .line 614
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 615
    iget-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 555
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/i;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setClipPadding(F)V
    .locals 0

    .line 335
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    .line 336
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 749
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    .line 750
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void

    .line 746
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFooterColor(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    .line 245
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    .line 254
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/TitlePageIndicator$a;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/TitlePageIndicator$a;

    .line 263
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 1

    .line 234
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    .line 235
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setLinePosition(Lcom/viewpagerindicator/TitlePageIndicator$b;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/TitlePageIndicator$b;

    .line 272
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/TitlePageIndicator$c;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/TitlePageIndicator$c;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroidx/viewpager/widget/ViewPager$e;

    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    .line 290
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    .line 281
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    .line 300
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    .line 318
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTopPadding(F)V
    .locals 0

    .line 326
    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    .line 327
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 341
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 713
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 715
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroidx/viewpager/widget/ViewPager;

    .line 719
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 720
    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void

    .line 716
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 725
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 726
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void
.end method
