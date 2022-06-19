.class public Lit/gmariotti/cardslib/library/prototypes/LinearListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field private static final LinearLayout_divider:I

.field private static final R_styleable_LinearLayout:[I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDividerHeight:I

.field protected mDividerWidth:I

.field private mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 114
    fill-array-data v0, :array_0

    sput-object v0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->R_styleable_LinearLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x10102d4
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p2, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0, p2, p3}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->initAttrs(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 5

    .line 218
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 226
    invoke-virtual {p0, p1, v2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 232
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 240
    :goto_1
    invoke-virtual {p0, p1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    .line 191
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 196
    invoke-virtual {p0, v1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 199
    invoke-virtual {p0, p1, v2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 205
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 213
    :goto_1
    invoke-virtual {p0, p1, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 245
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getDividerPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getDividerPadding()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 245
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 252
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getDividerPadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 253
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getDividerPadding()I

    move-result v4

    sub-int/2addr v3, v4

    .line 252
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    iget-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAdapter()Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;
    .locals 1

    .line 347
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 286
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    .line 364
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 375
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 266
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getShowDividers()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 268
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getShowDividers()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 269
    :cond_3
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getShowDividers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 272
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method protected initAttrs(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->R_styleable_LinearLayout:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lit/gmariotti/cardslib/library/a$g;->card_listItem:[I

    invoke-virtual {v0, p1, v2, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    :try_start_1
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_listItem_card_list_item_dividerHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setDividerHeight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :catchall_1
    move-exception p1

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .line 152
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getOrientation()I

    move-result v1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 158
    iget v3, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 161
    :cond_0
    iget v3, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 165
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getChildCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_3

    .line 167
    invoke-virtual {p0, v3}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v1, v4, :cond_2

    .line 169
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 171
    :cond_2
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 175
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 187
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;)V
    .locals 2

    .line 328
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    const/4 p1, 0x1

    .line 329
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setOrientation(I)V

    .line 332
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 333
    :goto_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 334
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mListAdapter:Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lit/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 136
    :cond_0
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    .line 140
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    goto :goto_0

    .line 142
    :cond_1
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    .line 143
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 145
    :cond_2
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->setWillNotDraw(Z)V

    .line 146
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->requestLayout()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    goto :goto_0

    .line 299
    :cond_0
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    .line 302
    :goto_0
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 308
    iget v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    .line 309
    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    iput v1, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerHeight:I

    .line 310
    iput v0, p0, Lit/gmariotti/cardslib/library/prototypes/LinearListView;->mDividerWidth:I

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
