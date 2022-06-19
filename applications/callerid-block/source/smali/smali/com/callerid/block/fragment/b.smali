.class public Lcom/callerid/block/fragment/b;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/fragment/b$i;,
        Lcom/callerid/block/fragment/b$j;
    }
.end annotation


# instance fields
.field private X:Landroid/widget/ListView;

.field private Y:Lcom/callerid/block/b/k;

.field private Z:Lcom/callerid/block/sms/b;

.field private a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;"
        }
    .end annotation
.end field

.field private b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Lcom/callerid/block/fragment/b$j;

.field private d0:Landroid/widget/LinearLayout;

.field private e0:Lcom/callerid/block/fragment/b$i;

.field private f0:Landroid/content/Context;

.field private g0:Z

.field private h0:Z

.field private i0:Landroid/widget/RelativeLayout;

.field private j0:Landroid/widget/ProgressBar;

.field private k0:Landroid/widget/RelativeLayout;

.field private l0:Lcom/callerid/block/main/MainActivity;

.field private m0:Landroid/widget/LinearLayout;

.field private n0:Landroid/widget/TextView;

.field private o0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/fragment/b;->o0:Z

    return-void
.end method

.method private E1()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->k0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/b;->k0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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

.method static synthetic F1(Lcom/callerid/block/fragment/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic G1(Lcom/callerid/block/fragment/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->Z1()V

    return-void
.end method

.method static synthetic H1(Lcom/callerid/block/fragment/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic I1(Lcom/callerid/block/fragment/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic J1(Lcom/callerid/block/fragment/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/fragment/b;->g0:Z

    return p1
.end method

.method static synthetic K1(Lcom/callerid/block/fragment/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/fragment/b;->h0:Z

    return p0
.end method

.method static synthetic L1(Lcom/callerid/block/fragment/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->c2()V

    return-void
.end method

.method static synthetic M1(Lcom/callerid/block/fragment/b;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/fragment/b;->a2(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic N1(Lcom/callerid/block/fragment/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/b;->d2(Z)V

    return-void
.end method

.method static synthetic O1(Lcom/callerid/block/fragment/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->b2()V

    return-void
.end method

.method static synthetic P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->Y:Lcom/callerid/block/b/k;

    return-object p0
.end method

.method static synthetic Q1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/main/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    return-object p0
.end method

.method static synthetic R1(Lcom/callerid/block/fragment/b;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic S1(Lcom/callerid/block/fragment/b;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->i0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic T1(Lcom/callerid/block/fragment/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->Y1()V

    return-void
.end method

.method static synthetic U1(Lcom/callerid/block/fragment/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->E1()V

    return-void
.end method

.method static synthetic V1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/sms/b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/b;->Z:Lcom/callerid/block/sms/b;

    return-object p0
.end method

.method static synthetic W1(Lcom/callerid/block/fragment/b;Lcom/callerid/block/sms/b;)Lcom/callerid/block/sms/b;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->Z:Lcom/callerid/block/sms/b;

    return-object p1
.end method

.method private X1(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f090112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    const v1, 0x7f0902ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/callerid/block/fragment/b;->i0:Landroid/widget/RelativeLayout;

    const v1, 0x7f090431

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090113

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/fragment/b;->n0:Landroid/widget/TextView;

    const v2, 0x7f09013d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0903e4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902e1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/callerid/block/fragment/b;->k0:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903d8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f09013c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0903d6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f0902be

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->j0:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->n0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Lcom/callerid/block/fragment/b$b;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/b$b;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/callerid/block/fragment/b$c;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/b$c;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->X:Landroid/widget/ListView;

    new-instance v0, Lcom/callerid/block/fragment/b$d;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/b$d;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private Y1()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->j0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/fragment/b$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/b$f;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Z1()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    new-instance v1, Lcom/callerid/block/fragment/b$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/b$e;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-static {v0, v1}, Lcom/callerid/block/util/x0/a;->k(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V

    return-void
.end method

.method private a2(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SMSBean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->isSearched()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->isIs_contacts()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/t0;->W(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x33

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v0, p1}, Lcom/callerid/block/sms/f;->a(Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private b2()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    const/16 v1, 0x1d

    const/16 v2, 0x3e7

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_3

    const-string v1, "android.app.role.SMS"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "tony"

    if-eqz v3, :cond_0

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "This app is the default sms app"

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "This app isn\'t the default sms app"

    invoke-static {v4, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "package"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->B1(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private c2()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/b;->j0:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->Y:Lcom/callerid/block/b/k;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/callerid/block/b/k;->i(Ljava/util/List;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->Y:Lcom/callerid/block/b/k;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    iget-object v2, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    iget-object v2, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    new-instance v3, Lcom/callerid/block/fragment/b$g;

    invoke-direct {v3, p0}, Lcom/callerid/block/fragment/b$g;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-static {v0, v2, v3}, Lcom/callerid/block/mvc/model/sms/d;->b(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/mvc/model/sms/c;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "sms_is_empty"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->n0:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->n0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private d2(Z)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->a0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->b0:Ljava/util/List;

    new-instance v2, Lcom/callerid/block/fragment/b$h;

    invoke-direct {v2, p0, p1}, Lcom/callerid/block/fragment/b$h;-><init>(Lcom/callerid/block/fragment/b;Z)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/mvc/model/sms/d;->b(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/mvc/model/sms/c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public C0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    return-void
.end method

.method public H0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->k0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
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

.method public L0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->L0(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09022d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/callerid/block/fragment/b;->X:Landroid/widget/ListView;

    const p2, 0x7f09020e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callerid/block/fragment/b;->d0:Landroid/widget/LinearLayout;

    const p2, 0x7f09032f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionButton;

    new-instance v0, Lcom/callerid/block/fragment/b$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/b$a;-><init>(Lcom/callerid/block/fragment/b;)V

    invoke-virtual {p2, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/b;->X1(Landroid/view/View;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    const-string p2, "android.permission.READ_SMS"

    invoke-static {p1, p2}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->i0:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->Y1()V

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->E1()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/b;->m0:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->i0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->g0(Landroid/os/Bundle;)V

    new-instance p1, Lcom/callerid/block/b/k;

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->d0:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/callerid/block/fragment/b;->X:Landroid/widget/ListView;

    invoke-direct {p1, v0, v1, v2}, Lcom/callerid/block/b/k;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->Y:Lcom/callerid/block/b/k;

    new-instance p1, Lcom/callerid/block/fragment/b$i;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/b$i;-><init>(Lcom/callerid/block/fragment/b;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->e0:Lcom/callerid/block/fragment/b$i;

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->e0:Lcom/callerid/block/fragment/b$i;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.callerid.block.CLOSE_AD_VEST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->X:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->Y:Lcom/callerid/block/b/k;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/callerid/block/fragment/b$j;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/b$j;-><init>(Lcom/callerid/block/fragment/b;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->c0:Lcom/callerid/block/fragment/b$j;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.callerid.block.SMS_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.callerid.block.SMS_INIT_DATA"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.callerid.block.SEARCH_SMS_OK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.callerid.block.ADD_UPDATE_CONTACTS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->c0:Lcom/callerid/block/fragment/b$j;

    invoke-virtual {v0, v1, p1}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public h0(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->h0(IILandroid/content/Intent;)V

    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "tony"

    const-string p3, "onActivityResult"

    invoke-static {p2, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    invoke-static {p2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/b;->k0:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    check-cast p1, Lcom/callerid/block/main/MainActivity;

    iput-object p1, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    return-void
.end method

.method public q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c006d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public r0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->r0()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/b;->c0:Lcom/callerid/block/fragment/b$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->c0:Lcom/callerid/block/fragment/b$j;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/b;->e0:Lcom/callerid/block/fragment/b$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->f0:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/b;->e0:Lcom/callerid/block/fragment/b$i;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
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
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y1(Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "enter_sms_tab_page"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string p1, "testenter"

    const-string v0, "\u77ed\u4fe1\u9875\u5c55\u793a\u6b21\u6570"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/callerid/block/fragment/b;->o0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/fragment/b;->h0:Z

    iget-boolean v0, p0, Lcom/callerid/block/fragment/b;->g0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/fragment/b;->c2()V

    :cond_0
    iput-boolean p1, p0, Lcom/callerid/block/fragment/b;->o0:Z

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    if-eqz p1, :cond_2

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/fragment/b;->l0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
