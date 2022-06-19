.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field O:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public P:Landroidx/constraintlayout/a/a/f;

.field protected Q:Z

.field protected R:Landroidx/constraintlayout/widget/b;

.field S:I

.field T:I

.field U:I

.field V:I

.field W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroidx/constraintlayout/widget/c;

.field private h:I

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/constraintlayout/widget/d;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 563
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    const/4 v1, -0x1

    .line 511
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 517
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 518
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:I

    .line 519
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:I

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    .line 921
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 564
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 568
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 518
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:I

    .line 522
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    .line 921
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 569
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 518
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:I

    .line 522
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    .line 921
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 574
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/a/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 518
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:I

    .line 522
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    .line 921
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 580
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    .line 482
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return p0
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 924
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 3511
    iput-object p0, v0, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 925
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/a/b$b;)V

    .line 926
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    if-eqz p1, :cond_8

    .line 929
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 930
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    .line 932
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 933
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v3, :cond_0

    .line 934
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    goto :goto_2

    .line 935
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v3, :cond_1

    .line 936
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    goto :goto_2

    .line 937
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v3, :cond_2

    .line 938
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    .line 939
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v3, :cond_3

    .line 940
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    .line 941
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v3, :cond_4

    .line 942
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    .line 943
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v2, v3, :cond_5

    .line 944
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 947
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 949
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    goto :goto_2

    .line 952
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v3, :cond_6

    .line 953
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 955
    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/c;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 956
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/c;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 958
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    .line 960
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 965
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/f;->o(I)V

    return-void
.end method

