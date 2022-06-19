.class public Lcom/callapp/contacts/receiver/SimChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/receiver/SimChangedReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
