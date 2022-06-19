.class public Lcom/kedlin/cca/core/ContactSyncService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z

.field public static c:Lcom/callcontrol/util/job/ScheduledJob;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CATEGORY_CONTINUE_CONTACTS_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/ContactSyncService;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kedlin/cca/core/ContactSyncService;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/kedlin/cca/core/ContactSyncService;->c:Lcom/callcontrol/util/job/ScheduledJob;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/kedlin/cca/core/ContactSyncService;->b:Z

    return p0
.end method

.method public static synthetic c()Lcom/callcontrol/util/job/ScheduledJob;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/ContactSyncService;->c:Lcom/callcontrol/util/job/ScheduledJob;

    return-object v0
.end method

.method public static synthetic d(Lcom/callcontrol/util/job/ScheduledJob;)Lcom/callcontrol/util/job/ScheduledJob;
    .locals 0

    sput-object p0, Lcom/kedlin/cca/core/ContactSyncService;->c:Lcom/callcontrol/util/job/ScheduledJob;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/ContactSyncService;->c:Lcom/callcontrol/util/job/ScheduledJob;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callcontrol/util/job/ScheduledJob;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Laa1;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/kedlin/cca/core/ContactSyncService;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lr71$a;->V:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/kedlin/cca/core/ContactSyncService;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    sget-object v0, Lr71$a;->m1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Changes detected, need to sync"

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean v1, Lcom/kedlin/cca/core/ContactSyncService;->b:Z

    new-instance v0, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;-><init>(Lcom/kedlin/cca/core/ContactSyncService$a;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    sput-boolean v2, Lcom/kedlin/cca/core/ContactSyncService;->b:Z

    goto :goto_1

    :cond_5
    const-string v0, "Changes detected, but another task is in progress, it will pick it up later or we do not need to start it at all"

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
