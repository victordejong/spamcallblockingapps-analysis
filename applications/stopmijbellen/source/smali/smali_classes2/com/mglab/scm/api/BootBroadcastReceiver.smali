.class public Lcom/mglab/scm/api/BootBroadcastReceiver;
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

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lf8/g;->E(Landroid/content/Context;Z)V

    .line 2
    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lf8/g;->C(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "bootbrlaststart"

    invoke-static {p1, p2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
