.class Lcom/allinone/callerid/start/StartActivity$a;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/StartActivity;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/StartActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x0()Ljava/lang/String;

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/start/StartActivity;->W(Lcom/allinone/callerid/start/StartActivity;Z)Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/start/StartActivity;->X(Lcom/allinone/callerid/start/StartActivity;Z)Z

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    new-instance v1, Lcom/allinone/callerid/start/StartActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/StartActivity$a$a;-><init>(Lcom/allinone/callerid/start/StartActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
