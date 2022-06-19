.class final Landroidx/constraintlayout/motion/widget/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field private final c:Landroidx/constraintlayout/motion/widget/p$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/p$a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 640
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    const/16 v0, 0x11

    .line 641
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    .line 649
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 650
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/e$b;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 653
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 654
    sget v1, Landroidx/constraintlayout/widget/e$b;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 655
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    goto :goto_1

    .line 656
    :cond_0
    sget v1, Landroidx/constraintlayout/widget/e$b;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 657
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    .line 688
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " (*)  could not find id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/p$a;)V
    .locals 6

    .line 664
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OnClick could not find id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4433
    :cond_1
    iget v0, p3, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 5433
    iget p3, p3, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    if-ne v0, v1, :cond_2

    .line 672
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 676
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_4

    if-ne p2, v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v2, v5

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    if-ne p2, p3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    const/4 v3, 0x1

    :cond_7
    or-int p2, v0, v3

    if-eqz p2, :cond_8

    .line 683
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 714
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 6433
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 7060
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/p;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8040
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 8433
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 8549
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne v0, v2, :cond_1

    .line 721
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 9433
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 721
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(I)V

    return-void

    .line 724
    :cond_1
    new-instance v2, Landroidx/constraintlayout/motion/widget/p$a;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 10433
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 724
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/p$a;-><init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 11433
    iput v0, v2, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 726
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 12433
    iget v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 13433
    iput v0, v2, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 727
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 13796
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    .line 731
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 14433
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 731
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 732
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    and-int/lit8 v7, v3, 0x10

    if-nez v7, :cond_6

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_b

    .line 736
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 15433
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 736
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/p;->c:Landroidx/constraintlayout/motion/widget/p$a;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-eq v7, v8, :cond_8

    .line 737
    invoke-virtual {p1, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 15549
    :cond_8
    iget v7, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    .line 15950
    iget v8, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->g:I

    if-eq v7, v8, :cond_a

    .line 16558
    iget v7, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, 0x0

    .line 16700
    :cond_b
    :goto_6
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    if-ne v7, v0, :cond_d

    :cond_c
    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    .line 17433
    :cond_d
    iget v0, v7, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 16704
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    .line 18433
    iget v7, v7, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-ne v7, v2, :cond_e

    .line 16706
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v2, v0, :cond_f

    goto :goto_7

    .line 16708
    :cond_e
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-eq v2, v7, :cond_c

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    if-ne v2, v0, :cond_f

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v5, :cond_13

    if-eqz v4, :cond_10

    .line 746
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_10

    .line 747
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 18796
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    :cond_10
    const/4 v0, 0x0

    if-eqz v3, :cond_11

    .line 749
    iget v2, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_11

    .line 750
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 19787
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(F)V

    return-void

    :cond_11
    if-eqz v4, :cond_12

    .line 752
    iget v2, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_12

    .line 753
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 754
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_12
    if-eqz v3, :cond_13

    .line 755
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_13

    .line 756
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/p$a$a;->c:Landroidx/constraintlayout/motion/widget/p$a;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Landroidx/constraintlayout/motion/widget/p$a;)V

    .line 757
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_13
    return-void
.end method
