.class public Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;
.super Ljava/lang/Object;
.source "AppOpenManager_LifecycleAdapter.java"

# interfaces
.implements Landroidx/lifecycle/d;


# instance fields
.field final a:Lcom/allinone/callerid/util/gg/AppOpenManager;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/l;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 1
    :cond_1
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_4

    if-eqz v0, :cond_2

    const-string p2, "onStart"

    .line 2
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onStart()V

    :cond_3
    return-void

    .line 4
    :cond_4
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_7

    if-eqz v0, :cond_5

    const-string p2, "onCreate"

    .line 5
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onCreate()V

    :cond_6
    return-void

    .line 7
    :cond_7
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_a

    if-eqz v0, :cond_8

    const-string p2, "onResume"

    .line 8
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onResume()V

    :cond_9
    return-void

    .line 10
    :cond_a
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_d

    if-eqz v0, :cond_b

    const-string p2, "onPause"

    .line 11
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 12
    :cond_b
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onPause()V

    :cond_c
    return-void

    .line 13
    :cond_d
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_10

    if-eqz v0, :cond_e

    const-string p2, "onStop"

    .line 14
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 15
    :cond_e
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onStop()V

    :cond_f
    return-void

    .line 16
    :cond_10
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p3, :cond_12

    if-eqz v0, :cond_11

    const-string p2, "onDestroy"

    .line 17
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager_LifecycleAdapter;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->onDestroy()V

    :cond_12
    return-void
.end method
