.class Lcom/allinone/callerid/util/w$a;
.super Landroid/content/BroadcastReceiver;
.source "HomeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/util/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/util/w;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/w$a;->e:Lcom/allinone/callerid/util/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/w$a;->a:Ljava/lang/String;

    const-string p1, "globalactions"

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/util/w$a;->b:Ljava/lang/String;

    const-string p1, "recentapps"

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/util/w$a;->c:Ljava/lang/String;

    const-string p1, "homekey"

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/util/w$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/util/w$a;->e:Lcom/allinone/callerid/util/w;

    invoke-static {p2}, Lcom/allinone/callerid/util/w;->a(Lcom/allinone/callerid/util/w;)Lcom/allinone/callerid/util/w$b;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "homekey"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/util/w$a;->e:Lcom/allinone/callerid/util/w;

    invoke-static {p1}, Lcom/allinone/callerid/util/w;->a(Lcom/allinone/callerid/util/w;)Lcom/allinone/callerid/util/w$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/util/w$b;->b()V

    goto :goto_0

    :cond_0
    const-string p2, "recentapps"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/util/w$a;->e:Lcom/allinone/callerid/util/w;

    invoke-static {p1}, Lcom/allinone/callerid/util/w;->a(Lcom/allinone/callerid/util/w;)Lcom/allinone/callerid/util/w$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/util/w$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
