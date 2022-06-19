.class public Lcom/allinone/callerid/mvc/controller/EZDialerActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;,
        Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;
    }
.end annotation


# static fields
.field public static u:Z = false

.field public static v:Z = true


# instance fields
.field private A:Lcom/allinone/callerid/b/e;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/allinone/callerid/customview/EZKeyboardView;

.field private H:Lcom/github/clans/fab/FloatingActionButton;

.field private I:Ljava/lang/String;

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private K:Landroid/widget/ListView;

.field private L:Lcom/allinone/callerid/b/l;

.field private M:Lcom/allinone/callerid/dialog/c;

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/view/animation/Animation;

.field private Q:Landroid/view/animation/Animation;

.field private R:I

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/ImageView;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field Y:Landroid/telephony/SubscriptionManager;

.field private Z:Landroid/widget/ProgressBar;

.field private a0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;

.field private b0:Landroid/widget/FrameLayout;

.field private c0:I

.field private d0:I

.field private e0:I

.field private f0:Z

.field private g0:Z

.field private h0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

.field private final w:Ljava/lang/String;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "EZDialerActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->w:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->D:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->O:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->g0:Z

    return p0
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->g0:Z

    return p1
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E:Ljava/util/List;

    return-object p1
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->A:Lcom/allinone/callerid/b/e;

    return-object p0
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W0()V

    return-void
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    return-object p0
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a1()V

    return-void
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/dialog/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->M:Lcom/allinone/callerid/dialog/c;

    return-object p0
.end method

.method static synthetic L0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C:Ljava/util/List;

    return-object p0
.end method

.method static synthetic M0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C:Ljava/util/List;

    return-object p1
.end method

.method static synthetic N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic O0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L:Lcom/allinone/callerid/b/l;

    return-object p0
.end method

.method static synthetic P0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z0()V

    return-void
.end method

.method static synthetic Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->f1(Z)V

    return-void
.end method

.method static synthetic R0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private T0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :cond_8
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_f

    .line 23
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Y:Landroid/telephony/SubscriptionManager;

    .line 24
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v0, :cond_b

    .line 25
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 27
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 29
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_9
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_a

    .line 31
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 32
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W:Ljava/lang/String;

    goto :goto_2

    .line 33
    :cond_a
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W:Ljava/lang/String;

    goto :goto_2

    .line 34
    :cond_b
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W:Ljava/lang/String;

    goto :goto_2

    .line 36
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_e
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    return-void
.end method

.method private U0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->u:Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->h1(Z)V

    :cond_0
    return-void
.end method

.method private W0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C:Ljava/util/List;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/i/a/s/a;->a(Ljava/util/List;Ljava/util/List;Lcom/allinone/callerid/i/a/s/c;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->O:Ljava/util/ArrayList;

    return-object p0
.end method

.method private X0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->C()V

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$q;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/s/a;->b(Lcom/allinone/callerid/i/a/s/d;)V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T0()V

    return-void
.end method

.method private Y0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    return-object p0
.end method

.method private Z0()V
    .locals 3

    const v0, 0x7f09079b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090252

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f09034c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/EZKeyboardView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    const v0, 0x7f090047

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    const v0, 0x7f0402ed

    const v1, 0x7f08024f

    .line 6
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c0:I

    const v0, 0x7f0402ee

    const v1, 0x7f080251

    .line 7
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->d0:I

    const v0, 0x7f0401db

    const v1, 0x7f08010d

    .line 8
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e0:I

    const v0, 0x7f090466

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z:Landroid/widget/ProgressBar;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const v0, 0x7f090323

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    const v0, 0x7f090324

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    const v0, 0x7f090322

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    const v0, 0x7f090505

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->b0:Landroid/widget/FrameLayout;

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09043a

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    const v0, 0x7f09043b

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    .line 24
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->f0:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090363

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 28
    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090358

    .line 29
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->y:Landroid/widget/ImageView;

    .line 30
    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->P:Landroid/view/animation/Animation;

    .line 32
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q:Landroid/view/animation/Animation;

    .line 33
    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->P:Landroid/view/animation/Animation;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    return-object p1
.end method

.method private a1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    invoke-static {v0}, Lcom/allinone/callerid/i/a/s/a;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->b1(Ljava/util/List;)V

    return-void
.end method

.method private b1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->A:Lcom/allinone/callerid/b/e;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/allinone/callerid/b/e;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    invoke-direct {p1, p0, v0, v1}, Lcom/allinone/callerid/b/e;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->A:Lcom/allinone/callerid/b/e;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F:Ljava/util/HashMap;

    return-object p0
.end method

.method private c1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$m;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/EZKeyboardView;->setNumberCallBack(Lcom/allinone/callerid/customview/EZKeyboardView$b;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c0:I

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tel:"

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->I:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v1, v1, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v0, v0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e0:I

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.VIEW"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "tel"

    .line 22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->I:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v1, v1, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v0, v0, Lcom/allinone/callerid/customview/EZKeyboardView;->f:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e0:I

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F:Ljava/util/HashMap;

    return-object p1
.end method

.method private d1(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/allinone/callerid/b/l;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/allinone/callerid/b/l;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->L:Lcom/allinone/callerid/b/l;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->d1(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method private e1(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/dialog/c;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Landroid/content/Context;)V

    const p1, 0x7f1100f6

    invoke-direct {v0, p0, p1, v1}, Lcom/allinone/callerid/dialog/c;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->M:Lcom/allinone/callerid/dialog/c;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "createshortcut_dialog_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->M:Lcom/allinone/callerid/dialog/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->X0()V

    return-void
.end method

.method private f1(Z)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->b0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->P:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->b0:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c1()V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/customview/EZKeyboardView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G:Lcom/allinone/callerid/customview/EZKeyboardView;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->d0:I

    return p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->J:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->J:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$s;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->K:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->z:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->D:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->f0:Z

    return p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e0:I

    return p0
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R:I

    return p0
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c0:I

    return p0
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->R:I

    return p1
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->U0()V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->B:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->E:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->F:Ljava/util/HashMap;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/s/a;->c(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/s/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public V0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, " "

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f10006a

    .line 2
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->S0(I)V

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T0()V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1000c2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->W:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    .line 10
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->S0(I)V

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T0()V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1000c1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->k1(Z)V

    .line 16
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->S0(I)V

    .line 17
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T0()V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    sget-object v0, Lcom/allinone/callerid/util/g1;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090322
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Y0()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->f0:Z

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

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->V0()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->T0()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcutdial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "shortcut_dial"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->u:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/a1;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/allinone/callerid/util/a1;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/a1;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e1(Landroid/content/Context;)V

    .line 9
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->u1(Z)V

    .line 10
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->h1(Z)V

    :cond_1
    return-void
.end method
