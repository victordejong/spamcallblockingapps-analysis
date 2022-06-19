.class Lcom/callapp/contacts/util/ReturnToAppTasker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ReturnToAppTasker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ReturnToAppTasker;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ReturnToAppTasker;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v2}, Lcom/callapp/contacts/util/ReturnToAppTasker;->a(Lcom/callapp/contacts/util/ReturnToAppTasker;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->b(Lcom/callapp/contacts/util/ReturnToAppTasker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-class v1, Lcom/callapp/contacts/util/ReturnToAppTasker;

    const-string v2, "ReturnToAppTasker start Activities"

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v2}, Lcom/callapp/contacts/util/ReturnToAppTasker;->c(Lcom/callapp/contacts/util/ReturnToAppTasker;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    iget-object v1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v1}, Lcom/callapp/contacts/util/ReturnToAppTasker;->d(Lcom/callapp/contacts/util/ReturnToAppTasker;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v1}, Lcom/callapp/contacts/util/ReturnToAppTasker;->d(Lcom/callapp/contacts/util/ReturnToAppTasker;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->e(Lcom/callapp/contacts/util/ReturnToAppTasker;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->b()V

    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->g(Lcom/callapp/contacts/util/ReturnToAppTasker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-static {v1}, Lcom/callapp/contacts/util/ReturnToAppTasker;->f(Lcom/callapp/contacts/util/ReturnToAppTasker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 41
    :cond_2
    const-class v0, Lcom/callapp/contacts/util/ReturnToAppTasker;

    const-string v1, "ReturnToAppTasker stoped"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/util/ReturnToAppTasker$1;->a:Lcom/callapp/contacts/util/ReturnToAppTasker;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ReturnToAppTasker;->b()V

    return-void
.end method
