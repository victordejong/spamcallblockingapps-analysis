.class public Lcom/callerid/block/fragment/a;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/fragment/a$k;,
        Lcom/callerid/block/fragment/a$j;
    }
.end annotation


# instance fields
.field private X:Lcom/github/clans/fab/FloatingActionButton;

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lcom/callerid/block/customview/NestedScrollingListView;

.field private a0:Lcom/callerid/block/customview/MyListView;

.field private b0:Lcom/callerid/block/b/h;

.field private c0:Lcom/callerid/block/fragment/a$k;

.field private d0:Lcom/callerid/block/customview/SideBar;

.field private e0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private g0:Lcom/callerid/block/b/f;

.field private h0:Landroid/widget/LinearLayout;

.field private i0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private j0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Lcom/callerid/block/fragment/a$j;

.field private l0:Landroid/widget/FrameLayout;

.field private m0:Landroid/widget/ImageView;

.field private n0:Landroid/widget/EditText;

.field private o0:Landroid/view/ViewStub;

.field private p0:Landroid/content/Context;

.field private q0:Landroid/text/TextWatcher;

.field private r0:Lcom/callerid/block/main/MainActivity;

.field private s0:Landroid/view/View;

.field private t0:Landroid/os/Handler;

.field private u0:Ljava/lang/Runnable;

