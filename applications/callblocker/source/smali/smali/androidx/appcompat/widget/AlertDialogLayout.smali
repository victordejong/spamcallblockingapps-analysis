.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 348
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 349
    return-void
.end method

.method private static c(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {p0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v0

    .line 249
    if-lez v0, :cond_0

    .line 260
    :goto_0
    return v0

    .line 253
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 254
    check-cast p0, Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/widget/AlertDialogLayout;->c(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method private c(II)Z
    .locals 12

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v8

    .line 76
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v8, :cond_6

    .line 77
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    .line 83
    sget v6, Landroidx/appcompat/a$f;->topPanel:I

    if-ne v5, v6, :cond_1

    move-object v3, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sget v6, Landroidx/appcompat/a$f;->buttonPanel:I

    if-ne v5, v6, :cond_2

    move-object v2, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    sget v6, Landroidx/appcompat/a$f;->contentPanel:I

    if-eq v5, v6, :cond_3

    sget v6, Landroidx/appcompat/a$f;->customPanel:I

    if-ne v5, v6, :cond_5

    .line 88
    :cond_3
    if-eqz v0, :cond_4

    .line 90
    const/4 v0, 0x0

    .line 206
    :goto_2
    return v0

    :cond_4
    move-object v0, v1

    .line 92
    goto :goto_1

    .line 95
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 99
    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    .line 106
    if-eqz v3, :cond_7

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v3, p1, v1}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v4, v1

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 113
    :cond_7
    const/4 v3, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz v2, :cond_10

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v2}, Landroidx/appcompat/widget/AlertDialogLayout;->c(Landroid/view/View;)I

    move-result v3

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v3

    .line 120
    add-int/2addr v4, v3

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v7, v1

    .line 124
    :goto_3
    const/4 v1, 0x0

    .line 125
    if-eqz v0, :cond_f

    .line 127
    if-nez v9, :cond_a

    .line 128
    const/4 v1, 0x0

    .line 134
    :goto_4
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 137
    add-int/2addr v4, v1

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v6, v1

    .line 141
    :goto_5
    sub-int v1, v10, v4

    .line 146
    if-eqz v2, :cond_e

    .line 147
    sub-int/2addr v4, v3

    .line 149
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 150
    if-lez v7, :cond_8

    .line 151
    sub-int/2addr v1, v7

    .line 152
    add-int/2addr v3, v7

    .line 155
    :cond_8
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 157
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v4, v3

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v5, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v2, v4

    .line 165
    :goto_6
    if-eqz v0, :cond_d

    if-lez v1, :cond_d

    .line 166
    sub-int/2addr v2, v6

    .line 169
    sub-int v4, v1, v1

    .line 170
    add-int/2addr v1, v6

    .line 175
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 177
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    .line 180
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v3, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v0, v1

    move v3, v2

    .line 184
    :goto_7
    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v8, :cond_b

    .line 186
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_9

    .line 188
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 130
    :cond_a
    const/4 v1, 0x0

    sub-int v6, v10, v4

    .line 131
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 192
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 194
    invoke-static {v1, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 196
    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 198
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 202
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v11, v0, :cond_c

    .line 203
    invoke-direct {p0, v8, p2}, Landroidx/appcompat/widget/AlertDialogLayout;->d(II)V

    .line 206
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    move v2, v4

    move v3, v5

    goto :goto_6

    :cond_f
    move v6, v1

    goto/16 :goto_5

    :cond_10
    move v7, v1

    goto/16 :goto_3
.end method

.method private d(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 217
    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 217
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 220
    :goto_0
    if-ge v7, p1, :cond_1

    .line 221
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 224
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 227
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 231
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 220
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 236
    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 265
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v10

    .line 268
    sub-int v0, p4, p2

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 272
    sub-int/2addr v0, v10

    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v12, v0, v1

    .line 274
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v13

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    move-result v1

    .line 277
    and-int/lit8 v2, v1, 0x70

    .line 278
    const v3, 0x800007

    and-int v8, v1, v3

    .line 281
    sparse-switch v2, :sswitch_data_0

    .line 294
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    .line 298
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 299
    if-nez v1, :cond_2

    const/4 v1, 0x0

    move v7, v1

    .line 302
    :goto_1
    const/4 v1, 0x0

    move v9, v1

    move v3, v0

    :goto_2
    if-ge v9, v13, :cond_3

    .line 303
    invoke-virtual {p0, v9}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 311
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 312
    if-gez v0, :cond_0

    move v0, v8

    .line 315
    :cond_0
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    .line 316
    invoke-static {v0, v2}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 320
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 332
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int v2, v10, v0

    .line 336
    :goto_3
    invoke-virtual {p0, v9}, Landroidx/appcompat/widget/AlertDialogLayout;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    add-int v0, v3, v7

    .line 340
    :goto_4
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v3, v0

    move-object v0, p0

    .line 341
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->a(Landroid/view/View;IIII)V

    .line 342
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 302
    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 284
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v0, v1, v0

    .line 285
    goto :goto_0

    .line 289
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    sub-int v2, p5, p3

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 290
    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v7, v1

    goto :goto_1

    .line 322
    :sswitch_2
    sub-int v0, v12, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 324
    goto :goto_3

    .line 327
    :sswitch_3
    sub-int v0, v11, v4

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 328
    goto :goto_3

    .line 345
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_4

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 320
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AlertDialogLayout;->c(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method
