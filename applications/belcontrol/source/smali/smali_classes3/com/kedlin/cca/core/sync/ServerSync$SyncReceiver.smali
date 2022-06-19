.class public Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/sync/ServerSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-object p1, Lr71$a;->Z0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/kedlin/cca/core/sync/ServerSync;->f(J)J

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->i()V

    return-void
.end method