.method private a()Z
    .locals 16

    move-object/from16 v6, p0

    .line 1138
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 1142
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1143
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_16

    .line 4155
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v8

    .line 4157
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_3

    .line 4161
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4162
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4166
    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/e;->k()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    if-eqz v8, :cond_5

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_5

    .line 4174
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4176
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 4177
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v1, v5, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x2f

    .line 4178
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v0, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 4180
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4182
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/a/a/e;

    move-result-object v4

    .line 4730
    iput-object v5, v4, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4205
    :cond_5
    iget v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-eq v2, v0, :cond_d

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_d

    .line 4207
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4208
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne v5, v10, :cond_c

    instance-of v5, v4, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v5, :cond_c

    .line 4209
    check-cast v4, Landroidx/constraintlayout/widget/Constraints;

    .line 5152
    iget-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/c;

    if-nez v5, :cond_6

    .line 5153
    new-instance v5, Landroidx/constraintlayout/widget/c;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/c;

    .line 5156
    :cond_6
    iget-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/c;

    .line 5557
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    move-result v10

    .line 5558
    iget-object v11, v5, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_b

    .line 5560
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5561
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 5563
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v14

    .line 5564
    iget-boolean v15, v5, Landroidx/constraintlayout/widget/c;->b:Z

    if-eqz v15, :cond_8

    if-eq v14, v0, :cond_7

    goto :goto_6

    .line 5565
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5567
    :cond_8
    :goto_6
    iget-object v15, v5, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 5568
    iget-object v1, v5, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5570
    :cond_9
    iget-object v0, v5, Landroidx/constraintlayout/widget/c;->c:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/c$a;

    .line 5571
    instance-of v1, v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_a

    .line 5572
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 6308
    invoke-virtual {v0, v14, v13}, Landroidx/constraintlayout/widget/c$a;->a(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 6309
    instance-of v1, v12, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v1, :cond_a

    .line 6310
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iput v3, v1, Landroidx/constraintlayout/widget/c$b;->ad:I

    .line 6311
    check-cast v12, Landroidx/constraintlayout/widget/Barrier;

    .line 6312
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    .line 7138
    iget v15, v12, Landroidx/constraintlayout/widget/Barrier;->a:I

    .line 6312
    iput v15, v1, Landroidx/constraintlayout/widget/c$b;->ab:I

    .line 6313
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/Barrier;->b()[I

    move-result-object v15

    iput-object v15, v1, Landroidx/constraintlayout/widget/c$b;->ae:[I

    .line 6314
    iget-object v1, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    .line 7240
    iget-object v12, v12, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 8234
    iget v12, v12, Landroidx/constraintlayout/a/a/a;->c:I

    .line 6314
    iput v12, v1, Landroidx/constraintlayout/widget/c$b;->ac:I

    .line 8256
    :cond_a
    invoke-virtual {v0, v14, v13}, Landroidx/constraintlayout/widget/c$a;->a(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    goto :goto_5

    .line 5157
    :cond_b
    iget-object v0, v4, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/c;

    .line 4209
    iput-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    goto/16 :goto_4

    .line 4214
    :cond_d
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_e

    .line 4215
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4218
    :cond_e
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 9181
    iget-object v0, v0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4220
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_f

    .line 4223
    iget-object v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 4224
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_13

    .line 4230
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4231
    instance-of v2, v1, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v2, :cond_11

    .line 4232
    check-cast v1, Landroidx/constraintlayout/widget/Placeholder;

    .line 10147
    iget v2, v1, Landroidx/constraintlayout/widget/Placeholder;->a:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_10

    .line 10148
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Placeholder;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 10149
    iget v2, v1, Landroidx/constraintlayout/widget/Placeholder;->c:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    .line 10153
    :cond_10
    iget v2, v1, Landroidx/constraintlayout/widget/Placeholder;->a:I

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 10154
    iget-object v2, v1, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 10155
    iget-object v2, v1, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    .line 10156
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 10157
    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ab:Z

    .line 10158
    iget-object v2, v1, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 10159
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/Placeholder;->setVisibility(I)V

    goto :goto_9

    :cond_11
    const/4 v4, -0x1

    :cond_12
    const/4 v5, 0x0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    .line 4236
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4237
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4238
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iget-object v2, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v9, :cond_14

    .line 4240
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4241
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v2

    .line 4242
    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    :goto_b
    if-ge v10, v9, :cond_16

    .line 4246
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4247
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 4251
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 4252
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;)V

    .line 4253
    iget-object v5, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ZLandroid/view/View;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_16
    return v7
.end method

.method static synthetic b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 482
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 3249
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/4 v0, -0x1

    .line 3251
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 3252
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 3253
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:I

    .line 3254
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:I

    const/4 v0, 0x0

    .line 3255
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:I

    .line 3256
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:I

    return-void
.end method

.method protected static c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1924
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1716
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1719
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    :cond_0
    if-lez v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    .line 1496
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p1

    .line 1498
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 1500
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 1502
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 1506
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 1508
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1519
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1521
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 553
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    check-cast p1, Ljava/lang/String;

    .line 555
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(IIIIZZ)V
    .locals 2

    .line 1596
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 1597
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    add-int/2addr p3, v1

    add-int/2addr p4, v0

    .line 1602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1603
    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p1

    .line 1604
    invoke-static {p4, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 1608
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1609
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    .line 1616
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1617
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 1618
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    return-void

    .line 1620
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1621
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 1622
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/f;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1546
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1547
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1548
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1549
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v9, v8, v6

    .line 1554
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v10

    .line 1556
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 24610
    iput v8, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 24611
    iput v6, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:I

    .line 24612
    iput v10, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 24613
    iput v9, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    move/from16 v6, p3

    .line 24614
    iput v6, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    move/from16 v6, p4

    .line 24615
    iput v6, v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 1558
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v6, v11, :cond_2

    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-gtz v6, :cond_1

    if-lez v11, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1562
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    .line 1571
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_3
    :goto_1
    move v11, v6

    :goto_2
    sub-int v6, v2, v10

    sub-int v9, v4, v9

    .line 24730
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 24731
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->W:Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 24733
    sget-object v10, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 24734
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 24738
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, -0x80000000

    if-eq v3, v15, :cond_7

    if-eqz v3, :cond_6

    if-eq v3, v14, :cond_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 24757
    :cond_5
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v14, v4

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3

    .line 24750
    :cond_6
    sget-object v10, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-nez v13, :cond_4

    .line 24752
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_3

    .line 24742
    :cond_7
    sget-object v10, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-nez v13, :cond_8

    .line 24745
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_3

    :cond_8
    move v14, v6

    :goto_3
    if-eq v5, v15, :cond_c

    if-eqz v5, :cond_b

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v5, v15, :cond_a

    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 24777
    :cond_a
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v13, v2

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_4

    .line 24770
    :cond_b
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-nez v13, :cond_9

    .line 24772
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_4

    .line 24762
    :cond_c
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-nez v13, :cond_d

    .line 24765
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_4

    :cond_d
    move v13, v9

    .line 24781
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v15

    const/4 v7, 0x1

    if-ne v14, v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v15

    if-eq v13, v15, :cond_f

    .line 25067
    :cond_e
    iget-object v15, v1, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    .line 25626
    iput-boolean v7, v15, Landroidx/constraintlayout/a/a/a/e;->c:Z

    :cond_f
    const/4 v15, 0x0

    .line 24784
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 24785
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 24786
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v7, v4

    move/from16 v16, v8

    .line 26264
    iget-object v8, v1, Landroidx/constraintlayout/a/a/e;->B:[I

    aput v7, v8, v15

    .line 24787
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v7, v2

    .line 26268
    iget-object v8, v1, Landroidx/constraintlayout/a/a/e;->B:[I

    const/16 v17, 0x1

    aput v7, v8, v17

    .line 24788
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/a/a/f;->i(I)V

    .line 24789
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 27000
    iget-object v7, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v10, v7, v15

    .line 24791
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 27009
    iget-object v7, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v12, v7, v17

    .line 24793
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 24794
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    sub-int/2addr v7, v4

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/a/a/f;->i(I)V

    .line 24795
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/a/a/f;->j(I)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v6

    move v6, v9

    move v7, v11

    move/from16 v8, v16

    .line 1578
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/a/a/f;->a(IIIIIII)J

    return-void
.end method

.method public final a(ZLandroid/view/View;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/a/a/e;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1263
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    const/4 v10, 0x0

    .line 1264
    iput-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ao:Z

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 10705
    iput v2, v7, Landroidx/constraintlayout/a/a/e;->ak:I

    .line 1267
    iget-boolean v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ab:Z

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    .line 11300
    iput-boolean v11, v7, Landroidx/constraintlayout/a/a/e;->D:Z

    const/16 v2, 0x8

    .line 11705
    iput v2, v7, Landroidx/constraintlayout/a/a/e;->ak:I

    .line 12511
    :cond_0
    iput-object v1, v7, Landroidx/constraintlayout/a/a/e;->aj:Ljava/lang/Object;

    .line 1273
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v2, :cond_1

    .line 1274
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1275
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 13473
    iget-boolean v2, v2, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 1275
    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/a/a/e;Z)V

    .line 1277
    :cond_1
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    const/16 v2, 0x11

    const/4 v12, -0x1

    if-eqz v1, :cond_6

    .line 1278
    move-object v1, v7

    check-cast v1, Landroidx/constraintlayout/a/a/h;

    .line 1279
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ak:I

    .line 1280
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->al:I

    .line 1281
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->am:F

    .line 1282
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v2, :cond_2

    .line 1283
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 1284
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 1285
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_3

    .line 1288
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/h;->a(F)V

    return-void

    :cond_3
    if-eq v3, v12, :cond_4

    .line 1290
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/a/a/h;->p(I)V

    return-void

    :cond_4
    if-eq v4, v12, :cond_5

    .line 1292
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/a/a/h;->q(I)V

    :cond_5
    return-void

    .line 1296
    :cond_6
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ad:I

    .line 1297
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ae:I

    .line 1298
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->af:I

    .line 1299
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ag:I

    .line 1300
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ah:I

    .line 1301
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ai:I

    .line 1302
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->aj:F

    .line 1304
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v2, :cond_b

    .line 1307
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 1308
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 1309
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 1310
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 1311
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 1312
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 1313
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    if-ne v1, v12, :cond_8

    if-ne v2, v12, :cond_8

    .line 1316
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-eq v13, v12, :cond_7

    .line 1317
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    goto :goto_0

    .line 1318
    :cond_7
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-eq v13, v12, :cond_8

    .line 1319
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    :cond_8
    :goto_0
    if-ne v4, v12, :cond_a

    if-ne v5, v12, :cond_a

    .line 1323
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-eq v13, v12, :cond_9

    .line 1324
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    goto :goto_1

    .line 1325
    :cond_9
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-eq v13, v12, :cond_a

    .line 1326
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    :cond_a
    :goto_1
    move v13, v4

    move v15, v6

    move v6, v3

    move v3, v2

    goto :goto_2

    :cond_b
    move v15, v13

    move v13, v4

    :goto_2
    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v18

    .line 1332
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-eq v2, v12, :cond_c

    .line 1333
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/e;

    if-eqz v1, :cond_18

    .line 1335
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    invoke-virtual {v7, v1, v2, v3}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;FI)V

    goto/16 :goto_7

    :cond_c
    if-eq v1, v12, :cond_e

    .line 1340
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_d

    .line 1342
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v1

    move-object/from16 v1, p3

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    goto :goto_3

    :cond_d
    move/from16 v17, v5

    goto :goto_3

    :cond_e
    move/from16 v17, v5

    if-eq v3, v12, :cond_f

    .line 1347
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_f

    .line 1349
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    :cond_f
    :goto_3
    if-eq v13, v12, :cond_10

    .line 1357
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_11

    .line 1359
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    goto :goto_4

    :cond_10
    if-eq v14, v12, :cond_11

    .line 1364
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_11

    .line 1366
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    .line 1373
    :cond_11
    :goto_4
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-eq v1, v12, :cond_12

    .line 1374
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_13

    .line 1376
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    goto :goto_5

    .line 1380
    :cond_12
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-eq v1, v12, :cond_13

    .line 1381
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_13

    .line 1383
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    .line 1390
    :cond_13
    :goto_5
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-eq v1, v12, :cond_14

    .line 1391
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_15

    .line 1393
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    goto :goto_6

    .line 1397
    :cond_14
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-eq v1, v12, :cond_15

    .line 1398
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    if-eqz v3, :cond_15

    .line 1400
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/d$a;II)V

    .line 1407
    :cond_15
    :goto_6
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-eq v1, v12, :cond_16

    .line 1408
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1409
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    if-eqz v2, :cond_16

    if-eqz v1, :cond_16

    .line 1410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_16

    .line 1411
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1412
    iput-boolean v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 1413
    iput-boolean v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 1414
    sget-object v3, Landroidx/constraintlayout/a/a/d$a;->BASELINE:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v3

    .line 1415
    sget-object v4, Landroidx/constraintlayout/a/a/d$a;->BASELINE:Landroidx/constraintlayout/a/a/d$a;

    .line 1416
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 1417
    invoke-virtual {v3, v2, v10, v12, v11}, Landroidx/constraintlayout/a/a/d;->a(Landroidx/constraintlayout/a/a/d;IIZ)Z

    .line 14288
    iput-boolean v11, v7, Landroidx/constraintlayout/a/a/e;->C:Z

    .line 1419
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 15288
    iput-boolean v11, v1, Landroidx/constraintlayout/a/a/e;->C:Z

    .line 1420
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->f()V

    .line 1421
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->f()V

    :cond_16
    const/4 v1, 0x0

    move/from16 v14, v17

    cmpl-float v2, v14, v1

    if-ltz v2, :cond_17

    .line 15321
    iput v14, v7, Landroidx/constraintlayout/a/a/e;->ah:F

    .line 1428
    :cond_17
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_18

    .line 1429
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 15331
    iput v1, v7, Landroidx/constraintlayout/a/a/e;->ai:F

    :cond_18
    :goto_7
    if-eqz p1, :cond_1a

    .line 1433
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-ne v1, v12, :cond_19

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    if-eq v1, v12, :cond_1a

    .line 1435
    :cond_19
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/a/a/e;->d(II)V

    .line 1439
    :cond_1a
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    const/4 v2, -0x2

    if-nez v1, :cond_1d

    .line 1440
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v1, v12, :cond_1c

    .line 1441
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    if-eqz v1, :cond_1b

    .line 1442
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    .line 16000
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v10

    goto :goto_8

    .line 1444
    :cond_1b
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    .line 17000
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v10

    .line 1446
    :goto_8
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroidx/constraintlayout/a/a/d;->g:I

    .line 1447
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroidx/constraintlayout/a/a/d;->g:I

    goto :goto_9

    .line 1449
    :cond_1c
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    .line 18000
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v10

    .line 1450
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/a/a/e;->g(I)V

    goto :goto_9

    .line 1453
    :cond_1d
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 19000
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v10

    .line 1454
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 1455
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v1, v2, :cond_1e

    .line 1456
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 20000
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v10

    .line 1459
    :cond_1e
    :goto_9
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v1, :cond_21

    .line 1460
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v1, v12, :cond_20

    .line 1461
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-eqz v1, :cond_1f

    .line 1462
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    .line 20009
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v2, v11

    goto :goto_a

    .line 1464
    :cond_1f
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    .line 21009
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v2, v11

    .line 1466
    :goto_a
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroidx/constraintlayout/a/a/d;->g:I

    .line 1467
    sget-object v1, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v1

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroidx/constraintlayout/a/a/d;->g:I

    goto :goto_b

    .line 1469
    :cond_20
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    .line 22009
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v2, v11

    .line 1470
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/a/a/e;->h(I)V

    goto :goto_b

    .line 1473
    :cond_21
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 23009
    iget-object v3, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v3, v11

    .line 1474
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 1475
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v1, v2, :cond_22

    .line 1476
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    .line 24009
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v1, v2, v11

    .line 1480
    :cond_22
    :goto_b
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/a/a/e;->a(Ljava/lang/String;)V

    .line 1481
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 24545
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->aB:[F

    aput v1, v2, v10

    .line 1482
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:F

    .line 24554
    iget-object v2, v7, Landroidx/constraintlayout/a/a/e;->aB:[F

    aput v1, v2, v11

    .line 1483
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 24564
    iput v1, v7, Landroidx/constraintlayout/a/a/e;->ax:I

    .line 1484
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 24584
    iput v1, v7, Landroidx/constraintlayout/a/a/e;->ay:I

    .line 1485
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    invoke-virtual {v7, v1, v2, v3, v4}, Landroidx/constraintlayout/a/a/e;->a(IIIF)V

    .line 1488
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:F

    invoke-virtual {v7, v1, v2, v3, v4}, Landroidx/constraintlayout/a/a/e;->b(IIIF)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 982
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 983
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 2

    .line 974
    new-instance v0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1940
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1966
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1967
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1970
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1971
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1975
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1976
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1977
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1978
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1979
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 1983
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1984
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 1987
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1988
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1989
    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    .line 1990
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1991
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 1992
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 1993
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    .line 1994
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 1995
    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v3

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v4

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v3

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v4

    float-to-int v6, v6

    .line 2000
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    .line 2001
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    .line 2002
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    .line 2003
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    .line 2004
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    .line 2005
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    .line 2006
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    .line 2007
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    .line 2008
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 3244
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    .line 3245
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 482
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 31916
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1932
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1908
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 30224
    iget v0, v0, Landroidx/constraintlayout/a/a/f;->aX:I

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    .line 1958
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public isRtl()Z
    .locals 3

    .line 1704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 1705
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1706
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1821
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1822
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_2

    .line 1824
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1825
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1826
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 1828
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->aa:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ac:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    .line 1833
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->ab:Z

    if-nez v0, :cond_1

    .line 1836
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->m()I

    move-result v0

    .line 1837
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->n()I

    move-result v2

    .line 1838
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v3

    add-int/2addr v3, v0

    .line 1839
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    add-int/2addr v1, v2

    .line 1855
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1856
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_1

    .line 1857
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 30113
    iget-object p5, p5, Landroidx/constraintlayout/widget/Placeholder;->b:Landroid/view/View;

    if-eqz p5, :cond_1

    .line 1860
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1865
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    :goto_1
    if-ge p3, p1, :cond_3

    .line 1868
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1869
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->a()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 1636
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1640
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1642
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1643
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1644
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1650
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    if-nez v0, :cond_3

    .line 1651
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-ne v0, p1, :cond_2

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    if-ne v2, p2, :cond_2

    .line 1652
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 27262
    iget-boolean v6, v0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 1653
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 27269
    iget-boolean v7, v0, Landroidx/constraintlayout/a/a/f;->ba:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1652
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, p1, :cond_3

    .line 1657
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    .line 1658
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 1659
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1660
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1664
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 1665
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1666
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 1667
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 28262
    iget-boolean v6, v0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 1668
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 28269
    iget-boolean v7, v0, Landroidx/constraintlayout/a/a/f;->ba:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1667
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void

    .line 1673
    :cond_3
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1674
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 1681
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    .line 28464
    iput-boolean v2, v0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 1683
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    if-eqz v0, :cond_4

    .line 1684
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    .line 1685
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1686
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->e()V

    .line 1690
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/a/a/f;III)V

    .line 1691
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 29262
    iget-boolean v6, v0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 1692
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    .line 29269
    iget-boolean v7, v0, Landroidx/constraintlayout/a/a/f;->ba:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1691
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1007
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v0

    .line 1008
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1009
    instance-of v0, v0, Landroidx/constraintlayout/a/a/h;

    if-nez v0, :cond_1

    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1011
    new-instance v1, Landroidx/constraintlayout/a/a/h;

    invoke-direct {v1}, Landroidx/constraintlayout/a/a/h;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    .line 1012
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 1013
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->an:Landroidx/constraintlayout/a/a/e;

    check-cast v1, Landroidx/constraintlayout/a/a/h;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/h;->o(I)V

    .line 1016
    :cond_1
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 1017
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1018
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->c()V

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1020
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->aa:Z

    .line 1021
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1034
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1035
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1038
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/a/a/e;

    move-result-object v0

    .line 1039
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/f;->b(Landroidx/constraintlayout/a/a/e;)V

    .line 1040
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1041
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 993
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 994
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 995
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 3238
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()V

    .line 3239
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/c;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 535
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 536
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 537
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    .line 539
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 540
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 542
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 544
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 545
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 588
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 589
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 590
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1109
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1112
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 1113
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1096
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 1100
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1063
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:I

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1050
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1053
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:I

    .line 1054
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/d;)V
    .locals 1

    .line 2058
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Landroidx/constraintlayout/widget/d;

    .line 2059
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_0

    .line 31133
    iput-object p1, v0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/widget/d;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1897
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 1898
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/f;->o(I)V

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1807
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1808
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/b;->a(IFF)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
