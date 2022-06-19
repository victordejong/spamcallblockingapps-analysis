.class Lcom/allinone/callerid/util/gg/AppOpenManager$a;
.super Ljava/lang/Object;
.source "AppOpenManager.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/AppOpenManager;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/util/gg/AppOpenManager;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/AppOpenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const-string v0, "StartActivity"

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "AppOpenManager"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart_currentActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-static {v2}, Lcom/allinone/callerid/util/gg/AppOpenManager;->h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->m()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/util/gg/AppOpenManager$a;->a:Lcom/allinone/callerid/util/gg/AppOpenManager;

    invoke-static {p1}, Lcom/allinone/callerid/util/gg/AppOpenManager;->h(Lcom/allinone/callerid/util/gg/AppOpenManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/start/StartActivity;->b0()Lcom/allinone/callerid/start/StartActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/start/StartActivity;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
