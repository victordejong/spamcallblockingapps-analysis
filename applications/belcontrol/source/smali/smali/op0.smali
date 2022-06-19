.class public final Lop0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkp0;


# instance fields
.field public final a:Lcq0;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Lqp0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lop0;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lop0;->c:Landroid/app/PendingIntent;

    new-instance v0, Lqp0;

    invoke-direct {v0}, Lqp0;-><init>()V

    iput-object v0, p0, Lop0;->d:Lqp0;

    new-instance v0, Ljp0;

    invoke-direct {v0, p1}, Ljp0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lop0;->a:Lcq0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lop0;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lop0;->e()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcq0;
    .locals 1

    iget-object v0, p0, Lop0;->a:Lcq0;

    return-object v0
.end method

.method public c(Lvp0;)I
    .locals 1

    invoke-static {p1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->h(Lvp0;)V

    iget-object v0, p0, Lop0;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lop0;->f(Lzp0;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Landroid/content/Intent;
    .locals 4

    const-string v0, "CANCEL_ALL"

    invoke-virtual {p0, v0}, Lop0;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lop0;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lop0;->h()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "component"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final f(Lzp0;)Landroid/content/Intent;
    .locals 3

    const-string v0, "SCHEDULE_TASK"

    invoke-virtual {p0, v0}, Lop0;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lop0;->d:Lqp0;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lqp0;->h(Lzp0;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scheduler_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lop0;->c:Landroid/app/PendingIntent;

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "source"

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "source_version"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/firebase/jobdispatcher/GooglePlayReceiver;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    return-object v0
.end method
