.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 109
    iput v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 116
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 120
    const v0, 0x800033

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 159
    sget-object v0, Landroidx/appcompat/a$j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v0, p3, v3}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 162
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    .line 163
    if-ltz v1, :cond_0

    .line 164
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 167
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    .line 168
    if-ltz v1, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 172
    :cond_1
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    .line 173
    if-nez v1, :cond_2

    .line 174
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 177
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ap;->a(IF)F

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 179
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 180
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 182
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    .line 184
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    .line 186
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 188
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 189
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1649
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1650
    return-void
.end method

.method private c(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 899
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 901
    :goto_0
    if-ge v7, p1, :cond_1

    .line 902
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 904
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 906
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 909
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 910
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 913
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 901
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 918
    :cond_1
    return-void
.end method

.method private d(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1321
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 1323
    :goto_0
    if-ge v7, p1, :cond_1

    .line 1324
    invoke-virtual {p0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1325
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1326
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1328
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1331
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 1332
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1335
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1336
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 1323
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1340
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method a(II)V
    .locals 26

    .prologue
    .line 599
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 600
    const/16 v19, 0x0

    .line 601
    const/16 v18, 0x0

    .line 602
    const/4 v13, 0x0

    .line 603
    const/4 v12, 0x0

    .line 604
    const/16 v17, 0x1

    .line 605
    const/4 v6, 0x0

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    .line 609
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 610
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 612
    const/4 v11, 0x0

    .line 613
    const/4 v15, 0x0

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    move/from16 v24, v0

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    move/from16 v25, v0

    .line 618
    const/4 v14, 0x0

    .line 621
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v4

    .line 624
    if-nez v4, :cond_0

    .line 625
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v4, v14

    move v9, v15

    move v10, v6

    move/from16 v7, v17

    .line 621
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v4

    move v15, v9

    move v6, v10

    move/from16 v17, v7

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    .line 630
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v4, v14

    move v9, v15

    move v10, v6

    move/from16 v7, v17

    .line 631
    goto :goto_1

    .line 634
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 638
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 640
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    add-float v16, v6, v3

    .line 642
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v3, :cond_5

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 646
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 647
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 648
    const/4 v15, 0x1

    .line 687
    :cond_3
    :goto_2
    if-ltz v24, :cond_4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    .line 688
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 694
    :cond_4
    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 695
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 650
    :cond_5
    const/high16 v3, -0x80000000

    .line 652
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v6, :cond_6

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 657
    const/4 v3, 0x0

    .line 658
    const/4 v6, -0x2

    iput v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    :cond_6
    move/from16 v20, v3

    .line 665
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIIII)V

    .line 669
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    .line 670
    move/from16 v0, v20

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 673
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 674
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 675
    add-int v7, v6, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v7, v8

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 675
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 678
    if-eqz v25, :cond_3

    .line 679
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    .line 665
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 701
    :cond_9
    const/4 v3, 0x0

    .line 702
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_26

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_26

    .line 707
    const/4 v6, 0x1

    .line 708
    const/4 v3, 0x1

    .line 711
    :goto_4
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v8, v7

    .line 712
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    .line 713
    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 715
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    .line 714
    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v18

    .line 717
    if-eqz v17, :cond_a

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_a

    const/4 v7, 0x1

    .line 718
    :goto_5
    iget v10, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    .line 723
    if-eqz v3, :cond_b

    move v3, v8

    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    .line 730
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v14

    move v9, v15

    move v11, v6

    move/from16 v10, v16

    move v12, v3

    move v13, v8

    goto/16 :goto_1

    .line 717
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    move v3, v9

    .line 723
    goto :goto_6

    .line 726
    :cond_c
    if-eqz v3, :cond_d

    :goto_8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v12

    goto :goto_7

    :cond_d
    move v8, v9

    goto :goto_8

    .line 733
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 734
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 737
    :cond_f
    if-eqz v25, :cond_13

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_10

    if-nez v23, :cond_13

    .line 739
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 741
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    .line 742
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v5

    .line 744
    if-nez v5, :cond_11

    .line 745
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v4

    .line 741
    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    .line 749
    :cond_11
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_12

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 751
    goto :goto_a

    .line 755
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 757
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 758
    add-int v8, v7, v14

    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v3, v8

    .line 759
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 758
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v4

    goto :goto_a

    .line 764
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 766
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 772
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v16

    .line 773
    const v3, 0xffffff

    and-int v3, v3, v16

    .line 778
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int v7, v3, v4

    .line 779
    if-nez v15, :cond_14

    if-eqz v7, :cond_20

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_20

    .line 780
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 782
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 784
    const/4 v3, 0x0

    move v14, v3

    move v5, v6

    move/from16 v9, v17

    move v10, v13

    move/from16 v8, v18

    move/from16 v12, v19

    :goto_b
    move/from16 v0, v21

    if-ge v14, v0, :cond_1e

    .line 785
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v15

    .line 787
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    move v4, v5

    move v3, v9

    .line 784
    :goto_c
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move v5, v4

    move v9, v3

    goto :goto_b

    .line 791
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 793
    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 794
    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-lez v4, :cond_25

    .line 796
    int-to-float v4, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 797
    sub-float/2addr v5, v6

    .line 798
    sub-int v6, v7, v4

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v13

    add-int/2addr v7, v13

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v13

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v7, v13

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 800
    move/from16 v0, p1

    invoke-static {v0, v7, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v7

    .line 806
    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    if-nez v13, :cond_17

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_19

    .line 809
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v4, v13

    .line 810
    if-gez v4, :cond_18

    .line 811
    const/4 v4, 0x0

    .line 814
    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 815
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 814
    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    .line 826
    :goto_d
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 825
    invoke-static {v8, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    move v4, v5

    move v8, v7

    .line 830
    :goto_e
    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    iget v7, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v7

    .line 831
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 832
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 834
    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_1b

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_1b

    const/4 v13, 0x1

    .line 837
    :goto_f
    if-eqz v13, :cond_1c

    :goto_10
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 840
    if-eqz v9, :cond_1d

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1d

    const/4 v5, 0x1

    .line 842
    :goto_11
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 843
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    iget v13, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v9, v13

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v3, v9

    .line 844
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v9

    add-int/2addr v3, v9

    .line 843
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v7, v6

    move v3, v5

    goto/16 :goto_c

    .line 819
    :cond_19
    if-lez v4, :cond_1a

    :goto_12
    const/high16 v13, 0x40000000    # 2.0f

    .line 820
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 819
    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    goto :goto_12

    .line 834
    :cond_1b
    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    move v5, v7

    .line 837
    goto :goto_10

    .line 840
    :cond_1d
    const/4 v5, 0x0

    goto :goto_11

    .line 848
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v17, v9

    move v3, v10

    move/from16 v18, v8

    move v4, v12

    .line 880
    :goto_13
    if-nez v17, :cond_23

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_23

    .line 884
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 889
    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 892
    if-eqz v11, :cond_1f

    .line 893
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(II)V

    .line 895
    :cond_1f
    return-void

    .line 851
    :cond_20
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 857
    if-eqz v25, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_24

    .line 858
    const/4 v3, 0x0

    move v4, v3

    :goto_15
    move/from16 v0, v21

    if-ge v4, v0, :cond_24

    .line 859
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v5

    .line 861
    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_22

    .line 858
    :cond_21
    :goto_16
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    .line 866
    :cond_22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 868
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 869
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21

    .line 871
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 873
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 870
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_23
    move v3, v4

    goto :goto_14

    :cond_24
    move v3, v10

    move/from16 v4, v19

    goto/16 :goto_13

    :cond_25
    move v4, v5

    move v6, v7

    goto/16 :goto_e

    :cond_26
    move v6, v11

    goto/16 :goto_4
.end method

.method a(IIII)V
    .locals 14

    .prologue
    .line 1430
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v9

    .line 1436
    sub-int v0, p3, p1

    .line 1437
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1440
    sub-int/2addr v0, v9

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 1442
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1444
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v0, v0, 0x70

    .line 1445
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    const v2, 0x800007

    and-int v7, v1, v2

    .line 1447
    sparse-switch v0, :sswitch_data_0

    .line 1460
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .line 1464
    :goto_0
    const/4 v8, 0x0

    move v3, v0

    :goto_1
    if-ge v8, v12, :cond_2

    .line 1465
    invoke-virtual {p0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1466
    if-nez v1, :cond_0

    .line 1467
    invoke-virtual {p0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v8

    .line 1464
    :goto_2
    add-int/lit8 v8, v0, 0x1

    goto :goto_1

    .line 1450
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v0, v1

    .line 1451
    goto :goto_0

    .line 1455
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1456
    goto :goto_0

    .line 1468
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 1469
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1470
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1473
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1475
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1476
    if-gez v0, :cond_1

    move v0, v7

    .line 1479
    :cond_1
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v2

    .line 1480
    invoke-static {v0, v2}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 1482
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 1494
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int v2, v9, v0

    .line 1498
    :goto_3
    invoke-virtual {p0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1499
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v0, v3

    .line 1502
    :goto_4
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int v13, v0, v3

    .line 1503
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    .line 1505
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v13, v0

    .line 1507
    invoke-virtual {p0, v1, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_2

    .line 1484
    :sswitch_2
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 1486
    goto :goto_3

    .line 1489
    :sswitch_3
    sub-int v0, v10, v4

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    sub-int v2, v0, v2

    .line 1490
    goto :goto_3

    .line 1510
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v8

    goto/16 :goto_2

    .line 1447
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1482
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 300
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 304
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v3

    .line 307
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    .line 300
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v1

    .line 315
    if-nez v1, :cond_3

    .line 316
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v1

    .line 321
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    .line 323
    :cond_2
    return-void

    .line 318
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    return-void
.end method

.method a(Landroid/view/View;IIIII)V
    .locals 6

    .prologue
    .line 1381
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1383
    return-void
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 2

    .prologue
    .line 1725
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .prologue
    .line 1748
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method b(II)V
    .locals 29

    .prologue
    .line 932
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 933
    const/16 v20, 0x0

    .line 934
    const/16 v19, 0x0

    .line 935
    const/4 v14, 0x0

    .line 936
    const/4 v13, 0x0

    .line 937
    const/16 v18, 0x1

    .line 938
    const/4 v6, 0x0

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v22

    .line 942
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 943
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 945
    const/4 v12, 0x0

    .line 946
    const/16 v16, 0x0

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    if-nez v3, :cond_1

    .line 949
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 950
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 953
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    move-object/from16 v25, v0

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    move-object/from16 v26, v0

    .line 956
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v4

    aput v8, v25, v3

    .line 957
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v26, v7

    aput v8, v26, v5

    aput v8, v26, v4

    aput v8, v26, v3

    .line 959
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    move/from16 v27, v0

    .line 960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    move/from16 v28, v0

    .line 962
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 964
    :goto_0
    const/4 v15, 0x0

    .line 967
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v5, v0, :cond_14

    .line 968
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v4

    .line 970
    if-nez v4, :cond_3

    .line 971
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v4, v15

    move/from16 v9, v16

    move v10, v6

    move/from16 v7, v18

    .line 967
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v4

    move/from16 v16, v9

    move v6, v10

    move/from16 v18, v7

    goto :goto_1

    .line 962
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 975
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    .line 976
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v4, v15

    move/from16 v9, v16

    move v10, v6

    move/from16 v7, v18

    .line 977
    goto :goto_2

    .line 980
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 981
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 985
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 987
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    add-float v17, v6, v3

    .line 989
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v3, :cond_a

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 993
    if-eqz v11, :cond_8

    .line 994
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1006
    :goto_3
    if-eqz v27, :cond_9

    .line 1007
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1008
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1051
    :cond_6
    :goto_4
    const/4 v3, 0x0

    .line 1052
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_35

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35

    .line 1056
    const/4 v6, 0x1

    .line 1057
    const/4 v3, 0x1

    .line 1060
    :goto_5
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v8, v7

    .line 1061
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    .line 1062
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v19

    .line 1064
    if-eqz v27, :cond_7

    .line 1065
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1066
    const/4 v7, -0x1

    if-eq v12, v7, :cond_7

    .line 1069
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    .line 1071
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 1074
    aget v21, v25, v7

    move/from16 v0, v21

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    .line 1075
    aget v21, v26, v7

    sub-int v12, v9, v12

    move/from16 v0, v21

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v26, v7

    .line 1079
    :cond_7
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1081
    if-eqz v18, :cond_10

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v12, -0x1

    if-ne v7, v12, :cond_10

    const/4 v7, 0x1

    .line 1082
    :goto_7
    iget v10, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_12

    .line 1087
    if-eqz v3, :cond_11

    move v3, v8

    :goto_8
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    .line 1094
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move/from16 v9, v16

    move v12, v6

    move/from16 v10, v17

    move v13, v3

    move v14, v8

    goto/16 :goto_2

    .line 996
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 997
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto/16 :goto_3

    .line 1010
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 1013
    :cond_a
    const/high16 v3, -0x80000000

    .line 1015
    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v6, :cond_b

    iget v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 1020
    const/4 v3, 0x0

    .line 1021
    const/4 v6, -0x2

    iput v6, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    :cond_b
    move/from16 v21, v3

    .line 1028
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIIII)V

    .line 1032
    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    .line 1033
    move/from16 v0, v21

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 1036
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1037
    if-eqz v11, :cond_e

    .line 1038
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v7, v8

    .line 1039
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1046
    :goto_b
    if-eqz v28, :cond_6

    .line 1047
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_4

    .line 1028
    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    .line 1041
    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1042
    add-int v7, v6, v3

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v7, v8

    .line 1043
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1042
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_b

    .line 1069
    :cond_f
    iget v7, v10, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    goto/16 :goto_6

    .line 1081
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_11
    move v3, v9

    .line 1087
    goto/16 :goto_8

    .line 1090
    :cond_12
    if-eqz v3, :cond_13

    :goto_c
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v3, v13

    goto/16 :goto_9

    :cond_13
    move v8, v9

    goto :goto_c

    .line 1097
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1098
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1103
    :cond_15
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    .line 1107
    :cond_16
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    .line 1109
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1108
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1110
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    .line 1112
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1111
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1110
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1113
    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1116
    :goto_d
    if-eqz v28, :cond_1b

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_17

    if-nez v23, :cond_1b

    .line 1118
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1120
    const/4 v4, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v4, v0, :cond_1b

    .line 1121
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v7

    .line 1123
    if-nez v7, :cond_18

    .line 1124
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v4

    .line 1120
    :goto_f
    add-int/lit8 v4, v3, 0x1

    goto :goto_e

    .line 1128
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_19

    .line 1129
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1130
    goto :goto_f

    .line 1134
    :cond_19
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1135
    if-eqz v11, :cond_1a

    .line 1136
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v9, v15

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v3, v9

    .line 1137
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v4

    goto :goto_f

    .line 1139
    :cond_1a
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1140
    add-int v9, v8, v15

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v3, v9

    .line 1141
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 1140
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v3, v4

    goto :goto_f

    .line 1147
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1149
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1152
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1155
    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v17

    .line 1156
    const v3, 0xffffff

    and-int v3, v3, v17

    .line 1161
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int v8, v3, v4

    .line 1162
    if-nez v16, :cond_1c

    if-eqz v8, :cond_2d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_2d

    .line 1163
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 1165
    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v9, -0x1

    aput v9, v25, v7

    aput v9, v25, v5

    aput v9, v25, v4

    aput v9, v25, v3

    .line 1166
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v9, -0x1

    aput v9, v26, v7

    aput v9, v26, v5

    aput v9, v26, v4

    aput v9, v26, v3

    .line 1167
    const/4 v15, -0x1

    .line 1169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1171
    const/4 v3, 0x0

    move/from16 v16, v3

    move v5, v6

    move/from16 v9, v18

    move v10, v14

    move/from16 v13, v19

    :goto_10
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_29

    .line 1172
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v18

    .line 1174
    if-eqz v18, :cond_33

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1e

    move v3, v5

    move v4, v8

    move v6, v9

    move v14, v15

    .line 1171
    :goto_11
    add-int/lit8 v7, v16, 0x1

    move/from16 v16, v7

    move v5, v3

    move v8, v4

    move v9, v6

    move v15, v14

    goto :goto_10

    .line 1179
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1181
    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 1182
    const/4 v4, 0x0

    cmpl-float v4, v6, v4

    if-lez v4, :cond_32

    .line 1184
    int-to-float v4, v8

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1185
    sub-float v7, v5, v6

    .line 1186
    sub-int/2addr v8, v4

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    .line 1188
    move/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v5

    .line 1195
    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    if-nez v6, :cond_1f

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_22

    .line 1198
    :cond_1f
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 1199
    if-gez v4, :cond_20

    .line 1200
    const/4 v4, 0x0

    .line 1203
    :cond_20
    const/high16 v6, 0x40000000    # 2.0f

    .line 1204
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1203
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1215
    :goto_12
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    .line 1214
    invoke-static {v13, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1218
    :goto_13
    if-eqz v11, :cond_24

    .line 1219
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v6

    .line 1220
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1227
    :goto_14
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_25

    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    const/4 v4, 0x1

    .line 1230
    :goto_15
    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1231
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1232
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1233
    if-eqz v4, :cond_26

    move v4, v5

    :goto_16
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1236
    if-eqz v9, :cond_27

    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    const/4 v5, 0x1

    .line 1238
    :goto_17
    if-eqz v27, :cond_21

    .line 1239
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1240
    const/4 v9, -0x1

    if-eq v4, v9, :cond_21

    .line 1242
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    if-gez v9, :cond_28

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    :goto_18
    and-int/lit8 v3, v3, 0x70

    .line 1244
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1247
    aget v9, v25, v3

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v25, v3

    .line 1248
    aget v9, v26, v3

    sub-int v4, v6, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v26, v3

    :cond_21
    move v3, v7

    move v4, v8

    move v6, v5

    goto/16 :goto_11

    .line 1208
    :cond_22
    if-lez v4, :cond_23

    :goto_19
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_12

    :cond_23
    const/4 v4, 0x0

    goto :goto_19

    .line 1222
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1223
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v5, v6

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1223
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto/16 :goto_14

    .line 1227
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_26
    move v4, v6

    .line 1233
    goto :goto_16

    .line 1236
    :cond_27
    const/4 v5, 0x0

    goto :goto_17

    .line 1242
    :cond_28
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    goto :goto_18

    .line 1255
    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1260
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    .line 1264
    :cond_2a
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    .line 1266
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1265
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1264
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1267
    const/4 v4, 0x3

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v7, 0x2

    aget v7, v26, v7

    .line 1269
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1268
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1267
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1270
    add-int/2addr v3, v4

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_2b
    move/from16 v18, v9

    move v3, v10

    move/from16 v19, v13

    move v4, v15

    .line 1299
    :goto_1a
    if-nez v18, :cond_30

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_30

    .line 1303
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1308
    const/high16 v4, -0x1000000

    and-int v4, v4, v19

    or-int v4, v4, v17

    shl-int/lit8 v5, v19, 0x10

    .line 1309
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1308
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1312
    if-eqz v12, :cond_2c

    .line 1313
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(II)V

    .line 1315
    :cond_2c
    return-void

    .line 1273
    :cond_2d
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1277
    if-eqz v28, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_31

    .line 1278
    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    move/from16 v0, v22

    if-ge v4, v0, :cond_31

    .line 1279
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v6

    .line 1281
    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_2f

    .line 1278
    :cond_2e
    :goto_1d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1c

    .line 1286
    :cond_2f
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1288
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 1289
    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2e

    .line 1290
    const/high16 v3, 0x40000000    # 2.0f

    .line 1291
    invoke-static {v15, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1292
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1290
    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_30
    move v3, v4

    goto :goto_1b

    :cond_31
    move v3, v10

    move v4, v5

    goto/16 :goto_1a

    :cond_32
    move v7, v5

    goto/16 :goto_13

    :cond_33
    move v3, v5

    move v4, v8

    move v6, v9

    move v14, v15

    goto/16 :goto_11

    :cond_34
    move/from16 v5, v20

    goto/16 :goto_d

    :cond_35
    move v6, v12

    goto/16 :goto_5
.end method

.method b(IIII)V
    .locals 22

    .prologue
    .line 1525
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;)Z

    move-result v4

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v11

    .line 1532
    sub-int v2, p4, p2

    .line 1533
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v15, v2, v3

    .line 1536
    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v16, v2, v3

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v17

    .line 1540
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 1541
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v14, v3, 0x70

    .line 1543
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    move/from16 v18, v0

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    move-object/from16 v19, v0

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    move-object/from16 v20, v0

    .line 1548
    invoke-static/range {p0 .. p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v3

    .line 1549
    invoke-static {v2, v3}, Landroidx/core/h/c;->a(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v12

    .line 1566
    :goto_0
    const/4 v3, 0x0

    .line 1567
    const/4 v2, 0x1

    .line 1569
    if-eqz v4, :cond_7

    .line 1570
    add-int/lit8 v3, v17, -0x1

    .line 1571
    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    .line 1574
    :goto_1
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 1575
    mul-int v2, v9, v13

    add-int v21, v10, v2

    .line 1576
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1578
    if-nez v3, :cond_0

    .line 1579
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->d(I)I

    move-result v2

    add-int/2addr v12, v2

    move v2, v13

    .line 1574
    :goto_3
    add-int/lit8 v13, v2, 0x1

    goto :goto_2

    .line 1552
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int v12, v2, v3

    .line 1553
    goto :goto_0

    .line 1557
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 1558
    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_6

    .line 1581
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1582
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1583
    const/4 v4, -0x1

    .line 1586
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 1588
    if-eqz v18, :cond_5

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1589
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1592
    :goto_4
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1593
    if-gez v4, :cond_1

    move v4, v14

    .line 1597
    :cond_1
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_1

    move v5, v11

    .line 1633
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1634
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, v12

    .line 1637
    :goto_6
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    add-int v12, v2, v4

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    .line 1640
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v2, v6

    .line 1641
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1643
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v13

    goto/16 :goto_3

    .line 1599
    :sswitch_2
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int v5, v11, v4

    .line 1600
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1601
    const/4 v4, 0x1

    aget v4, v19, v4

    sub-int v2, v4, v2

    add-int/2addr v5, v2

    goto :goto_5

    .line 1617
    :sswitch_3
    sub-int v2, v16, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1619
    goto :goto_5

    .line 1622
    :sswitch_4
    sub-int v4, v15, v7

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$a;->bottomMargin:I

    sub-int v5, v4, v5

    .line 1623
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1624
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    .line 1625
    const/4 v4, 0x2

    aget v4, v20, v4

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    .line 1626
    goto :goto_5

    .line 1646
    :cond_3
    return-void

    :cond_4
    move v2, v12

    goto :goto_6

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v13

    goto/16 :goto_3

    :cond_7
    move v9, v2

    move v10, v3

    goto/16 :goto_1

    .line 1549
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1597
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 326
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 327
    invoke-static {p0}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;)Z

    move-result v3

    .line 328
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 329
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    .line 332
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 335
    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v0, v4

    .line 340
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    .line 328
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v0, v4

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(I)Landroid/view/View;

    move-result-object v1

    .line 348
    if-nez v1, :cond_5

    .line 349
    if-eqz v3, :cond_4

    .line 350
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .line 362
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    .line 364
    :cond_3
    return-void

    .line 352
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 355
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 356
    if-eqz v3, :cond_6

    .line 357
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 359
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, p2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v3, v4

    .line 373
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method protected c(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    if-nez p1, :cond_2

    .line 571
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 571
    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 573
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 574
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 576
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 577
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 576
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 584
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1755
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    return v0
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->j()Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 427
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gez v1, :cond_1

    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gt v1, v2, :cond_2

    .line 432
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_2
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 439
    if-ne v3, v0, :cond_3

    .line 440
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-eqz v1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_3
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 458
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 459
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v1, 0x70

    .line 460
    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    .line 461
    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    .line 474
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 475
    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    .line 463
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 464
    goto :goto_1

    .line 467
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 461
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1704
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return v0
.end method

.method protected j()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1738
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-nez v0, :cond_0

    .line 1739
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {v0, v2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    .line 1743
    :goto_0
    return-object v0

    .line 1740
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1741
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    goto :goto_0

    .line 1743
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1761
    const-string/jumbo v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1762
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1767
    const-string/jumbo v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1768
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 1410
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1411
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(IIII)V

    .line 1415
    :goto_0
    return-void

    .line 1413
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(II)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .prologue
    .line 396
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 397
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3

    .prologue
    .line 492
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 497
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    .line 240
    if-eqz p1, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    .line 247
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    goto :goto_0

    .line 244
    :cond_2
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 245
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 262
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 1683
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    if-eq v0, p1, :cond_1

    .line 1684
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1685
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1688
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 1689
    or-int/lit8 v0, v0, 0x30

    .line 1692
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1693
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1695
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 3

    .prologue
    const v2, 0x800007

    .line 1708
    and-int v0, p1, v2

    .line 1709
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1710
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1711
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1713
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .prologue
    .line 422
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    .line 423
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 1658
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-eq v0, p1, :cond_0

    .line 1659
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    .line 1660
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1662
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    if-eq p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 202
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    .line 203
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .prologue
    .line 1716
    and-int/lit8 v0, p1, 0x70

    .line 1717
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1718
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1719
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1721
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 550
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
