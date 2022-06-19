.class public Lcom/callerid/block/sms/SmsSceneService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/sms/SmsSceneService$b;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Lcom/callerid/block/sms/SmsSceneService$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/callerid/block/sms/SmsSceneService$b;

    invoke-direct {v0, p0, p0}, Lcom/callerid/block/sms/SmsSceneService$b;-><init>(Lcom/callerid/block/sms/SmsSceneService;Lcom/callerid/block/sms/SmsSceneService;)V

    iput-object v0, p0, Lcom/callerid/block/sms/SmsSceneService;->g:Lcom/callerid/block/sms/SmsSceneService$b;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/SmsSceneService;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/sms/SmsSceneService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/SmsSceneService;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsSceneService;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/sms/SmsSceneService;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/sms/SmsSceneService;->i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/SmsSceneService;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/callerid/block/sms/SmsSceneService;)Lcom/callerid/block/sms/SmsSceneService$b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/SmsSceneService;->g:Lcom/callerid/block/sms/SmsSceneService$b;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/sms/SmsSceneService$a;

    invoke-direct {v1, p0, p1}, Lcom/callerid/block/sms/SmsSceneService$a;-><init>(Lcom/callerid/block/sms/SmsSceneService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/callerid/block/bean/SMSBean;

    invoke-direct {v0}, Lcom/callerid/block/bean/SMSBean;-><init>()V

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/SMSBean;->setAddress(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/sms/SmsSceneService;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/SMSBean;->setMsg_snippet(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callerid/block/sms/SmsSceneService;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/SMSBean;->setDate(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/callerid/block/sms/SmsSceneService;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/SMSBean;->setThread_id(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/callerid/block/bean/SMSBean;->setName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p3}, Lcom/callerid/block/sms/e;->a(Lcom/callerid/block/bean/SMSBean;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13

    move-object v1, p0

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgAddress:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgBody:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/callerid/block/sms/SmsSceneService;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "receivesms"

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v12, p2

    :goto_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/callerid/block/sms/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, ""

    iget-object v7, v1, Lcom/callerid/block/sms/SmsSceneService;->c:Ljava/lang/String;

    iget-wide v8, v1, Lcom/callerid/block/sms/SmsSceneService;->f:J

    const-string v10, ""

    iget-object v11, v1, Lcom/callerid/block/sms/SmsSceneService;->d:Ljava/lang/String;

    move-object/from16 v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v11}, Lcom/callerid/block/sms/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    iget-object v7, v1, Lcom/callerid/block/sms/SmsSceneService;->c:Ljava/lang/String;

    iget-wide v8, v1, Lcom/callerid/block/sms/SmsSceneService;->f:J

    const-string v10, ""

    iget-object v11, v1, Lcom/callerid/block/sms/SmsSceneService;->d:Ljava/lang/String;

    move-object/from16 v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v11}, Lcom/callerid/block/sms/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "sms_receive_count"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "receivesms"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "msgAddress"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/sms/SmsSceneService;->b:Ljava/lang/String;

    const-string v0, "msgBody"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/sms/SmsSceneService;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    const-string v2, "msgDate"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callerid/block/sms/SmsSceneService;->f:J

    iget-object v0, p0, Lcom/callerid/block/sms/SmsSceneService;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/callerid/block/sms/SmsSceneService;->h(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
