.class public Lcom/github/jdsjlzx/recyclerview/LRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "LRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;,
        Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;,
        Lcom/github/jdsjlzx/recyclerview/LRecyclerView$c;
    }
.end annotation


# instance fields
.field private O0:Z

.field private P0:Z

.field private Q0:Z

.field private R0:Z

.field private S0:Lc/b/a/g/g;

.field private T0:Lc/b/a/g/e;

.field private U0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;

.field private V0:Lc/b/a/g/b;

.field private W0:Lc/b/a/g/a;

.field private X0:Landroid/view/View;

.field private Y0:Landroid/view/View;

.field private final Z0:Landroidx/recyclerview/widget/RecyclerView$i;

.field private a1:F

.field private b1:F

.field private c1:I

.field private d1:Lcom/github/jdsjlzx/recyclerview/a;

.field private e1:Z

.field private f1:Z

.field private g1:I

.field private h1:F

.field private i1:F

.field private j1:Z

.field protected k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

.field private l1:[I

.field private m1:I

.field private n1:I

.field private o1:I

.field private p1:Z

.field private q1:I

.field private r1:I

.field private s1:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    .line 5
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->P0:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    .line 7
    iput-boolean p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    .line 8
    new-instance p3, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$c;-><init>(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;Lcom/github/jdsjlzx/recyclerview/LRecyclerView$a;)V

    iput-object p3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    const/high16 p3, -0x40800000    # -1.0f

    .line 9
    iput p3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    const/16 p3, 0xa

    .line 10
    iput p3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->c1:I

    .line 11
    iput-boolean p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->e1:Z

    .line 12
    iput p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->n1:I

    .line 13
    iput p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    .line 14
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    .line 15
    iput p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    .line 16
    iput p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->r1:I

    .line 17
    sget-object p1, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->d:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->s1:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    .line 18
    invoke-direct {p0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->F1()V

    return-void
.end method

.method static synthetic A1(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->c1:I

    return p0
.end method

.method static synthetic B1(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic C1(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;)Lc/b/a/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    return-object p0
.end method

.method private D1(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->U0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    if-nez p1, :cond_2

    .line 3
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    .line 4
    invoke-interface {v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-le p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    .line 7
    invoke-interface {v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;->d()V

    .line 8
    iput v3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    goto :goto_0

    :cond_1
    const/16 v2, -0x14

    if-ge p1, v2, :cond_2

    .line 9
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    if-nez p1, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    .line 11
    invoke-interface {v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;->a()V

    .line 12
    iput v3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    .line 13
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    if-eqz p1, :cond_3

    if-gtz p2, :cond_4

    :cond_3
    if-nez p1, :cond_5

    if-gez p2, :cond_5

    .line 14
    :cond_4
    iget p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->o1:I

    :cond_5
    return-void
.end method

.method private E1([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private F1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->g1:I

    .line 2
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setRefreshHeader(Lc/b/a/g/b;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->P0:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/jdsjlzx/view/LoadingFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreFooter(Lc/b/a/g/a;)V

    :cond_1
    return-void
.end method

.method static synthetic y1(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->X0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic z1(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;)Lcom/github/jdsjlzx/recyclerview/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    return-object p0
.end method


# virtual methods
.method public G1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    invoke-interface {v0}, Lc/b/a/g/b;->getHeaderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H1(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->c1:I

    .line 2
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->e1:Z

    .line 4
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    .line 5
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    invoke-interface {v0}, Lc/b/a/g/b;->c()V

    .line 6
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    if-eqz p1, :cond_1

    .line 9
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    .line 10
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    invoke-interface {p1}, Lc/b/a/g/a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public L0(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->L0(I)V

    .line 2
    iput p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->n1:I

    .line 3
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->U0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;->c(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->T0:Lc/b/a/g/e;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->P0:Z

    if-eqz p1, :cond_2

    .line 6
    iget p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->n1:I

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->J()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->Y()I

    move-result p1

    if-lez v0, :cond_2

    .line 10
    iget v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->m1:I

    add-int/lit8 v2, p1, -0x1

    if-lt v1, v2, :cond_2

    if-le p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->e1:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    .line 14
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    invoke-interface {p1}, Lc/b/a/g/a;->c()V

    .line 15
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->T0:Lc/b/a/g/e;

    invoke-interface {p1}, Lc/b/a/g/e;->a()V

    :cond_2
    return-void
.end method

.method public M0(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->M0(II)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    if-nez v1, :cond_3

    .line 4
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;->d:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    iput-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;->f:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    iput-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;->e:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    iput-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_0
    sget-object v1, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$b;->a:[I

    iget-object v2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->k1:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$LayoutManagerType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 12
    :cond_4
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 13
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t2()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j2([I)[I

    .line 16
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    invoke-direct {p0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->E1([I)I

    move-result v1

    iput v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->m1:I

    .line 17
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d2([I)[I

    .line 18
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->l1:[I

    invoke-direct {p0, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->E1([I)I

    move-result v0

    goto :goto_2

    .line 19
    :cond_6
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result v1

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b2()I

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->m1:I

    goto :goto_1

    .line 21
    :cond_7
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z1()I

    move-result v1

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b2()I

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->m1:I

    :goto_1
    move v0, v1

    .line 23
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->D1(II)V

    .line 24
    iget v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->r1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->r1:I

    .line 25
    iget p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 26
    :cond_8
    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->r1:I

    if-gez p1, :cond_9

    const/4 p1, 0x0

    .line 27
    :cond_9
    iput p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    .line 28
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->p1:Z

    if-eqz p1, :cond_a

    if-nez p2, :cond_a

    .line 29
    iput v3, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    .line 30
    :cond_a
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->U0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;

    if-eqz p1, :cond_b

    .line 31
    iget p2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->q1:I

    invoke-interface {p1, v0, p2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;->b(II)V

    :cond_b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->j1:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->z(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->j1:Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->f1:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 5
    iget v4, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->i1:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 6
    iget v4, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->h1:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 7
    iget v4, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->g1:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    .line 8
    iput-boolean v2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->f1:Z

    return v1

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->f1:Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->h1:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->i1:F

    .line 12
    iput-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->f1:Z

    .line 13
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 4
    iput v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    .line 5
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->G1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    invoke-interface {v0}, Lc/b/a/g/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->S0:Lc/b/a/g/g;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    .line 9
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->S0:Lc/b/a/g/g;

    invoke-interface {v0}, Lc/b/a/g/g;->a()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    .line 13
    iget v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->b1:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->b1:F

    .line 14
    invoke-virtual {p0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->G1()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Q0:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->s1:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    sget-object v2, Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;->d:Lcom/github/jdsjlzx/recyclerview/AppBarStateChangeListener$State;

    if-ne v1, v2, :cond_3

    .line 15
    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    iget v2, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->b1:F

    invoke-interface {v1, v0, v2}, Lc/b/a/g/b;->a(FF)V

    .line 16
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    invoke-interface {v0}, Lc/b/a/g/b;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->a1:F

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->b1:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->j1:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->z(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 3
    :cond_0
    check-cast p1, Lcom/github/jdsjlzx/recyclerview/a;

    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {p1}, Lcom/github/jdsjlzx/recyclerview/a;->I()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->x(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a()V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->j1:Z

    .line 8
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    invoke-virtual {p1, v0}, Lcom/github/jdsjlzx/recyclerview/a;->O(Lc/b/a/g/b;)V

    .line 9
    iget-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->P0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    invoke-virtual {p1}, Lcom/github/jdsjlzx/recyclerview/a;->F()I

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/github/jdsjlzx/recyclerview/a;->D(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setArrowImageView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setArrowImageView(I)V

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->X0:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Z0:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a()V

    return-void
.end method

.method public setFooterViewColor(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->setIndicatorColor(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/jdsjlzx/view/LoadingFooter;->setHintTextColor(I)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/github/jdsjlzx/view/LoadingFooter;->setViewBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setFooterViewHint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->setLoadingHint(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/jdsjlzx/view/LoadingFooter;->setNoMoreHint(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/github/jdsjlzx/view/LoadingFooter;->setNoNetWorkHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHeaderViewColor(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setIndicatorColor(I)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setHintTextColor(I)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setViewBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setLScrollListener(Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->U0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView$d;

    return-void
.end method

.method public setLoadMoreEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->d1:Lcom/github/jdsjlzx/recyclerview/a;

    const-string v1, "LRecyclerViewAdapter cannot be null, please make sure the variable mWrapAdapter have been initialized."

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->P0:Z

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/github/jdsjlzx/recyclerview/a;->N()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    invoke-interface {p1}, Lc/b/a/g/a;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLoadMoreFooter(Lc/b/a/g/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    .line 2
    invoke-interface {p1}, Lc/b/a/g/a;->getFootView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setLoadingMoreProgressStyle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/LoadingFooter;->setProgressStyle(I)V

    :cond_0
    return-void
.end method

.method public setNoMore(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->R0:Z

    .line 2
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->e1:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    invoke-interface {p1}, Lc/b/a/g/a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->W0:Lc/b/a/g/a;

    invoke-interface {p1}, Lc/b/a/g/a;->a()V

    :goto_0
    return-void
.end method

.method public setOnLoadMoreListener(Lc/b/a/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->T0:Lc/b/a/g/e;

    return-void
.end method

.method public setOnNetWorkErrorListener(Lc/b/a/g/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->Y0:Landroid/view/View;

    check-cast v0, Lcom/github/jdsjlzx/view/LoadingFooter;

    .line 2
    sget-object v1, Lcom/github/jdsjlzx/view/LoadingFooter$State;->g:Lcom/github/jdsjlzx/view/LoadingFooter$State;

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/view/LoadingFooter;->setState(Lcom/github/jdsjlzx/view/LoadingFooter$State;)V

    .line 3
    new-instance v1, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$a;

    invoke-direct {v1, p0, p1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView$a;-><init>(Lcom/github/jdsjlzx/recyclerview/LRecyclerView;Lc/b/a/g/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnRefreshListener(Lc/b/a/g/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->S0:Lc/b/a/g/g;

    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->O0:Z

    return-void
.end method

.method public setRefreshHeader(Lc/b/a/g/b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->j1:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setRefreshHeader must been invoked before setting the adapter."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRefreshProgressStyle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->V0:Lc/b/a/g/b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setProgressStyle(I)V

    :cond_0
    return-void
.end method
