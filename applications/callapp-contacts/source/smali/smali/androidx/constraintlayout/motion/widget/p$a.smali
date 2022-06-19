.class public final Landroidx/constraintlayout/motion/widget/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/p$a$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:F

.field final j:Landroidx/constraintlayout/motion/widget/p;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroidx/constraintlayout/motion/widget/s;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/p$a$a;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Z

.field p:I

.field q:I

.field r:I


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/motion/widget/p;II)V
    .locals 4

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    .line 436
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 437
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 438
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    .line 453
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    .line 454
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    .line 455
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    .line 456
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->r:I

    .line 791
    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    .line 792
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 793
    iput p3, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 794
    iput p4, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 1060
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p;->g:I

    .line 795
    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    .line 2060
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p;->h:I

    .line 796
    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    .line 436
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 437
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 438
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    .line 453
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    .line 454
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    .line 455
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    .line 456
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->r:I

    .line 3060
    iget v0, p1, Landroidx/constraintlayout/motion/widget/p;->g:I

    .line 800
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    .line 4060
    iget v0, p1, Landroidx/constraintlayout/motion/widget/p;->h:I

    .line 801
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    .line 802
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    .line 803
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    .line 4807
    sget-object v0, Landroidx/constraintlayout/widget/e$b;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 4808
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/p$a;->a(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 4809
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p$a;)V
    .locals 4

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    .line 436
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 437
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 438
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->l:Landroidx/constraintlayout/motion/widget/s;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/p$a;->m:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    .line 453
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    .line 454
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    .line 455
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    .line 456
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p$a;->r:I

    .line 764
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->j:Landroidx/constraintlayout/motion/widget/p;

    if-eqz p2, :cond_0

    .line 766
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    .line 767
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    .line 768
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    .line 769
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    .line 770
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    .line 771
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->k:Ljava/util/ArrayList;

    .line 772
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    .line 773
    iget p1, p2, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    :cond_0
    return-void
.end method

.method private a(Landroidx/constraintlayout/motion/widget/p;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 813
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_e

    .line 815
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 816
    sget v6, Landroidx/constraintlayout/widget/e$b;->Transition_constraintSetEnd:I

    const-string v7, "layout"

    if-ne v5, v6, :cond_0

    .line 817
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    .line 818
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 820
    new-instance v3, Landroidx/constraintlayout/widget/c;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 821
    iget v4, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;I)V

    .line 5060
    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    .line 822
    iget v5, p0, Landroidx/constraintlayout/motion/widget/p$a;->c:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 828
    :cond_0
    sget v6, Landroidx/constraintlayout/widget/e$b;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_1

    .line 829
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    .line 830
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 832
    new-instance v3, Landroidx/constraintlayout/widget/c;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 833
    iget v4, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;I)V

    .line 6060
    iget-object v4, p1, Landroidx/constraintlayout/motion/widget/p;->e:Landroid/util/SparseArray;

    .line 834
    iget v5, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 836
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/e$b;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_5

    .line 837
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 839
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, -0x2

    if-ne v7, v3, :cond_2

    .line 840
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    if-eq v3, v4, :cond_d

    .line 842
    iput v8, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    goto/16 :goto_1

    .line 844
    :cond_2
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 845
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->f:Ljava/lang/String;

    const-string v6, "/"

    .line 846
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 847
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->g:I

    .line 848
    iput v8, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    goto/16 :goto_1

    .line 850
    :cond_3
    iput v4, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    goto/16 :goto_1

    .line 853
    :cond_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->e:I

    goto :goto_1

    .line 856
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_duration:I

    if-ne v5, v3, :cond_6

    .line 857
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->h:I

    goto :goto_1

    .line 858
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_staggered:I

    if-ne v5, v3, :cond_7

    .line 859
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->i:F

    goto :goto_1

    .line 860
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_autoTransition:I

    if-ne v5, v3, :cond_8

    .line 861
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->n:I

    goto :goto_1

    .line 862
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_android_id:I

    if-ne v5, v3, :cond_9

    .line 863
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->a:I

    goto :goto_1

    .line 864
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_a

    .line 865
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    goto :goto_1

    .line 866
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_b

    .line 867
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->p:I

    goto :goto_1

    .line 868
    :cond_b
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_c

    .line 869
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->q:I

    goto :goto_1

    .line 870
    :cond_c
    sget v3, Landroidx/constraintlayout/widget/e$b;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_d

    .line 871
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->r:I

    :cond_d
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 874
    :cond_e
    iget p1, p0, Landroidx/constraintlayout/motion/widget/p$a;->d:I

    if-ne p1, v4, :cond_f

    .line 875
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/p$a;->b:Z

    :cond_f
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/p$a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
