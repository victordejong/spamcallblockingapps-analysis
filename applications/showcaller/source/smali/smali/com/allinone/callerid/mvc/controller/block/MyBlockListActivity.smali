.class public Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;,
        Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/EZBlackList;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CustomBlock;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/github/clans/fab/FloatingActionButton;

.field private G:Z

.field private H:Z

.field private I:Landroid/os/Handler;

.field private J:Landroid/view/LayoutInflater;

.field private K:Landroidx/appcompat/app/a;

.field private L:I

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/github/clans/fab/FloatingActionMenu;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/graphics/Typeface;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/allinone/callerid/util/m;

.field private y:Landroid/widget/ListView;

.field private z:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "MyBlockListActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->E:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$r;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->I:Landroid/os/Handler;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->h1()V

    return-void
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->z:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    return-object p0
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->g1()V

    return-void
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->z:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    return-object p1
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L:I

    return p0
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->J:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->K:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroidx/appcompat/app/a;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->K:Landroidx/appcompat/app/a;

    return-object p1
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->X()V

    return-void
.end method

.method static synthetic L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    return-object p0
.end method

.method static synthetic M0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    return-object p1
.end method

.method static synthetic N0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->F:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic O0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/github/clans/fab/FloatingActionButton;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->F:Lcom/github/clans/fab/FloatingActionButton;

    return-object p1
.end method

.method static synthetic P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic Q0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic R0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->w:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic S0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic T0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    return-object p1
.end method

.method private U0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private W0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    const/16 v1, 0x1c

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/allinone/callerid/dialog/f;

    const v1, 0x7f1100f6

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "block_norifi_per_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private X0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    return-object p0
.end method

.method private Y0()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$n;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

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

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method private Z0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, " "

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10012c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->v:Landroid/widget/ImageView;

    return-object p1
.end method

.method private a1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->U0()V

    return-void
.end method

.method private b1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->G:Z

    return p0
.end method

.method private c1()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->j1(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->y:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->G:Z

    return p1
.end method

.method private d1()V
    .locals 4

    const v0, 0x7f0903a8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P:Landroid/widget/LinearLayout;

    const v0, 0x7f090231

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090701

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090678

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0905a5

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setContentDescription(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    const v0, 0x7f0901b5

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b7

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f0901b6

    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    .line 12
    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v1, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v2, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    const v1, 0x7f01004d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    const v1, 0x7f010041

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$h;)V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H:Z

    return p0
.end method

.method private e1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/allinone/callerid/bean/CustomBlock;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/allinone/callerid/bean/CustomBlock;

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    check-cast v1, Lcom/allinone/callerid/bean/EZBlackList;

    .line 8
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getIs_myblock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/EZBlackList;->getIs_myblock()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H:Z

    return p1
.end method

.method private f1(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, v0}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001b0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->C:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->C:Landroid/widget/ImageView;

    return-object p1
.end method

.method private h1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V

    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y0()V

    return-void
.end method

.method private i1()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->J:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/DeletableEditText;

    const v2, 0x7f090186

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f100080

    .line 5
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x7f100083

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 8
    new-instance v3, Landroidx/appcompat/app/a$a;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$l;

    invoke-direct {v4, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$k;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 16
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

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

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Z0(Ljava/util/List;)V

    return-void
.end method

.method private j1(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0904ec

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->A:Landroid/widget/RelativeLayout;

    const v0, 0x7f0907c9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V

    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->M:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->d1()V

    return-void
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->x:Lcom/allinone/callerid/util/m;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->x:Lcom/allinone/callerid/util/m;

    return-object p1
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->E:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->y:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->y:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->E:Ljava/util/List;

    return-object p1
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->c1()V

    return-void
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->b1()V

    return-void
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->I:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->X0()V

    return-void
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->f1(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->a1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->e1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/github/clans/fab/FloatingActionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    return-object p0
.end method


# virtual methods
.method public V0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->A:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->U0()V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->W0()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090231

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->h1()V

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$e;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->q(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->g1()V

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$f;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 12
    :pswitch_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->i1()V

    goto :goto_0

    .line 15
    :pswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 17
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 18
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 19
    const-class v0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_norifi_per_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 24
    sput-boolean v1, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/b;->c(Landroid/content/Context;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901b4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0045

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q:Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    const p1, 0x7f04011b

    const v0, 0x7f06003a

    .line 7
    invoke-static {p0, p1, v0}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L:I

    .line 8
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->J:Landroid/view/LayoutInflater;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p2, 0x7f08015a

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->D:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->G:Z

    .line 6
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->H:Z

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/EZBlackList;->setIsselected(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->z:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    .line 15
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->W0()V

    :cond_1
    return-void
.end method
