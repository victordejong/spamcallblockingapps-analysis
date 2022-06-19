.class public Lcom/kedlin/cca/receivers/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnf;->d(Landroid/content/Intent;)Z

    invoke-static {}, Lfa1;->w()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lj61;->d()V

    sget-object p2, Lr71$a;->V:Lr71$a;

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    sget-object v0, Laa1;->h:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnf;->d(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method
