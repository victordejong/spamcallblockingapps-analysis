.class Lcom/allinone/callerid/start/Generalsettings$b$a;
.super Ljava/lang/Object;
.source "Generalsettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/Generalsettings$b;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/Generalsettings$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/Generalsettings$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$b$a;->d:Lcom/allinone/callerid/start/Generalsettings$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings$b$a;->d:Lcom/allinone/callerid/start/Generalsettings$b;

    iget-object v0, v0, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/main/EZCallApplication;->e()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/start/Generalsettings$b$a;->d:Lcom/allinone/callerid/start/Generalsettings$b;

    iget-object v1, v1, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    const-class v2, Lcom/allinone/callerid/start/StartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/start/Generalsettings$b$a;->d:Lcom/allinone/callerid/start/Generalsettings$b;

    iget-object v1, v1, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
