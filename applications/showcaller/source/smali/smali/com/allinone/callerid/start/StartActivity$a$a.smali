.class Lcom/allinone/callerid/start/StartActivity$a$a;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/StartActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/StartActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/StartActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/StartActivity$a$a;->d:Lcom/allinone/callerid/start/StartActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a$a;->d:Lcom/allinone/callerid/start/StartActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/StartActivity;->V(Lcom/allinone/callerid/start/StartActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a$a;->d:Lcom/allinone/callerid/start/StartActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/l0;->b(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/StartActivity$a$a;->d:Lcom/allinone/callerid/start/StartActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/start/StartActivity$a;->d:Lcom/allinone/callerid/start/StartActivity;

    invoke-static {v0}, Lcom/allinone/callerid/start/StartActivity;->Y(Lcom/allinone/callerid/start/StartActivity;)V

    return-void
.end method