.field private v0:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->Y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->f0:Ljava/util/ArrayList;

    new-instance v0, Lcom/callerid/block/fragment/a$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/fragment/a$j;-><init>(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$a;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->k0:Lcom/callerid/block/fragment/a$j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->t0:Landroid/os/Handler;

    new-instance v0, Lcom/callerid/block/fragment/a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/a$a;-><init>(Lcom/callerid/block/fragment/a;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->u0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic E1(Lcom/callerid/block/fragment/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->r2()V

    return-void
.end method

.method static synthetic F1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->Y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic G1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/h;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->b0:Lcom/callerid/block/b/h;

    return-object p0
.end method

.method static synthetic H1(Lcom/callerid/block/fragment/a;Lcom/callerid/block/b/h;)Lcom/callerid/block/b/h;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->b0:Lcom/callerid/block/b/h;

    return-object p1
.end method

.method static synthetic I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    return-object p0
.end method

.method static synthetic J1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/MyListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->a0:Lcom/callerid/block/customview/MyListView;

    return-object p0
.end method

.method static synthetic K1(Lcom/callerid/block/fragment/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->l2()V

    return-void
.end method

.method static synthetic L1(Lcom/callerid/block/fragment/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->m2()V

    return-void
.end method

.method static synthetic M1(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->f0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic N1(Lcom/callerid/block/fragment/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->f0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic O1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/fragment/a$k;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->c0:Lcom/callerid/block/fragment/a$k;

    return-object p0
.end method

.method static synthetic P1(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$k;)Lcom/callerid/block/fragment/a$k;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->c0:Lcom/callerid/block/fragment/a$k;

    return-object p1
.end method

.method static synthetic Q1(Lcom/callerid/block/fragment/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->p0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic R1(Lcom/callerid/block/fragment/a;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->h0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic S1(Lcom/callerid/block/fragment/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->i2()V

    return-void
.end method

.method static synthetic T1(Lcom/callerid/block/fragment/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/a;->o2(Z)V

    return-void
.end method

.method static synthetic U1(Lcom/callerid/block/fragment/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->u0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic V1(Lcom/callerid/block/fragment/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->t0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic W1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/fragment/a$j;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->k0:Lcom/callerid/block/fragment/a$j;

    return-object p0
.end method

.method static synthetic X1(Lcom/callerid/block/fragment/a;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic Y1(Lcom/callerid/block/fragment/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->m0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Z1(Lcom/callerid/block/fragment/a;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/a;->p2(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->i0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b2(Lcom/callerid/block/fragment/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->i0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c2(Lcom/callerid/block/fragment/a;)Landroid/view/ViewStub;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->o0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic d2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->e0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/f;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->g0:Lcom/callerid/block/b/f;

    return-object p0
.end method

.method static synthetic f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->Z:Lcom/callerid/block/customview/NestedScrollingListView;

    return-object p0
.end method

.method static synthetic g2(Lcom/callerid/block/fragment/a;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->l0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h2(Lcom/callerid/block/fragment/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/a;->j0:Ljava/util/ArrayList;

    return-object p0
.end method

.method private i2()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->j0:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    new-instance v1, Lcom/callerid/block/fragment/a$i;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$i;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/f/g;->g(Landroid/content/Context;Lcom/callerid/block/h/a/f/h;)V

    return-void
.end method

.method private j2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/a$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$b;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private k2()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/callerid/block/fragment/a;->h0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/callerid/block/fragment/a;->q2(Landroid/view/View;)V

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->Z:Lcom/callerid/block/customview/NestedScrollingListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private l2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->d0:Lcom/callerid/block/customview/SideBar;

    new-instance v1, Lcom/callerid/block/fragment/a$h;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$h;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/customview/SideBar;->setOnTouchingLetterChangedListener(Lcom/callerid/block/customview/SideBar$a;)V

    return-void
.end method

.method private m2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->m0:Landroid/widget/ImageView;

    new-instance v1, Lcom/callerid/block/fragment/a$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$e;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/callerid/block/fragment/a$f;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/a$f;-><init>(Lcom/callerid/block/fragment/a;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->q0:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    new-instance v1, Lcom/callerid/block/fragment/a$g;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$g;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private n2(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->v0:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    const v0, 0x7f090155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->l0:Landroid/widget/FrameLayout;

    const v0, 0x7f0901b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->m0:Landroid/widget/ImageView;

    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    const v0, 0x7f09032a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/SideBar;

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->d0:Lcom/callerid/block/customview/SideBar;

    const v0, 0x7f09011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/callerid/block/fragment/a;->X:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v1, Lcom/callerid/block/fragment/a$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$c;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->d0:Lcom/callerid/block/customview/SideBar;

    invoke-virtual {v0, p1}, Lcom/callerid/block/customview/SideBar;->setTextView(Landroid/widget/TextView;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->e0:Ljava/util/ArrayList;

    new-instance p1, Lcom/callerid/block/b/f;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->e0:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callerid/block/fragment/a;->Z:Lcom/callerid/block/customview/NestedScrollingListView;

    invoke-direct {p1, v0, v1, v2}, Lcom/callerid/block/b/f;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->g0:Lcom/callerid/block/b/f;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->Z:Lcom/callerid/block/customview/NestedScrollingListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private o2(Z)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    new-instance v1, Lcom/callerid/block/fragment/a$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$d;-><init>(Lcom/callerid/block/fragment/a;)V

    invoke-static {v0, p1, v1}, Lcom/callerid/block/h/a/f/g;->h(Landroid/content/Context;ZLcom/callerid/block/h/a/f/m;)V

    return-void
.end method

.method private p2(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "^([0-9]|[/+]).*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const-string v1, "\\-|\\s"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/fragment/a;->e0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/callerid/block/fragment/a;->e0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->C()Lcom/callerid/block/util/SortToken;

    move-result-object v4

    iget-object v4, v4, Lcom/callerid/block/util/SortToken;->b:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->C()Lcom/callerid/block/util/SortToken;

    move-result-object v4

    iget-object v4, v4, Lcom/callerid/block/util/SortToken;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method

.method private q2(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0904a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->v0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/MyListView;

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->a0:Lcom/callerid/block/customview/MyListView;

    new-instance p1, Lcom/callerid/block/b/h;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->Y:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/callerid/block/b/h;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->b0:Lcom/callerid/block/b/h;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->a0:Lcom/callerid/block/customview/MyListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private r2()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a;->o0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09041b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a;->o0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public C0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    return-void
.end method

.method public H0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->p0:Landroid/content/Context;

    check-cast p1, Lcom/callerid/block/main/MainActivity;

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->r0:Lcom/callerid/block/main/MainActivity;

    return-void
.end method

.method public q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c006a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    const p2, 0x7f0904ae

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->o0:Landroid/view/ViewStub;

    iget-object p1, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    const p2, 0x7f0902a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/NestedScrollingListView;

    iput-object p1, p0, Lcom/callerid/block/fragment/a;->Z:Lcom/callerid/block/customview/NestedScrollingListView;

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->k2()V

    iget-object p1, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/a;->n2(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/callerid/block/fragment/a;->j2()V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    return-object p1
.end method

.method public r0()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->r0()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a;->c0:Lcom/callerid/block/fragment/a$k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->p0:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->c0:Lcom/callerid/block/fragment/a$k;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a;->k0:Lcom/callerid/block/fragment/a$j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/callerid/block/fragment/a;->q0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v1, p0, Lcom/callerid/block/fragment/a;->q0:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/callerid/block/fragment/a;->s0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public y1(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y1(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/a;->X:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/a;->X:Lcom/github/clans/fab/FloatingActionButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/a;->n0:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method
