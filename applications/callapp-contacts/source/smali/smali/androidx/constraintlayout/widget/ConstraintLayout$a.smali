.class final Landroidx/constraintlayout/widget/ConstraintLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/a/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 618
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private static a(III)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 889
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 890
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 891
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 892
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p0, v2, :cond_2

    const/high16 p0, -0x80000000

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-ne p2, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 903
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 905
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 906
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    .line 907
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 8194
    iget-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 8197
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8198
    iget-object v3, v3, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 8199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8200
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 8705
    iput v1, v5, Landroidx/constraintlayout/a/a/e;->ak:I

    .line 8201
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 8966
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v5, v5, v1

    .line 8201
    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq v5, v6, :cond_0

    .line 8202
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 8204
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 8975
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 8204
    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq v5, v6, :cond_1

    .line 8205
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 8207
    :cond_1
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    const/16 v4, 0x8

    .line 9705
    iput v4, v3, Landroidx/constraintlayout/a/a/e;->ak:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_1
    if-ge v1, v0, :cond_4

    .line 914
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 2714
    :cond_0
    iget v3, v1, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 3296
    iget-boolean v3, v1, Landroidx/constraintlayout/a/a/e;->D:Z

    if-nez v3, :cond_1

    .line 630
    iput v5, v2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    .line 632
    iput v5, v2, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    return-void

    .line 3620
    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-nez v3, :cond_2

    return-void

    .line 646
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 647
    iget-object v4, v2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 649
    iget v6, v2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    .line 650
    iget v7, v2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 655
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:I

    add-int/2addr v8, v9

    .line 656
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 4065
    iget-object v10, v1, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 658
    check-cast v10, Landroid/view/View;

    .line 660
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->a:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/a/a/e$a;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, -0x2

    const/4 v5, 0x1

    if-eq v11, v5, :cond_e

    if-eq v11, v14, :cond_d

    if-eq v11, v13, :cond_a

    if-eq v11, v12, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_5

    .line 676
    :cond_3
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 677
    iget v9, v1, Landroidx/constraintlayout/a/a/e;->o:I

    if-ne v9, v5, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 678
    :goto_0
    iget v11, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v12, Landroidx/constraintlayout/a/a/a/b$a;->b:I

    if-eq v11, v12, :cond_5

    iget v11, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v12, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    if-ne v11, v12, :cond_f

    .line 684
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v12

    if-ne v11, v12, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    .line 685
    :goto_1
    iget v12, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v13, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    if-eq v12, v13, :cond_9

    if-eqz v9, :cond_9

    if-eqz v9, :cond_7

    if-nez v11, :cond_9

    :cond_7
    instance-of v9, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v9, :cond_9

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_f

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_5

    .line 671
    :cond_a
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    .line 4980
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-eqz v11, :cond_b

    .line 4981
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget v11, v11, Landroidx/constraintlayout/a/a/d;->g:I

    const/4 v12, 0x0

    add-int/2addr v11, v12

    move v12, v11

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    .line 4983
    :goto_4
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-eqz v11, :cond_c

    .line 4984
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget v11, v11, Landroidx/constraintlayout/a/a/d;->g:I

    add-int/2addr v12, v11

    :cond_c
    add-int/2addr v9, v12

    const/4 v11, -0x1

    .line 671
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_5

    .line 666
    :cond_d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    invoke-static {v6, v9, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_5

    :cond_e
    const/high16 v9, 0x40000000    # 2.0f

    .line 662
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 698
    :cond_f
    :goto_5
    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout$1;->a:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e$a;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v5, :cond_1c

    if-eq v9, v14, :cond_1b

    const/4 v7, 0x3

    if-eq v9, v7, :cond_18

    const/4 v7, 0x4

    if-eq v9, v7, :cond_10

    const/4 v7, 0x0

    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 715
    :cond_10
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    invoke-static {v7, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 717
    iget v7, v1, Landroidx/constraintlayout/a/a/e;->p:I

    if-ne v7, v5, :cond_11

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    .line 718
    :goto_7
    iget v8, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v9, Landroidx/constraintlayout/a/a/a/b$a;->b:I

    if-eq v8, v9, :cond_12

    iget v8, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v9, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    if-ne v8, v9, :cond_17

    .line 724
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v9

    if-ne v8, v9, :cond_13

    const/4 v8, 0x1

    goto :goto_8

    :cond_13
    const/4 v8, 0x0

    .line 725
    :goto_8
    iget v9, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v11, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    if-eq v9, v11, :cond_16

    if-eqz v7, :cond_16

    if-eqz v7, :cond_14

    if-nez v8, :cond_16

    :cond_14
    instance-of v7, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v7, :cond_16

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->c()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v7, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v7, 0x1

    :goto_a
    if-eqz v7, :cond_17

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    :cond_17
    move v7, v12

    goto :goto_6

    .line 710
    :cond_18
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 4994
    iget-object v9, v1, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    if-eqz v9, :cond_19

    .line 4995
    iget-object v9, v1, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget v9, v9, Landroidx/constraintlayout/a/a/d;->g:I

    const/4 v12, 0x0

    add-int/2addr v9, v12

    goto :goto_b

    :cond_19
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 4997
    :goto_b
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    if-eqz v11, :cond_1a

    .line 4998
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget v11, v11, Landroidx/constraintlayout/a/a/d;->g:I

    add-int/2addr v9, v11

    :cond_1a
    add-int/2addr v8, v9

    const/4 v9, -0x1

    .line 710
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_c

    :cond_1b
    const/4 v12, 0x0

    .line 704
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    invoke-static {v7, v8, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_c

    :cond_1c
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 700
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 5620
    :goto_c
    iget-object v8, v1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 738
    check-cast v8, Landroidx/constraintlayout/a/a/f;

    if-eqz v8, :cond_1e

    .line 739
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v9

    const/16 v11, 0x100

    invoke-static {v9, v11}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 740
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v11

    if-ne v9, v11, :cond_1e

    .line 743
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v11

    if-ge v9, v11, :cond_1e

    .line 744
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v11

    if-ne v9, v11, :cond_1e

    .line 745
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v8

    if-ge v9, v8, :cond_1e

    .line 746
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v8

    .line 6055
    iget v9, v1, Landroidx/constraintlayout/a/a/e;->ad:I

    if-ne v8, v9, :cond_1e

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 6321
    iget v8, v1, Landroidx/constraintlayout/a/a/e;->F:I

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v9

    invoke-static {v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 6322
    iget v8, v1, Landroidx/constraintlayout/a/a/e;->G:I

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v9

    invoke-static {v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a(III)Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    goto :goto_d

    :cond_1d
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_1e

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    .line 7055
    iget v1, v1, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 754
    iput v1, v2, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    return-void

    .line 764
    :cond_1e
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_e

    :cond_1f
    const/4 v8, 0x0

    .line 765
    :goto_e
    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v9, :cond_20

    const/4 v9, 0x1

    goto :goto_f

    :cond_20
    const/4 v9, 0x0

    .line 767
    :goto_f
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v4, v11, :cond_22

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v11, :cond_21

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    goto :goto_11

    :cond_22
    :goto_10
    const/4 v4, 0x1

    .line 769
    :goto_11
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v3, v11, :cond_24

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v11, :cond_23

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v3, 0x1

    :goto_13
    const/4 v11, 0x0

    if-eqz v8, :cond_25

    .line 771
    iget v13, v1, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v13, v13, v11

    if-lez v13, :cond_25

    const/4 v13, 0x1

    goto :goto_14

    :cond_25
    const/4 v13, 0x0

    :goto_14
    if-eqz v9, :cond_26

    .line 772
    iget v14, v1, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v11, v14, v11

    if-lez v11, :cond_26

    const/4 v11, 0x1

    goto :goto_15

    :cond_26
    const/4 v11, 0x0

    :goto_15
    if-nez v10, :cond_27

    return-void

    .line 777
    :cond_27
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 783
    iget v15, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v12, Landroidx/constraintlayout/a/a/a/b$a;->b:I

    if-eq v15, v12, :cond_29

    iget v12, v2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    sget v15, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    if-eq v12, v15, :cond_29

    if-eqz v8, :cond_29

    iget v8, v1, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v8, :cond_29

    if-eqz v9, :cond_29

    iget v8, v1, Landroidx/constraintlayout/a/a/e;->p:I

    if-eqz v8, :cond_28

    goto :goto_16

    :cond_28
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1e

    .line 788
    :cond_29
    :goto_16
    instance-of v8, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v8, :cond_2a

    instance-of v8, v1, Landroidx/constraintlayout/a/a/l;

    if-eqz v8, :cond_2a

    .line 789
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/a/a/l;

    .line 790
    move-object v9, v10

    check-cast v9, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v9, v8, v6, v7}, Landroidx/constraintlayout/widget/VirtualLayout;->a(Landroidx/constraintlayout/a/a/l;II)V

    goto :goto_17

    .line 792
    :cond_2a
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 794
    :goto_17
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/a/a/e;->c(II)V

    .line 796
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 797
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 798
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 808
    iget v15, v1, Landroidx/constraintlayout/a/a/e;->r:I

    if-lez v15, :cond_2b

    .line 809
    iget v15, v1, Landroidx/constraintlayout/a/a/e;->r:I

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_18

    :cond_2b
    move v15, v8

    .line 811
    :goto_18
    iget v5, v1, Landroidx/constraintlayout/a/a/e;->s:I

    if-lez v5, :cond_2c

    .line 812
    iget v5, v1, Landroidx/constraintlayout/a/a/e;->s:I

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 814
    :cond_2c
    iget v5, v1, Landroidx/constraintlayout/a/a/e;->u:I

    if-lez v5, :cond_2d

    .line 815
    iget v5, v1, Landroidx/constraintlayout/a/a/e;->u:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v16, v6

    goto :goto_19

    :cond_2d
    move/from16 v16, v6

    move v5, v9

    .line 817
    :goto_19
    iget v6, v1, Landroidx/constraintlayout/a/a/e;->v:I

    if-lez v6, :cond_2e

    .line 818
    iget v6, v1, Landroidx/constraintlayout/a/a/e;->v:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 821
    :cond_2e
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v6

    const/4 v0, 0x1

    invoke-static {v6, v0}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v6

    if-nez v6, :cond_30

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v13, :cond_2f

    if-eqz v4, :cond_2f

    .line 824
    iget v3, v1, Landroidx/constraintlayout/a/a/e;->V:F

    int-to-float v4, v5

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v15, v0

    goto :goto_1a

    :cond_2f
    if-eqz v11, :cond_30

    if-eqz v3, :cond_30

    .line 827
    iget v3, v1, Landroidx/constraintlayout/a/a/e;->V:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v5, v0

    :cond_30
    :goto_1a
    if-ne v8, v15, :cond_32

    if-eq v9, v5, :cond_31

    goto :goto_1c

    :cond_31
    move v0, v5

    :goto_1b
    const/4 v3, -0x1

    goto :goto_1e

    :cond_32
    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v15, :cond_33

    .line 834
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1d

    :cond_33
    move/from16 v6, v16

    :goto_1d
    if-eq v9, v5, :cond_34

    .line 837
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 839
    :cond_34
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 840
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/a/a/e;->c(II)V

    .line 841
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 842
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 843
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v3

    move v15, v12

    move v12, v3

    goto :goto_1b

    :goto_1e
    if-eq v12, v3, :cond_35

    const/4 v3, 0x1

    goto :goto_1f

    :cond_35
    const/4 v3, 0x0

    .line 854
    :goto_1f
    iget v4, v2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    if-ne v15, v4, :cond_37

    iget v4, v2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    if-eq v0, v4, :cond_36

    goto :goto_20

    :cond_36
    const/4 v5, 0x0

    goto :goto_21

    :cond_37
    :goto_20
    const/4 v5, 0x1

    :goto_21
    iput-boolean v5, v2, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    .line 856
    iget-boolean v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v4, :cond_38

    const/4 v3, 0x1

    :cond_38
    if-eqz v3, :cond_39

    const/4 v4, -0x1

    if-eq v12, v4, :cond_39

    .line 8055
    iget v1, v1, Landroidx/constraintlayout/a/a/e;->ad:I

    if-eq v1, v12, :cond_39

    const/4 v1, 0x1

    .line 860
    iput-boolean v1, v2, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    .line 862
    :cond_39
    iput v15, v2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    .line 863
    iput v0, v2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    .line 864
    iput-boolean v3, v2, Landroidx/constraintlayout/a/a/a/b$a;->k:Z

    .line 865
    iput v12, v2, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    return-void
.end method
