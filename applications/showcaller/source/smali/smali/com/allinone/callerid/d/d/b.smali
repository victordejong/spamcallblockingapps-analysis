.class public Lcom/allinone/callerid/d/d/b;
.super Landroidx/fragment/app/Fragment;
.source "PopularFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/d/b$k;
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/String;

.field private f0:Landroid/graphics/Typeface;

.field private g0:Landroid/view/View;

.field private h0:Landroid/content/Context;

.field private i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

.field private j0:Lcom/allinone/callerid/d/a/b;

.field private k0:Landroid/widget/ProgressBar;

.field private l0:Landroid/widget/LinearLayout;

.field private m0:I

.field private n0:Landroid/widget/FrameLayout;

.field private o0:Lcom/allinone/callerid/d/d/b$k;

.field private p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

.field private r0:Lcom/allinone/callerid/customview/MyGridLayoutManager;

.field private s0:Landroid/app/AlertDialog;

.field private t0:Z

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:Z

.field private y0:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private z0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "PopularFragment"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->e0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/allinone/callerid/d/d/b;->m0:I

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/d/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/d/d/b;->m0:I

    return p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b;->y2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method

.method static synthetic c2(Lcom/allinone/callerid/d/d/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/d/d/b;->m0:I

    return p1
.end method

.method static synthetic d2(Lcom/allinone/callerid/d/d/b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/d/d/b;->m0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/allinone/callerid/d/d/b;->m0:I

    return v0
.end method

.method static synthetic e2(Lcom/allinone/callerid/d/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/d/d/b;->z0:Z

    return p0
.end method

.method static synthetic f2(Lcom/allinone/callerid/d/d/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->z0:Z

    return p1
.end method

.method static synthetic g2(Lcom/allinone/callerid/d/d/b;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->k0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/d/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/d/d/b;->w2()V

    return-void
.end method

.method static synthetic i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    return-object p0
.end method

.method static synthetic j2(Lcom/allinone/callerid/d/d/b;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    return-object p0
.end method

.method static synthetic k2(Lcom/allinone/callerid/d/d/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->p0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l2(Lcom/allinone/callerid/d/d/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->p0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic m2(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b;->t2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method

.method static synthetic n2(Lcom/allinone/callerid/d/d/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    return-object p0
.end method

.method static synthetic p2(Lcom/allinone/callerid/d/d/b;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/d/b;->s0:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic q2(Lcom/allinone/callerid/d/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/d/d/b;->w0:Z

    return p0
.end method

.method static synthetic r2(Lcom/allinone/callerid/d/d/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->w0:Z

    return p1
.end method

.method private s2(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0903d2

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    .line 2
    new-instance v0, Lcom/allinone/callerid/customview/MyGridLayoutManager;

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/allinone/callerid/customview/MyGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->r0:Lcom/allinone/callerid/customview/MyGridLayoutManager;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->r0:Lcom/allinone/callerid/customview/MyGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/MyGridLayoutManager;->f3(Z)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    iget-object v2, p0, Lcom/allinone/callerid/d/d/b;->r0:Lcom/allinone/callerid/customview/MyGridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setRefreshProgressStyle(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadingMoreProgressStyle(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/c;

    invoke-direct {v2}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    new-instance v2, Lcom/allinone/callerid/d/d/b$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/d/d/b$a;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v0, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setOnLoadMoreListener(Lc/b/a/g/e;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    new-instance v2, Lcom/allinone/callerid/d/d/b$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/d/d/b$c;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v0, v2}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setOnRefreshListener(Lc/b/a/g/g;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setPullRefreshEnabled(Z)V

    .line 13
    new-instance v0, Lcom/allinone/callerid/d/a/b;

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/allinone/callerid/d/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    .line 14
    new-instance v0, Lcom/github/jdsjlzx/recyclerview/a;

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    invoke-direct {v0, v1}, Lcom/github/jdsjlzx/recyclerview/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    new-instance v1, Lcom/allinone/callerid/d/d/b$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/b$d;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/a;->P(Lcom/github/jdsjlzx/recyclerview/a$d;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    new-instance v2, Lcom/allinone/callerid/d/d/b$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/d/d/b$e;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/d/a/b;->E(Lcom/allinone/callerid/d/a/b$e;)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    new-instance v2, Lcom/allinone/callerid/d/d/b$f;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/d/d/b$f;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/d/a/b;->F(Lcom/allinone/callerid/d/a/b$f;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->i0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v1, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f090463

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->k0:Landroid/widget/ProgressBar;

    const v0, 0x7f0903a6

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->l0:Landroid/widget/LinearLayout;

    const v0, 0x7f0906e0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0906e1

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090233

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f09073b

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v2, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->l0:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0904f8

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->n0:Landroid/widget/FrameLayout;

    const v0, 0x7f090702

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->n0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->j()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->n0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private t2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    const-string v3, "homeinfo"

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    iget-object v4, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b;->x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    iget-object v4, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    const-class v5, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    iget-object v3, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/allinone/callerid/d/d/b;->x0:Z

    .line 22
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->y0:Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private v2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->t0:Z

    .line 2
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->u0:Z

    .line 3
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->v0:Z

    .line 4
    iput-boolean p1, p0, Lcom/allinone/callerid/d/d/b;->w0:Z

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/gg/b;->b()Lcom/allinone/callerid/util/gg/b;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/d/d/b$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/d/d/b$i;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/gg/b;->c(Lcom/allinone/callerid/util/gg/b$d;)V

    return-void
.end method

.method private w2()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/allinone/callerid/d/f/a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    const-class v2, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/allinone/callerid/d/f/f;->u(Z)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_user_guide"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090650

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902ca

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090227

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0907b3

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    new-instance v1, Lcom/allinone/callerid/d/d/b$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/b$g;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Lcom/allinone/callerid/d/d/b$h;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/d/d/b$h;-><init>(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->s0:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->s0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 15
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b;->v2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private y2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/allinone/callerid/d/d/b;->u0:Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unlock_resouse"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/d/d/b$j;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/d/d/b$j;-><init>(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

    if-nez p3, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p3

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    const p3, 0x7f0c00b8

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 6
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->f0:Landroid/graphics/Typeface;

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b;->s2(Landroid/view/View;)V

    .line 11
    new-instance p1, Lcom/allinone/callerid/d/d/b$k;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/allinone/callerid/d/d/b$k;-><init>(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/d/d/b$a;)V

    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->o0:Lcom/allinone/callerid/d/d/b$k;

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/d/d/b;->o0:Lcom/allinone/callerid/d/d/b$k;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->o0:Lcom/allinone/callerid/d/d/b$k;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->o0:Lcom/allinone/callerid/d/d/b$k;

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

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/d/d/b;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
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

.method public V1(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Y0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->n0:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/d/d/b;->x0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->y0:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->y0:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/d/d/b;->x2(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/d/d/b;->x0:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/allinone/callerid/d/d/b;->y0:Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090233

    if-eq p1, v0, :cond_1

    const v0, 0x7f0904f8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v0, 0x271a

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, "download_count"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/allinone/callerid/d/d/b;->u2(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public u2(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->l0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->k0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b;->j0:Lcom/allinone/callerid/d/a/b;

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->i()Z

    move-result v1

    iput-boolean v1, v0, Lcom/allinone/callerid/d/a/b;->j:Z

    const/4 v0, 0x1

    .line 5
    new-instance v1, Lcom/allinone/callerid/d/d/b$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/b$b;-><init>(Lcom/allinone/callerid/d/d/b;)V

    invoke-static {p1, p2, v0, v1}, Lcom/allinone/callerid/d/e/c;->a(ILjava/lang/String;ZLcom/allinone/callerid/d/e/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public w0(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->w0(IILandroid/content/Intent;)V

    .line 2
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "callscreen"

    const-string p3, "onActivityResult"

    .line 3
    invoke-static {p2, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x271a

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b;->n0:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->h0:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object p1, p0, Lcom/allinone/callerid/d/d/b;->q0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    return-void
.end method
