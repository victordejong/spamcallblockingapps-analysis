.class public Lcom/allinone/callerid/g/a;
.super Landroidx/fragment/app/Fragment;
.source "CommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/g/a$e;
    }
.end annotation


# instance fields
.field private e0:Lcom/allinone/callerid/search/CallLogBean;

.field private f0:Landroid/content/Context;

.field private g0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

.field private h0:Landroid/widget/RelativeLayout;

.field private i0:Lcom/allinone/callerid/b/g;

.field private j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CommentContent;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Ljava/lang/String;

.field private l0:Ljava/lang/String;

.field private m0:I

.field private n0:I

.field private o0:Lcom/allinone/callerid/util/x;

.field private p0:Landroid/view/ViewStub;

.field private q0:Landroid/widget/PopupWindow;

.field private r0:Landroid/view/View;

.field private s0:Ljava/lang/String;

.field private t0:Lcom/allinone/callerid/g/a$e;

.field private u0:Landroid/widget/ProgressBar;

.field private v0:Landroid/widget/ProgressBar;

.field private w0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->j0:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/allinone/callerid/g/a;->m0:I

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/g/a;->w0:Z

    return-void
.end method

.method private A2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/allinone/callerid/util/x;

    .line 3
    invoke-static {p4}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "android"

    invoke-direct {p2, p1, v1, p3, p4}, Lcom/allinone/callerid/util/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/allinone/callerid/g/a;->o0:Lcom/allinone/callerid/util/x;

    .line 4
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1002c3

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private B2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->e0:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->s0:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->g0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/a$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/a$c;-><init>(Lcom/allinone/callerid/g/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private C2(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0907ef

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/allinone/callerid/g/a;->p0:Landroid/view/ViewStub;

    const v1, 0x7f0904d2

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/allinone/callerid/g/a;->h0:Landroid/widget/RelativeLayout;

    const v1, 0x7f090647

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904ad

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f09041e

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    const v4, 0x7f090460

    .line 7
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/allinone/callerid/g/a;->u0:Landroid/widget/ProgressBar;

    const v4, 0x7f090465

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/allinone/callerid/g/a;->v0:Landroid/widget/ProgressBar;

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->h0:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/allinone/callerid/g/a;->f0:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p1, v0, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 12
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->B2(Z)V

    .line 13
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->z1(Z)V

    .line 14
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 16
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 17
    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 18
    new-instance p1, Lcom/allinone/callerid/b/g;

    iget-object v0, p0, Lcom/allinone/callerid/g/a;->g0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iget-object v1, p0, Lcom/allinone/callerid/g/a;->j0:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/allinone/callerid/b/g;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/allinone/callerid/g/a;->i0:Lcom/allinone/callerid/b/g;

    .line 19
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->i0:Lcom/allinone/callerid/b/g;

    new-instance v0, Lcom/allinone/callerid/g/a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/a$a;-><init>(Lcom/allinone/callerid/g/a;)V

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/b/g;->C(Lcom/allinone/callerid/b/g$b;)V

    .line 21
    new-instance p1, Lcom/allinone/callerid/g/a$b;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/g/a$b;-><init>(Lcom/allinone/callerid/g/a;)V

    invoke-virtual {v3, p1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    return-void
.end method

.method private D2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->e0:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->k0:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->e0:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->l0:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/allinone/callerid/g/a;->m0:I

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/g/a;->f0:Landroid/content/Context;

    iget-object v3, p0, Lcom/allinone/callerid/g/a;->k0:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/allinone/callerid/g/a;->z2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private E2()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->p0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0906d9

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
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->p0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/g/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->j0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->l0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d2(Lcom/allinone/callerid/g/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/a;->m0:I

    return p0
.end method

.method static synthetic e2(Lcom/allinone/callerid/g/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/g/a;->m0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/allinone/callerid/g/a;->m0:I

    return v0
.end method

.method static synthetic f2(Lcom/allinone/callerid/g/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/g/a;->z2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic g2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->u0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->s0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->i0:Lcom/allinone/callerid/b/g;

    return-object p0
.end method

.method static synthetic j2(Lcom/allinone/callerid/g/a;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->p0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic k2(Lcom/allinone/callerid/g/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->h0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic l2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/search/CallLogBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->e0:Lcom/allinone/callerid/search/CallLogBean;

    return-object p0
.end method

.method static synthetic m2(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/a;->E2()V

    return-void
.end method

.method static synthetic n2(Lcom/allinone/callerid/g/a;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/g/a;->A2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o2(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/a;->D2()V

    return-void
.end method

.method static synthetic p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->q0:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic q2(Lcom/allinone/callerid/g/a;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a;->q0:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic r2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/util/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->o0:Lcom/allinone/callerid/util/x;

    return-object p0
.end method

.method static synthetic s2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->g0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    return-object p0
.end method

.method static synthetic t2(Lcom/allinone/callerid/g/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/a;->n0:I

    return p0
.end method

.method static synthetic u2(Lcom/allinone/callerid/g/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/g/a;->n0:I

    return p1
.end method

.method static synthetic v2(Lcom/allinone/callerid/g/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/g/a;->w0:Z

    return p0
.end method

.method static synthetic w2(Lcom/allinone/callerid/g/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/g/a;->w0:Z

    return p1
.end method

.method static synthetic x2(Lcom/allinone/callerid/g/a;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->v0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic y2(Lcom/allinone/callerid/g/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/a;->k0:Ljava/lang/String;

    return-object p0
.end method

.method private z2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/allinone/callerid/g/a$d;

    invoke-direct {p1, p0, p3}, Lcom/allinone/callerid/g/a$d;-><init>(Lcom/allinone/callerid/g/a;Ljava/lang/String;)V

    invoke-static {p2, p3, p4, p1}, Lcom/allinone/callerid/i/a/j/e;->a(Ljava/lang/String;Ljava/lang/String;ILcom/allinone/callerid/i/a/j/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->u0:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->v0:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->j0:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/g/a;->E2()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    iget-object p2, p2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->r0:Landroid/view/View;

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0c00b2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/a;->r0:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->r0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/a;->C2(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/a;->r0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->t0:Lcom/allinone/callerid/g/a$e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/a;->f0:Landroid/content/Context;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/a;->t0:Lcom/allinone/callerid/g/a$e;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    return-void
.end method

.method public c1(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->c1(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "contact_tony"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    iput-object p1, p0, Lcom/allinone/callerid/g/a;->e0:Lcom/allinone/callerid/search/CallLogBean;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/g/a;->B2()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/g/a;->f0:Landroid/content/Context;

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->g0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    .line 4
    new-instance v0, Lcom/allinone/callerid/g/a$e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/a$e;-><init>(Lcom/allinone/callerid/g/a;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/a;->t0:Lcom/allinone/callerid/g/a$e;

    .line 5
    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/g/a;->t0:Lcom/allinone/callerid/g/a$e;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.allinone.callerid.UPDATE_COMMENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
