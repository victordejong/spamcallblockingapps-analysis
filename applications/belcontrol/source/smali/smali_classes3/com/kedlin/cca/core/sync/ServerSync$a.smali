.class public final Lcom/kedlin/cca/core/sync/ServerSync$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/core/sync/ServerSync;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/core/sync/ServerSync$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    invoke-direct {v1}, Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;-><init>()V

    invoke-static {v1}, Lcom/kedlin/cca/core/sync/ServerSync;->c(Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;)Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    iget-object v1, p0, Lcom/kedlin/cca/core/sync/ServerSync$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->b()Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kedlin/cca/core/sync/ServerSync$a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kedlin/cca/core/sync/ServerSync$a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v2, 0x2

    const-wide/32 v5, 0x36ee80

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
