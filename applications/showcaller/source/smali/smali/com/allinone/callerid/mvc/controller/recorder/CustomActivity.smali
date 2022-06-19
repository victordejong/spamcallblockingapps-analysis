.class public Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CustomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$d;,
        Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$f;,
        Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;
    }
.end annotation


# instance fields
.field private A:Lcom/github/clans/fab/FloatingActionMenu;

.field private B:Lcom/github/clans/fab/FloatingActionButton;

.field private C:Lcom/github/clans/fab/FloatingActionButton;

.field private D:Lcom/github/clans/fab/FloatingActionButton;

.field private E:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Lcom/allinone/callerid/b/z/d;

.field public K:Z

.field public L:I

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroidx/recyclerview/widget/RecyclerView;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CustomActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    .line 4
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Lcom/allinone/callerid/b/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->z:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private a0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090135

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/BaseEditText;

    const v2, 0x7f090136

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/BaseEditText;

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    new-instance v3, Landroidx/appcompat/app/a$a;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100053

    .line 7
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/a$a;->p(I)Landroidx/appcompat/app/a$a;

    .line 8
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    const v0, 0x7f1000bc

    .line 9
    new-instance v4, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$b;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/app/a$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    const v0, 0x7f100318

    .line 10
    new-instance v4, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;

    invoke-direct {v4, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;Lcom/allinone/callerid/customview/BaseEditText;Lcom/allinone/callerid/customview/BaseEditText;)V

    invoke-virtual {v3, v0, v4}, Landroidx/appcompat/app/a$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private c0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    const v2, 0x7f01004d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    const v2, 0x7f010041

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/c;

    invoke-direct {v1}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 8
    new-instance v0, Lcom/allinone/callerid/b/z/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/b/z/d;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private e0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->B:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->C:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->D:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f0()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    const v0, 0x7f090115

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090112

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f090113

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f090114

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->I:Landroid/widget/ImageView;

    const v0, 0x7f0903d9

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f09011c

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f09011d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090110

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09010d

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->z:Landroid/widget/LinearLayout;

    const v1, 0x7f09010e

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09010f

    .line 13
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/clans/fab/FloatingActionMenu;->setContentDescription(Ljava/lang/String;)V

    const v2, 0x7f0901b5

    .line 15
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->B:Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f0901b6

    .line 16
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->C:Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f0901b9

    .line 17
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->D:Lcom/github/clans/fab/FloatingActionButton;

    .line 18
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->G:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private i0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/d;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->G:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {v2}, Lcom/allinone/callerid/b/z/d;->G()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->J:Lcom/allinone/callerid/b/z/d;

    invoke-virtual {v2}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->G:Landroid/widget/TextView;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->c0()V

    return-void
.end method

.method public k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->E:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->j0()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "phoneDataType"

    const-string v1, "customType"

    const v2, 0x7f010001

    const/high16 v3, 0x7f010000

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v5, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v4}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    goto :goto_0

    .line 9
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v5, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    invoke-direct {p1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    iget v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v4}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    goto :goto_0

    .line 16
    :sswitch_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->a0()V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->A:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v4}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    goto :goto_0

    .line 19
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 21
    :sswitch_4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->b0()V

    goto :goto_0

    .line 22
    :sswitch_5
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->j0()V

    goto :goto_0

    .line 23
    :sswitch_6
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->i0()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090111 -> :sswitch_6
        0x7f090112 -> :sswitch_5
        0x7f090114 -> :sswitch_4
        0x7f09011c -> :sswitch_3
        0x7f0901b5 -> :sswitch_2
        0x7f0901b6 -> :sswitch_1
        0x7f0901b9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "customType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->L:I

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->f0()V

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->d0()V

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->e0()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->g0()V

    return-void
.end method
