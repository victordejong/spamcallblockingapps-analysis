.class public Lcom/allinone/callerid/g/c;
.super Landroidx/fragment/app/Fragment;
.source "EZCallPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/g/c$m;,
        Lcom/allinone/callerid/g/c$l;
    }
.end annotation


# instance fields
.field private A0:Lcom/allinone/callerid/customview/BaseEditText;

.field private B0:Landroid/view/ViewStub;

.field private C0:Landroid/content/Context;

.field private D0:Landroid/text/TextWatcher;

.field public E0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

.field private G0:Landroid/view/View;

.field private H0:Z

.field private I0:Landroid/os/Handler;

.field private J0:Ljava/lang/Runnable;

.field private K0:Landroid/graphics/Typeface;

.field private L0:Landroid/graphics/Typeface;

.field public e0:Lcom/github/clans/fab/FloatingActionButton;

.field public f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field public h0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

.field private j0:I

.field private k0:Lcom/allinone/callerid/customview/MyListView;

.field private l0:Lcom/allinone/callerid/b/m;

.field private m0:Lcom/allinone/callerid/g/c$m;

.field private n0:Lcom/allinone/callerid/customview/SideBar;

.field private o0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private q0:Lcom/allinone/callerid/b/i;

.field private r0:Landroid/widget/LinearLayout;

.field private s0:Landroid/widget/TextView;

.field private t0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private v0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private w0:Landroid/widget/LinearLayout;

.field private x0:Lcom/allinone/callerid/g/c$l;

.field private y0:Landroid/widget/FrameLayout;

