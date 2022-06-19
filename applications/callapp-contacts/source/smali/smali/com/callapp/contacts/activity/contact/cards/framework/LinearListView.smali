.class public Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final c:I

.field private static final d:I

.field private static final g:[I


# instance fields
.field protected a:I

.field protected b:I

.field private e:I

.field private f:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

.field private h:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 25
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->c:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 26
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->d:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x10102d4
        0x1010329
        0x101032a
        0x7f0400aa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1070
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->g:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x4

    const/high16 v1, -0x1000000

    .line 1074
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->e:I

    const/4 v0, 0x0

    .line 1075
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1082
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1085
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_listItem:[I

    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1089
    :try_start_1
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1092
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setDividerHeight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1096
    throw p2

    :catchall_1
    move-exception p2

    .line 1082
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1083
    throw p2
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingLeft()I

    move-result v1

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getDividerLeftPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 249
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getDividerRightPadding()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    add-int/2addr v3, p2

    .line 248
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getShowDividers()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getShowDividers()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getShowDividers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 274
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

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

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getDividerPadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    add-int/2addr v2, p2

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getDividerPadding()I

    move-result v4

    sub-int/2addr v3, v4

    .line 254
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDividerLeftPadding()I
    .locals 1

    .line 405
    sget v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->c:I

    return v0
.end method

.method private getDividerRightPadding()I
    .locals 1

    .line 408
    sget v0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->d:I

    return v0
.end method


# virtual methods
.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .line 155
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getOrientation()I

    move-result v1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 161
    iget v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 164
    :cond_0
    iget v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_3

    .line 170
    invoke-direct {p0, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v1, v4, :cond_2

    .line 172
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 174
    :cond_2
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 178
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getOrientation()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 1194
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1196
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1198
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 1199
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1200
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1201
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 1202
    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1207
    :cond_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sub-int/2addr v0, v3

    .line 1208
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 1214
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1216
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(Landroid/graphics/Canvas;I)V

    goto :goto_4

    .line 1221
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1223
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1225
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 1226
    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1227
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1228
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 1229
    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b(Landroid/graphics/Canvas;I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1234
    :cond_5
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sub-int/2addr v0, v3

    .line 1235
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1238
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 1241
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1243
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b(Landroid/graphics/Canvas;I)V

    .line 190
    :cond_7
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAdapter(Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;)V
    .locals 4

    .line 330
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    const/4 p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setOrientation(I)V

    .line 337
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    if-eqz p1, :cond_3

    .line 339
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 343
    :goto_1
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->f:Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    invoke-virtual {v3, v1, v2, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_1

    .line 345
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 349
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildCount()I

    move-result v0

    :goto_3
    if-ge p1, v0, :cond_3

    .line 356
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 144
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->e:I

    .line 145
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void

    .line 148
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->h:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    goto :goto_0

    .line 133
    :cond_1
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    .line 134
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    .line 137
    :goto_0
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->e:I

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setDividerColor(I)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 138
    :cond_2
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->setWillNotDraw(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->requestLayout()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    goto :goto_0

    .line 301
    :cond_0
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 310
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    .line 311
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->b:I

    .line 312
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/LinearListView;->a:I

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
