.class public Lcom/allinone/callerid/service/PhoneSceneService;
.super Landroid/app/Service;
.source "PhoneSceneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/service/PhoneSceneService$p;
    }
.end annotation


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/allinone/callerid/service/PhoneSceneService$p;

.field private g:Lcom/allinone/callerid/util/m;

.field private h:I

.field private i:Lcom/allinone/callerid/dialog/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/service/PhoneSceneService$p;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Lcom/allinone/callerid/service/PhoneSceneService$a;)V

    iput-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->f:Lcom/allinone/callerid/service/PhoneSceneService$p;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->h:I

    return-void
.end method

.method private A(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/dialog/l;

    const v1, 0x7f1100f6

    new-instance v2, Lcom/allinone/callerid/service/PhoneSceneService$g;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService$g;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/allinone/callerid/dialog/l;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->i:Lcom/allinone/callerid/dialog/l;

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "private_number_dialog"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService;->i:Lcom/allinone/callerid/dialog/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private B(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "incoming"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v7, "showfloat"

    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "incoming_contact"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/service/PhoneSceneService;->u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "showfloat_incoming_contact"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "show_close_is_contact"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->f(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 13
    :cond_3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "callstatus"

    .line 14
    invoke-static {v0, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/service/PhoneSceneService;->u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const/4 v4, 0x1

    const-string v5, ""

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V

    .line 18
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "incoming_not_contact"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->N(Landroid/content/Context;)V

    goto :goto_4

    .line 21
    :cond_6
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "incoming_number_null_empty"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x3

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/service/PhoneSceneService;->u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_4

    .line 24
    :cond_7
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const/4 v4, 0x3

    const-string v5, ""

    move-object v2, p2

    move v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V

    :goto_4
    return-void
.end method

.method private C(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->d:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/i/a/i/d;->b(Landroid/content/Context;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 6
    :pswitch_1
    sput-boolean v0, Lcom/allinone/callerid/util/h1;->d:Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/a1;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/i/a/i/d;->b(Landroid/content/Context;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/a1;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/i/a/i/d;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    .line 14
    sput-boolean p1, Lcom/allinone/callerid/util/h1;->d:Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/d;->c(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 19
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/d;->c(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->h(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$c;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService$c;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V

    invoke-static {p1, p2, p3, v0}, Lcom/allinone/callerid/i/a/k/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/service/PhoneSceneService;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->g:Lcom/allinone/callerid/util/m;

    return-object p0
.end method

.method static synthetic f(Lcom/allinone/callerid/service/PhoneSceneService;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService;->g:Lcom/allinone/callerid/util/m;

    return-object p1
.end method

.method static synthetic g(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/service/PhoneSceneService$p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->f:Lcom/allinone/callerid/service/PhoneSceneService$p;

    return-object p0
.end method

.method static synthetic h(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/service/PhoneSceneService;->x(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/allinone/callerid/service/PhoneSceneService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->h:I

    return p0
.end method

.method static synthetic j(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService;->z(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/allinone/callerid/service/PhoneSceneService;)Lcom/allinone/callerid/dialog/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->i:Lcom/allinone/callerid/dialog/l;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/h/c;->C0()V

    return-void
.end method

.method private m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callstatus"

    const-string v1, "inComingRingingToDo"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a;->b()V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/allinone/callerid/h/c;->N:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p2, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/allinone/callerid/i/a/l/b;->d(Ljava/lang/String;Lcom/allinone/callerid/i/a/l/a;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "unknown_number_call"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "unknown_number_call_blocked"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->m(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/allinone/callerid/service/PhoneSceneService;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 14
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/a1;->c1(J)V

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->J2(Ljava/lang/Boolean;)V

    .line 16
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->H2(Ljava/lang/Boolean;)V

    .line 17
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->g1(Z)V

    .line 18
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->U2(Ljava/lang/Boolean;)V

    .line 19
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->O2(Ljava/lang/Boolean;)V

    .line 20
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/service/PhoneSceneService$h;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/u/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/u/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/service/b;->m(Z)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/h/c;->H0()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/c/a;->J()V

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->e(Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, ""

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1, v1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->w(Landroid/content/Context;ILjava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->e:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$l;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$l;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->N()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    .line 14
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService;->A(Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService;->A(Landroid/content/Context;)V

    .line 17
    :cond_4
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v2()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "new_end_call_failed"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->e(Ljava/lang/String;)V

    .line 19
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_5

    const-string p1, "tony"

    const-string p2, "8.0\u6302\u65ad\u65b9\u6cd5\u5931\u8d25"

    .line 20
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->N2(Ljava/lang/Boolean;)V

    :cond_6
    return-void
.end method

.method private o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/service/PhoneSceneService;->l()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/allinone/callerid/h/c;->G0(Ljava/lang/String;I)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/c/a;->B()V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/allinone/callerid/d/c/a;->H(Ljava/lang/String;I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/d/f/f;->p(Z)V

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->e(Landroid/content/Context;)V

    .line 10
    :cond_2
    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.allinone.callerid.ACCEPT_END_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->e(Landroid/content/Context;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, ""

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$i;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$i;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.allinone.callerid.ACCEPT_END_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/service/PhoneSceneService;->l()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/d/c/a;->x:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/c/a;->B()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/allinone/callerid/h/b;->a:Z

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v1, v0, Lcom/allinone/callerid/h/c;->N:Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v2, v0, Lcom/allinone/callerid/h/c;->N:Z

    .line 9
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v2, v0, Lcom/allinone/callerid/h/b;->a:Z

    .line 10
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v2}, Lcom/allinone/callerid/d/f/f;->p(Z)V

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->e(Landroid/content/Context;)V

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/service/b;->m(Z)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/h/c;->H0()V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/d/c/a;->J()V

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 18
    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->e(Landroid/content/Context;)V

    :cond_4
    if-eqz p2, :cond_8

    const-string v0, ""

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->t(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/a1;->q2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->e:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$j;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$j;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_7
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$k;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$k;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 27
    :cond_8
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->N()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_9

    .line 29
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 30
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService;->A(Landroid/content/Context;)V

    goto :goto_3

    .line 31
    :cond_9
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService;->A(Landroid/content/Context;)V

    .line 32
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a;->b()V

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y2()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/service/PhoneSceneService;->y(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/u/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/u/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/service/b;->m(Z)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/h/c;->H0()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/service/PhoneSceneService;->l()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/allinone/callerid/h/b;->a:Z

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v2, v0, Lcom/allinone/callerid/h/c;->N:Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v1, v0, Lcom/allinone/callerid/h/c;->N:Z

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    iput-boolean v1, v0, Lcom/allinone/callerid/h/b;->a:Z

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->J0(Landroid/content/Context;)V

    if-eqz p2, :cond_6

    const-string v0, ""

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->Q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/a1;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->p1(Z)V

    .line 15
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/allinone/callerid/service/PhoneSceneService$n;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-direct {p0, p1, v1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->z(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method private s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService$b;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V

    invoke-static {p1, p2, p3, v0}, Lcom/allinone/callerid/i/a/i/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/i/j/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/z0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "showmissed_close"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/allinone/callerid/service/PhoneSceneService$f;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/allinone/callerid/service/PhoneSceneService$f;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {p2, v7}, Lcom/allinone/callerid/d/e/e/a;->a(Ljava/lang/String;Lcom/allinone/callerid/d/e/e/b;)V

    return-void
.end method

.method private v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/service/PhoneSceneService;->B(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private w(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService$m;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p1, p3, v0}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V

    return-void
.end method

.method private x(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/service/PhoneSceneService$d;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-static {p1, p4, v0}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "showmissed_close"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private y(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "showcaller"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "outgoing"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$e;

    invoke-direct {v0, p0, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService$e;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Ljava/lang/String;I)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/k/f;->b(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/e;)V

    return-void
.end method

.method private z(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/allinone/callerid/service/PhoneSceneService$o;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p1, p3, v0}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callstatus"

    const-string v1, "onCreate"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callstatus"

    const-string v1, "onStartCommand"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "telephonering_sence"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->d:I

    const-string v0, "telephonering_num"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService;->e:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/allinone/callerid/service/PhoneSceneService;->d:I

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v1, v0}, Lcom/allinone/callerid/service/PhoneSceneService;->C(ILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
