.class Lcom/allinone/callerid/d/d/b$k;
.super Landroid/content/BroadcastReceiver;
.source "PopularFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/b;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/d/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/d/d/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/d/d/b$k;-><init>(Lcom/allinone/callerid/d/d/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    const-string p2, "callscreen"

    if-eqz p1, :cond_0

    const-string p1, "Refresh"

    .line 2
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/a/e/a;->B()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/a/e/a;->B()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "\u5237\u65b0\u6570\u636e"

    .line 5
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->k2(Lcom/allinone/callerid/d/d/b;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/d/d/b$k$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/d/d/b$k$a;-><init>(Lcom/allinone/callerid/d/d/b$k;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/d/e/c;->b(Ljava/util/ArrayList;Lcom/allinone/callerid/d/e/c$a;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/allinone/callerid/d/d/b;->c2(Lcom/allinone/callerid/d/d/b;I)I

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    const-string v0, "download_count"

    invoke-virtual {p1, p2, v0}, Lcom/allinone/callerid/d/d/b;->u2(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
