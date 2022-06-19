.class Lcom/allinone/callerid/mvc/controller/MainActivity$d0;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/ads/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/b;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    const/16 v2, 0x19

    if-le v0, v2, :cond_1

    .line 8
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$b;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0;)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.allinone.callerid.CHANGE_NOTIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/service/DaemonService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->i0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/k0;->g()V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
