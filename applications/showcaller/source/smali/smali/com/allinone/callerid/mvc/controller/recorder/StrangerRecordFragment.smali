.class public Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;
.super Landroidx/fragment/app/Fragment;
.source "StrangerRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/String;

.field private f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

.field private g0:Landroid/view/View;

.field private h0:Landroidx/recyclerview/widget/RecyclerView;

.field private i0:Landroid/widget/LinearLayout;

.field private j0:Landroid/widget/TextView;

.field private k0:Landroid/widget/LinearLayout;

.field private l0:Landroid/widget/LinearLayout;

.field private m0:Lcom/allinone/callerid/b/z/g;

.field private n0:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;

.field private o0:Landroid/content/Context;

.field private p0:Ljava/util/Timer;

.field private q0:Ljava/util/TimerTask;

.field private r0:Z

.field private s0:Landroid/widget/RelativeLayout;

.field private t0:Landroid/widget/TextView;

.field private u0:Landroid/widget/TextView;

.field private v0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "StrangerRecordFragment"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->e0:Ljava/lang/String;

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->i0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->m0:Lcom/allinone/callerid/b/z/g;

    return-object p0
.end method

.method static synthetic c2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic d2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->j0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    return-object p0
.end method

.method static synthetic g2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q2()V

    return-void
.end method

.method static synthetic h2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->l2()V

    return-void
.end method

.method static synthetic i2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->n2()V

    return-void
.end method

.method static synthetic j2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->k0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic k2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->l0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private l2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

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
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->c0()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    :cond_0
    return-void
.end method

.method private m2()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0122

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090682

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090684

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090686

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090685

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090683

    .line 7
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901e9

    .line 8
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v7, 0x7f0901eb

    .line 9
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0901ed

    .line 10
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f0901ec

    .line 11
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f0901ea

    .line 12
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 21
    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 25
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 30
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private n2()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "record"

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q0:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p0:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->s0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 9
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "call_record_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->c0()V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->b0()V

    goto :goto_0

    .line 13
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5f00\u542f"

    .line 14
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private p2(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private q2()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_request"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->r0:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/f;->A(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q0:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 8
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$d;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$d;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q0:Ljava/util/TimerTask;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p0:Ljava/util/Timer;

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
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00b9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const p3, 0x7f09048e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->k0:Landroid/widget/LinearLayout;

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const p3, 0x7f090490

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v1, 0x7f09048f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v2, 0x7f09048d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->l0:Landroid/widget/LinearLayout;

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v2, 0x7f090496

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v3, 0x7f090493

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v3, 0x7f090054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->i0:Landroid/widget/LinearLayout;

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v3, 0x7f090681

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->j0:Landroid/widget/TextView;

    .line 12
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const v3, 0x7f090260

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->j0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance p2, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->n0:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;

    .line 18
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.allinone.callerid.UPDATEVIEW"

    .line 19
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o0:Landroid/content/Context;

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->n0:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;

    invoke-virtual {v1, v2, p2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    new-instance p2, Lcom/allinone/callerid/b/z/g;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v1, v2}, Lcom/allinone/callerid/b/z/g;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->m0:Lcom/allinone/callerid/b/z/g;

    .line 22
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 24
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 25
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/c;

    invoke-direct {v2}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 26
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->m0:Lcom/allinone/callerid/b/z/g;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->l(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 28
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->m2()V

    .line 29
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->m0:Lcom/allinone/callerid/b/z/g;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    invoke-virtual {p2, v2}, Lcom/allinone/callerid/b/z/g;->L(Lcom/allinone/callerid/b/z/g$g;)V

    .line 30
    new-instance p2, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p0:Ljava/util/Timer;

    .line 32
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const p3, 0x7f0904c2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->s0:Landroid/widget/RelativeLayout;

    .line 33
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const p3, 0x7f09079a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->t0:Landroid/widget/TextView;

    .line 34
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    const p3, 0x7f090656

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->u0:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->t0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->u0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->u0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 40
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->s0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    return-object p1
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o0:Landroid/content/Context;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->n0:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->r0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->r0:Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q0:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o2()V

    return-void
.end method

.method o2()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$e;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->q2()V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    .line 6
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 7
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :sswitch_2
    const/16 p1, 0x6f

    .line 8
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p2(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :sswitch_3
    const/16 p1, 0x6e

    .line 11
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p2(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 14
    :sswitch_4
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o2()V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->v0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901e9 -> :sswitch_4
        0x7f0901eb -> :sswitch_3
        0x7f0901ed -> :sswitch_2
        0x7f090260 -> :sswitch_1
        0x7f090656 -> :sswitch_0
    .end sparse-switch
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o0:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f0:Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    return-void
.end method
