.class public Lcom/mglab/scm/api/AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lf8/g;->M(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "lastalrmcheck"

    .line 3
    invoke-static {p1, p2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 p2, 0x0

    const-string v0, "rate_notification"

    .line 4
    invoke-static {p1, v0, p2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {p1}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, v0, p2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    invoke-static {p1}, Lcom/mglab/scm/visual/MGNotification;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