.field private z0:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->f0:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->g0:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->h0:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->p0:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->t0:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/allinone/callerid/g/c$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/g/c$l;-><init>(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/g/c$c;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->x0:Lcom/allinone/callerid/g/c$l;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->E0:Ljava/util/List;

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->I0:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/allinone/callerid/g/c$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/c$d;-><init>(Lcom/allinone/callerid/g/c;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->J0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A2(Lcom/allinone/callerid/g/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->J0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic B2(Lcom/allinone/callerid/g/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->u0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic C2(Lcom/allinone/callerid/g/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->I0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic D2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->x0:Lcom/allinone/callerid/g/c$l;

    return-object p0
.end method

.method static synthetic E2(Lcom/allinone/callerid/g/c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->z0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic F2(Lcom/allinone/callerid/g/c;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/c;->V2(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G2(Lcom/allinone/callerid/g/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->t0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic H2(Lcom/allinone/callerid/g/c;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->B0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic I2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->o0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic J2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/b/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->q0:Lcom/allinone/callerid/b/i;

    return-object p0
.end method

.method static synthetic K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

    return-object p0
.end method

.method static synthetic L2(Lcom/allinone/callerid/g/c;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->y0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic M2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->v0:Ljava/util/ArrayList;

    return-object p0
.end method

.method private N2()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->v0:Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v1, Lcom/allinone/callerid/g/c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$a;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/r/a;->g(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/e;)V

    return-void
.end method

.method private O2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/c$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$e;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private P2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09039d

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/g/c;->r0:Landroid/widget/LinearLayout;

    .line 3
    invoke-direct {p0, v0}, Lcom/allinone/callerid/g/c;->W2(Landroid/view/View;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/g/c;->i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private Q2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->n0:Lcom/allinone/callerid/customview/SideBar;

    new-instance v1, Lcom/allinone/callerid/g/c$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$j;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/SideBar;->setOnTouchingLetterChangedListener(Lcom/allinone/callerid/customview/SideBar$a;)V

    return-void
.end method

.method private R2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->z0:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/g/c$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$g;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/g/c$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/c$h;-><init>(Lcom/allinone/callerid/g/c;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->D0:Landroid/text/TextWatcher;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    new-instance v1, Lcom/allinone/callerid/g/c$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$i;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private S2(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->K0:Landroid/graphics/Typeface;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->L0:Landroid/graphics/Typeface;

    const v0, 0x7f09020d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->y0:Landroid/widget/FrameLayout;

    const v0, 0x7f0902ac

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->z0:Landroid/widget/ImageView;

    const v0, 0x7f090195

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    const v0, 0x7f090565

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/SideBar;

    iput-object v0, p0, Lcom/allinone/callerid/g/c;->n0:Lcom/allinone/callerid/customview/SideBar;

    const v0, 0x7f090133

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->n0:Lcom/allinone/callerid/customview/SideBar;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->o0:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lcom/allinone/callerid/b/i;

    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    iget-object v1, p0, Lcom/allinone/callerid/g/c;->o0:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

    invoke-direct {p1, v0, v1, v2}, Lcom/allinone/callerid/b/i;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->q0:Lcom/allinone/callerid/b/i;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private T2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v1, Lcom/allinone/callerid/g/c$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$f;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/i/a/r/a;->h(Landroid/content/Context;ZLcom/allinone/callerid/i/a/r/g;)V

    return-void
.end method

.method private U2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->f0:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/g/c;->t0:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->h0:Ljava/util/List;

    new-instance v3, Lcom/allinone/callerid/g/c$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/g/c$b;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/r/a;->k(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/allinone/callerid/i/a/r/c;)V

    return-void
.end method

.method private V2(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation

    const-string v0, "\\-|\\s"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "^([0-9]|[/+]).*"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 3
    :try_start_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/g/c;->o0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    .line 5
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    .line 10
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->u:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->d:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-object v1
.end method

.method private W2(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0907c8

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09067c

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/g/c;->s0:Landroid/widget/TextView;

    const v1, 0x7f0903a5

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/g/c;->w0:Landroid/widget/LinearLayout;

    const v1, 0x7f0906dc

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->L0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906dd

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->K0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906de

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->L0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090673

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/g/c;->K0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->s0:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->L0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->K0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09037b

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/customview/MyListView;

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->k0:Lcom/allinone/callerid/customview/MyListView;

    .line 12
    new-instance p1, Lcom/allinone/callerid/b/m;

    iget-object v0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->g0:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v2}, Lcom/allinone/callerid/b/m;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->l0:Lcom/allinone/callerid/b/m;

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->k0:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    new-instance p1, Lcom/allinone/callerid/g/c$k;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/g/c$k;-><init>(Lcom/allinone/callerid/g/c;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private X2()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->B0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0906db

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->B0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->X2()V

    return-void
.end method

.method static synthetic b2(Lcom/allinone/callerid/g/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->s0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c2(Lcom/allinone/callerid/g/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->w0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/b/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->l0:Lcom/allinone/callerid/b/m;

    return-object p0
.end method

.method static synthetic e2(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/b/m;)Lcom/allinone/callerid/b/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->l0:Lcom/allinone/callerid/b/m;

    return-object p1
.end method

.method static synthetic f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    return-object p0
.end method

.method static synthetic g2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/MyListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->k0:Lcom/allinone/callerid/customview/MyListView;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->U2()V

    return-void
.end method

.method static synthetic i2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->P2()V

    return-void
.end method

.method static synthetic j2(Lcom/allinone/callerid/g/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k2(Lcom/allinone/callerid/g/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/c;->S2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic l2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->O2()V

    return-void
.end method

.method static synthetic m2(Lcom/allinone/callerid/g/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->r0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic n2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->Q2()V

    return-void
.end method

.method static synthetic o2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->R2()V

    return-void
.end method

.method static synthetic p2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->p0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic q2(Lcom/allinone/callerid/g/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->p0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic r2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/BaseEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    return-object p0
.end method

.method static synthetic s2(Lcom/allinone/callerid/g/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/c;->j0:I

    return p0
.end method

.method static synthetic t2(Lcom/allinone/callerid/g/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/g/c;->j0:I

    return p1
.end method

.method static synthetic u2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->m0:Lcom/allinone/callerid/g/c$m;

    return-object p0
.end method

.method static synthetic v2(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/g/c$m;)Lcom/allinone/callerid/g/c$m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->m0:Lcom/allinone/callerid/g/c$m;

    return-object p1
.end method

.method static synthetic w2(Lcom/allinone/callerid/g/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->C0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x2(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/c;->N2()V

    return-void
.end method

.method static synthetic y2(Lcom/allinone/callerid/g/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/c;->T2(Z)V

    return-void
.end method

.method static synthetic z2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/c;->u0:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p3

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00b0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    const p2, 0x7f0907f0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->B0:Landroid/view/ViewStub;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    const p2, 0x7f09043a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/customview/NestedScrollingListView;

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->i0:Lcom/allinone/callerid/customview/NestedScrollingListView;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/allinone/callerid/g/c;->H0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->m0:Lcom/allinone/callerid/g/c$m;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->C0:Landroid/content/Context;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/c;->m0:Lcom/allinone/callerid/g/c$m;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->x0:Lcom/allinone/callerid/g/c$l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/allinone/callerid/g/c;->G0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v2, p0, Lcom/allinone/callerid/g/c;->D0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iput-object v1, p0, Lcom/allinone/callerid/g/c;->D0:Landroid/text/TextWatcher;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public V1(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/allinone/callerid/g/c;->H0:Z

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/g/c;->H0:Z

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/g/c$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/c$c;-><init>(Lcom/allinone/callerid/g/c;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "in_speeddial"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/c;->e0:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/c;->e0:Lcom/github/clans/fab/FloatingActionButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/c;->A0:Lcom/allinone/callerid/customview/BaseEditText;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/g/c;->C0:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->F0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v0, 0x7f090237

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/clans/fab/FloatingActionButton;

    iput-object p1, p0, Lcom/allinone/callerid/g/c;->e0:Lcom/github/clans/fab/FloatingActionButton;

    return-void
.end method
