.class public Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask$1;
.super Lcom/callcontrol/util/job/ScheduledJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;->b(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/callcontrol/util/job/ScheduledJob;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lzp0;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/kedlin/cca/core/ContactSyncService;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lfa1;->P(Landroid/content/Intent;)V

    return-void
.end method
