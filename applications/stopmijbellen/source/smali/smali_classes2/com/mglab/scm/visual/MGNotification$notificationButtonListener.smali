.class public Lcom/mglab/scm/visual/MGNotification$notificationButtonListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/MGNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "notificationButtonListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "psetapponoff"

    .line 2
    invoke-static {p1, v0, p2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/h;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lk8/h;-><init>(I)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method
