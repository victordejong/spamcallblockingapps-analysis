.class public Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/ContactSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kedlin/cca/core/ContactSyncService$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    new-instance p1, Lq81;

    invoke-direct {p1}, Lq81;-><init>()V

    invoke-virtual {p1}, Lq81;->Z()Landroid/database/Cursor;

    move-result-object p1

    const-string v0, "No need to deliver contacts"

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    new-instance v0, Lt61;

    invoke-direct {v0}, Lt61;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2, p1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    invoke-virtual {v0, v2}, Lt61;->b(Lq81;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, v0, Lt61;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lq81;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "No contacts to deliver"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    invoke-static {v0}, Lk61;->B(Lt61;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq81;->q0([Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/kedlin/cca/core/ContactSyncService;->b(Z)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/kedlin/cca/core/ContactSyncService;->d(Lcom/callcontrol/util/job/ScheduledJob;)Lcom/callcontrol/util/job/ScheduledJob;

    sget-object p1, Lr71$a;->V:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/kedlin/cca/core/ContactSyncService;->c()Lcom/callcontrol/util/job/ScheduledJob;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask$1;

    invoke-direct {p1, p0}, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask$1;-><init>(Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;)V

    invoke-static {p1}, Lcom/kedlin/cca/core/ContactSyncService;->d(Lcom/callcontrol/util/job/ScheduledJob;)Lcom/callcontrol/util/job/ScheduledJob;

    :cond_1
    invoke-static {}, Lcom/kedlin/cca/core/ContactSyncService;->c()Lcom/callcontrol/util/job/ScheduledJob;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lcom/callcontrol/util/job/ScheduledJob;->e(I)V

    const-string p1, "Next session scheduled"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kedlin/cca/core/ContactSyncService;->b(Z)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/ContactSyncService$ContactSyncTask;->b(Ljava/lang/Boolean;)V

    return-void
.end method
