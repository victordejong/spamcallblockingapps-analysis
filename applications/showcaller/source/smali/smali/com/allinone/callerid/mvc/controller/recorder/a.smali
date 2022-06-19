.class public Lcom/allinone/callerid/mvc/controller/recorder/a;
.super Landroidx/fragment/app/Fragment;
.source "ContactRecordFragment.java"


# instance fields
.field private final e0:Ljava/lang/String;

.field private f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

.field private g0:Landroid/view/View;

.field private h0:Landroidx/recyclerview/widget/RecyclerView;

.field private i0:Lcom/allinone/callerid/b/z/c;

.field private j0:Landroid/widget/LinearLayout;

.field private k0:Landroid/widget/LinearLayout;

.field private l0:Ljava/util/Timer;

.field private m0:Ljava/util/TimerTask;

.field private n0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "ContactRecordFragment"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->e0:Ljava/lang/String;

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    return-object p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/mvc/controller/recorder/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->l2()V

    return-void
.end method

.method static synthetic c2(Lcom/allinone/callerid/mvc/controller/recorder/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->i2()V

    return-void
.end method

.method static synthetic d2(Lcom/allinone/callerid/mvc/controller/recorder/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->j2()V

    return-void
.end method

.method static synthetic e2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/b/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->i0:Lcom/allinone/callerid/b/z/c;

    return-object p0
.end method

.method static synthetic f2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->j0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic g2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->k0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->h0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private i2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "call_record_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->c0()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    :cond_0
    return-void
.end method

.method private j2()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "record"

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->m0:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->l0:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "call_record_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->c0()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    goto :goto_0

    .line 12
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5f00\u542f"

    .line 13
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private l2()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_request"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->n0:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/f;->A(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->m0:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 8
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/a$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->m0:Ljava/util/TimerTask;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->l0:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00b9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const p3, 0x7f09048e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->j0:Landroid/widget/LinearLayout;

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const p3, 0x7f090490

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const v0, 0x7f09048f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const v1, 0x7f09048d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->k0:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const v1, 0x7f090496

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const v2, 0x7f090493

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    new-instance p1, Lcom/allinone/callerid/b/z/c;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/allinone/callerid/b/z/c;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->i0:Lcom/allinone/callerid/b/z/c;

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->h0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->i0:Lcom/allinone/callerid/b/z/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    new-instance p1, Lcom/allinone/callerid/mvc/controller/recorder/a$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a;)V

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->l0:Ljava/util/Timer;

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    return-object p1
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->g0:Landroid/view/View;

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

.method public Y0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->n0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->n0:Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->m0:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->k2()V

    return-void
.end method

.method k2()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/a$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$c;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    return-void
.end method
