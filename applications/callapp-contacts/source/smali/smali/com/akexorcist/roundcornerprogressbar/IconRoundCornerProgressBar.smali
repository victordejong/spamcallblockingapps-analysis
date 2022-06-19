.class public Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;,
        Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ICON_PADDING_BOTTOM:I = 0x0

.field protected static final DEFAULT_ICON_PADDING_LEFT:I = 0x0

.field protected static final DEFAULT_ICON_PADDING_RIGHT:I = 0x0

.field protected static final DEFAULT_ICON_PADDING_TOP:I = 0x0

.field protected static final DEFAULT_ICON_SIZE:I = 0x14


# instance fields
.field private colorIconBackground:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconClickListener:Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconPadding:I

.field private iconPaddingBottom:I

.field private iconPaddingLeft:I

.field private iconPaddingRight:I

.field private iconPaddingTop:I

.field private iconResource:I

.field private iconSize:I

.field private iconWidth:I

.field private ivProgressIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;)Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconClickListener:Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;

    return-object p0
.end method

.method private drawIconBackgroundColor()V
    .locals 5

    .line 199
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->createGradientDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->getRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->getPadding()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v1, v1

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v4, 0x1

    aput v1, v2, v4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 201
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 202
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private drawImageIcon()V
    .locals 2

    .line 172
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private drawImageIconPadding()V
    .locals 5

    .line 190
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    iget v3, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    iget v4, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private drawImageIconSize()V
    .locals 4

    .line 182
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconWidth:I

    iget v3, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public drawProgress(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;FFFIIZ)V
    .locals 13

    move-object v0, p2

    move/from16 v1, p6

    .line 138
    div-int/lit8 v2, p7, 0x2

    sub-int v2, v1, v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz p8, :cond_0

    cmpl-float v12, p4, p3

    if-eqz v12, :cond_0

    new-array v9, v9, [F

    int-to-float v2, v2

    aput v2, v9, v10

    aput v2, v9, v8

    aput v2, v9, v11

    aput v2, v9, v7

    aput v2, v9, v6

    aput v2, v9, v5

    aput v2, v9, v4

    aput v2, v9, v3

    .line 140
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_0
    new-array v9, v9, [F

    const/4 v12, 0x0

    aput v12, v9, v10

    aput v12, v9, v8

    int-to-float v2, v2

    aput v2, v9, v11

    aput v2, v9, v7

    aput v2, v9, v6

    aput v2, v9, v5

    aput v12, v9, v4

    aput v12, v9, v3

    .line 142
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 144
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    div-float v0, p3, p4

    mul-int/lit8 v2, p7, 0x2

    move-object v3, p0

    .line 147
    iget-object v4, v3, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v2, p5, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 148
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p8, :cond_2

    .line 150
    div-int/lit8 v4, v0, 0x2

    add-int v5, p7, v4

    if-ge v5, v1, :cond_1

    sub-int v1, v1, p7

    .line 151
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v4

    .line 152
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 155
    :cond_1
    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 156
    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    :cond_2
    :goto_1
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move-object v0, p1

    .line 160
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getColorIconBackground()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    return v0
.end method

.method public getIconImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconImageResource()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    return v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    return v0
.end method

.method public getIconPaddingBottom()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    return v0
.end method

.method public getIconPaddingLeft()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    return v0
.end method

.method public getIconPaddingRight()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    return v0
.end method

.method public getIconPaddingTop()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    return v0
.end method

.method public initLayout()I
    .locals 1

    .line 88
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$c;->layout_icon_round_corner_progress_bar:I

    return v0
.end method

.method public initStyleable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 93
    sget-object v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconSrc:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    .line 97
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconSize:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    .line 98
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconWidth:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0, v2}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconWidth:I

    .line 99
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconHeight:I

    invoke-virtual {p0, v2}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconHeight:I

    .line 100
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    .line 101
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    .line 102
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconPaddingRight:I

    invoke-virtual {p0, v1}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    .line 103
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconPaddingTop:I

    invoke-virtual {p0, v1}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    .line 104
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconPaddingBottom:I

    invoke-virtual {p0, v1}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->dp2px(F)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$a;->round_corner_progress_bar_background_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 107
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$d;->IconRoundCornerProgressBar_rcIconBackgroundColor:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    .line 109
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 114
    sget v0, Lcom/akexorcist/roundcornerprogressbar/a$b;->iv_progress_icon:I

    invoke-virtual {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->ivProgressIcon:Landroid/widget/ImageView;

    .line 115
    new-instance v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$1;

    invoke-direct {v1, p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$1;-><init>(Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 335
    instance-of v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;

    if-nez v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 340
    :cond_0
    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;

    .line 341
    invoke-virtual {p1}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 343
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconResource:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    .line 344
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconSize:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    .line 345
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconWidth:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconWidth:I

    .line 346
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconHeight:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconHeight:I

    .line 347
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPadding:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    .line 348
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingLeft:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    .line 349
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingRight:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    .line 350
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingTop:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    .line 351
    iget v0, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingBottom:I

    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    .line 352
    iget p1, p1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->colorIconBackground:I

    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 315
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/common/AnimatedRoundCornerProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 318
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconResource:I

    .line 319
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconSize:I

    .line 320
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconWidth:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconWidth:I

    .line 321
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconHeight:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconHeight:I

    .line 323
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPadding:I

    .line 324
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingLeft:I

    .line 325
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingRight:I

    .line 327
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingTop:I

    .line 328
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->iconPaddingBottom:I

    .line 329
    iget v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    iput v0, v1, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState;->colorIconBackground:I

    return-object v1
.end method

.method public onViewDraw()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIcon()V

    .line 166
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconSize()V

    .line 167
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    .line 168
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawIconBackgroundColor()V

    return-void
.end method

.method public setIconBackgroundColor(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->colorIconBackground:I

    .line 310
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawIconBackgroundColor()V

    return-void
.end method

.method public setIconImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    .line 221
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    .line 222
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIcon()V

    return-void
.end method

.method public setIconImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconBitmap:Landroid/graphics/Bitmap;

    .line 234
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIcon()V

    return-void
.end method

.method public setIconImageResource(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconResource:I

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconBitmap:Landroid/graphics/Bitmap;

    .line 212
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIcon()V

    return-void
.end method

.method public setIconPadding(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 255
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPadding:I

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    return-void
.end method

.method public setIconPaddingBottom(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 299
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingBottom:I

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    return-void
.end method

.method public setIconPaddingLeft(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 266
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingLeft:I

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    return-void
.end method

.method public setIconPaddingRight(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 277
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingRight:I

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    return-void
.end method

.method public setIconPaddingTop(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 288
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconPaddingTop:I

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconPadding()V

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 244
    iput p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconSize:I

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->drawImageIconSize()V

    return-void
.end method

.method public setOnIconClickListener(Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar;->iconClickListener:Lcom/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a;

    return-void
.end method
