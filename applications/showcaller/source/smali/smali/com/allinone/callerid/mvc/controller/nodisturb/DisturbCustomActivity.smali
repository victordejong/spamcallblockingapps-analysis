.class public Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;
.super Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;
.source "DisturbCustomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

.field private B:Landroid/graphics/Typeface;

.field private C:I

.field private final v:Ljava/lang/String;

.field private w:Landroidx/recyclerview/widget/RecyclerView;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lcom/github/clans/fab/FloatingActionMenu;

.field private z:Lcom/allinone/callerid/b/a0/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;-><init>()V

    const-string v0, "DisturbCustomActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/allinone/callerid/b/a0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->z:Lcom/allinone/callerid/b/a0/b;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->x:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/github/clans/fab/FloatingActionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->l0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->k0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->j0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->C:I

    return p0
.end method

.method private j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/bean/NoDisturbBean;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NoDisturbBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NoDisturbBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/bean/NoDisturbBean;->setNumber(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {v0, p1}, Lcom/allinone/callerid/i/a/l/e/c;->a(Lcom/allinone/callerid/bean/NoDisturbBean;Lcom/allinone/callerid/i/a/l/e/b;)V

    :cond_0
    return-void
.end method

.method private k0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V

    return-void
.end method

.method private l0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$e;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V

    return-void
.end method

.method private m0()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/DeletableEditText;

    const v2, 0x7f090186

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f100080

    .line 4
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x7f100083

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$h;

    invoke-direct {v4, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$g;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->C:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected W()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->W()V

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/l/e/c;->c(Lcom/allinone/callerid/i/a/l/e/a;)V

    return-void
.end method

.method protected X()V
    .locals 8

    const v0, 0x7f0c003c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const v0, 0x7f04011b

    const v2, 0x7f06003a

    .line 5
    invoke-static {p0, v0, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->C:I

    const v0, 0x7f09015b

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f090160

    .line 7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09015e

    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f09015c

    .line 9
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->x:Landroid/widget/LinearLayout;

    const v3, 0x7f09015d

    .line 10
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09015f

    .line 11
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/clans/fab/FloatingActionMenu;->setContentDescription(Ljava/lang/String;)V

    const v4, 0x7f0901b5

    .line 13
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/clans/fab/FloatingActionButton;

    const v5, 0x7f0901b7

    .line 14
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/github/clans/fab/FloatingActionButton;

    const v6, 0x7f0901b6

    .line 15
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/github/clans/fab/FloatingActionButton;

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    .line 17
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 20
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->B:Landroid/graphics/Typeface;

    invoke-virtual {v6, v2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 22
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 24
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 25
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    new-instance v2, Lcom/allinone/callerid/b/a0/b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/b/a0/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->z:Lcom/allinone/callerid/b/a0/b;

    .line 27
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f08015b

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v4, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v5, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v6, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 35
    new-instance v0, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-direct {v0, v1}, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;-><init>(Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->A:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    .line 36
    invoke-static {p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->A:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.allinone.callerid.WHITE_DATE_UPDATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09015b

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->l0()V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->q(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->k0()V

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$d;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 12
    :pswitch_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->y:Lcom/github/clans/fab/FloatingActionMenu;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->m0()V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->V()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901b5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->A:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->A:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onResume()V

    return-void
.end method
