.class Lcom/allinone/callerid/d/d/a$k;
.super Landroid/content/BroadcastReceiver;
.source "LatestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/a;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/d/d/a;Lcom/allinone/callerid/d/d/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/a$k;-><init>(Lcom/allinone/callerid/d/d/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "callscreen"

    const-string p2, "LatestFragmentRefresh"

    .line 2
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/a/e/a;->B()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->j2(Lcom/allinone/callerid/d/d/a;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/a/e/a;->B()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/a;->l2(Lcom/allinone/callerid/d/d/a;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/d/d/a$k$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/d/d/a$k$a;-><init>(Lcom/allinone/callerid/d/d/a$k;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/d/e/c;->b(Ljava/util/ArrayList;Lcom/allinone/callerid/d/e/c$a;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/allinone/callerid/d/d/a;->d2(Lcom/allinone/callerid/d/d/a;I)I

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/d/a$k;->a:Lcom/allinone/callerid/d/d/a;

    const-string v0, "publish_time"

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/d/d/a;->n2(Lcom/allinone/callerid/d/d/a;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
