.class public Lcom/google/android/material/internal/c;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/c;->c:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/c;->c:Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private static a(III)I
    .locals 0

    .prologue
    .line 177
    sparse-switch p1, :sswitch_data_0

    move p0, p2

    .line 183
    :goto_0
    :sswitch_0
    return p0

    .line 181
    :sswitch_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/a$l;->FlowLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    sget v1, Lcom/google/android/material/a$l;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/c;->a:I

    .line 74
    sget v1, Lcom/google/android/material/a$l;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/c;->b:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/material/internal/c;->c:Z

    return v0
.end method

.method protected getItemSpacing()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/material/internal/c;->b:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/material/internal/c;->a:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    return-void

    .line 194
    :cond_1
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 195
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getPaddingRight()I

    move-result v6

    .line 196
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getPaddingLeft()I

    move-result v0

    .line 198
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getPaddingTop()I

    move-result v3

    .line 202
    sub-int v1, p4, p2

    sub-int v9, v1, v0

    .line 204
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    move v4, v3

    move v5, v6

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 207
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    move v3, v4

    .line 204
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v4, v3

    goto :goto_3

    .line 194
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getPaddingLeft()I

    move-result v6

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->getPaddingRight()I

    move-result v0

    goto :goto_2

    .line 211
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 212
    const/4 v7, 0x0

    .line 213
    const/4 v3, 0x0

    .line 214
    instance-of v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_8

    .line 215
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    invoke-static {v0}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    .line 217
    invoke-static {v0}, Landroidx/core/h/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    move v7, v3

    .line 220
    :goto_5
    add-int v3, v5, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v3, v11

    .line 222
    iget-boolean v11, p0, Lcom/google/android/material/internal/c;->c:Z

    if-nez v11, :cond_6

    if-le v3, v9, :cond_6

    .line 224
    iget v3, p0, Lcom/google/android/material/internal/c;->a:I

    add-int v4, v2, v3

    move v5, v6

    .line 227
    :cond_6
    add-int v2, v5, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 228
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    .line 230
    if-eqz v8, :cond_7

    .line 231
    sub-int v3, v9, v3

    sub-int v11, v9, v5

    sub-int/2addr v11, v7

    invoke-virtual {v10, v3, v4, v11, v2}, Landroid/view/View;->layout(IIII)V

    .line 237
    :goto_6
    add-int/2addr v0, v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/material/internal/c;->b:I

    add-int/2addr v0, v3

    add-int/2addr v5, v0

    move v3, v4

    goto :goto_4

    .line 234
    :cond_7
    add-int v11, v5, v7

    invoke-virtual {v10, v11, v4, v3, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_8
    move v0, v3

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 106
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 112
    const/high16 v4, -0x80000000

    if-eq v14, v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v14, v4, :cond_1

    :cond_0
    move v4, v5

    .line 117
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingLeft()I

    move-result v11

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingTop()I

    move-result v9

    .line 121
    const/4 v7, 0x0

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingRight()I

    move-result v6

    sub-int v17, v4, v6

    .line 123
    const/4 v4, 0x0

    move v6, v4

    move v8, v9

    move v10, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getChildCount()I

    move-result v4

    if-ge v6, v4, :cond_5

    .line 124
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/c;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 126
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v9, 0x8

    if-ne v4, v9, :cond_2

    move v9, v10

    .line 123
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v10, v9

    goto :goto_1

    .line 112
    :cond_1
    const v4, 0x7fffffff

    goto :goto_0

    .line 129
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/internal/c;->measureChild(Landroid/view/View;II)V

    .line 131
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    instance-of v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_7

    .line 135
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    .line 137
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    .line 140
    :goto_3
    add-int v9, v11, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v9, v13

    .line 145
    move/from16 v0, v17

    if-le v9, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->b()Z

    move-result v9

    if-nez v9, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingLeft()I

    move-result v11

    .line 147
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/material/internal/c;->a:I

    add-int v10, v8, v9

    .line 150
    :cond_3
    add-int v8, v11, v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 151
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v13, v10, v9

    .line 154
    if-le v8, v7, :cond_4

    move v7, v8

    .line 158
    :cond_4
    add-int v8, v12, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/material/internal/c;->b:I

    add-int/2addr v8, v9

    add-int/2addr v11, v8

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_6

    .line 164
    add-int/2addr v7, v4

    move v8, v13

    move v9, v10

    goto :goto_2

    .line 168
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v7

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/c;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v8

    .line 171
    invoke-static {v5, v14, v4}, Lcom/google/android/material/internal/c;->a(III)I

    move-result v4

    .line 172
    move/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/google/android/material/internal/c;->a(III)I

    move-result v5

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/material/internal/c;->setMeasuredDimension(II)V

    .line 174
    return-void

    :cond_6
    move v8, v13

    move v9, v10

    goto/16 :goto_2

    :cond_7
    move v4, v9

    goto :goto_3
.end method

.method protected setItemSpacing(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/google/android/material/internal/c;->b:I

    .line 92
    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/material/internal/c;->a:I

    .line 84
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/google/android/material/internal/c;->c:Z

    .line 102
    return-void
.end method
