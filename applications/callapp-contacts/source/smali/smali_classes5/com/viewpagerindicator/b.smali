.class final Lcom/viewpagerindicator/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/b;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010129
        0x1010329
        0x101032a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/viewpagerindicator/b;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/b;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    .line 39
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/viewpagerindicator/b;->f:I

    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/viewpagerindicator/b;->e:I

    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/b;->f:I

    add-int/2addr v1, v2

    .line 156
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/b;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/viewpagerindicator/b;->d:I

    add-int/2addr v3, p2

    .line 155
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object p2, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    iget v1, p0, Lcom/viewpagerindicator/b;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_2

    .line 173
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/viewpagerindicator/b;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/viewpagerindicator/b;->c:I

    add-int/2addr v2, p2

    .line 162
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/viewpagerindicator/b;->f:I

    sub-int/2addr v3, v4

    .line 161
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object p2, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    .line 62
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/b;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getOrientation()I

    move-result v1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    invoke-direct {p0, v0}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v4, :cond_0

    .line 68
    iget v3, p0, Lcom/viewpagerindicator/b;->d:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 71
    :cond_0
    iget v3, p0, Lcom/viewpagerindicator/b;->c:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_3

    .line 77
    invoke-direct {p0, v3}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v1, v4, :cond_2

    .line 79
    iget v0, p0, Lcom/viewpagerindicator/b;->d:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 81
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/b;->c:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 85
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 91
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getOrientation()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 1101
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1103
    invoke-virtual {p0, v2}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1105
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 1106
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1107
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1108
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 1109
    invoke-direct {p0, p1, v4}, Lcom/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    :cond_1
    invoke-direct {p0, v0}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sub-int/2addr v0, v3

    .line 1115
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1118
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/b;->d:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 1121
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1123
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->a(Landroid/graphics/Canvas;I)V

    goto :goto_4

    .line 1128
    :cond_3
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1130
    invoke-virtual {p0, v2}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1132
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 1133
    invoke-direct {p0, v2}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1134
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1135
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 1136
    invoke-direct {p0, p1, v4}, Lcom/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1141
    :cond_5
    invoke-direct {p0, v0}, Lcom/viewpagerindicator/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sub-int/2addr v0, v3

    .line 1142
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1145
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/b;->c:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 1148
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1150
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/b;->b(Landroid/graphics/Canvas;I)V

    .line 97
    :cond_7
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/viewpagerindicator/b;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->c:I

    .line 51
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/b;->d:I

    goto :goto_0

    .line 53
    :cond_1
    iput v0, p0, Lcom/viewpagerindicator/b;->c:I

    .line 54
    iput v0, p0, Lcom/viewpagerindicator/b;->d:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/b;->setWillNotDraw(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/viewpagerindicator/b;->requestLayout()V

    return-void
.end method
