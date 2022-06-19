.class Lcom/allinone/callerid/d/d/b$k$a;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b$k;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/b$k;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$k$a;->a:Lcom/allinone/callerid/d/d/b$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 2
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "callscreen"

    const-string v0, "\u5237\u65b0\u6570\u636e"

    .line 3
    invoke-static {p2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/d/d/b$k$a;->a:Lcom/allinone/callerid/d/d/b$k;

    iget-object p2, p2, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p2}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/allinone/callerid/d/a/e/a;->A(Ljava/util/ArrayList;Z)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k$a;->a:Lcom/allinone/callerid/d/d/b$k;

    iget-object p1, p1, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/d/b$k$a;->a:Lcom/allinone/callerid/d/d/b$k;

    iget-object p1, p1, Lcom/allinone/callerid/d/d/b$k;->a:Lcom/allinone/callerid/d/d/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/d/b;->i2(Lcom/allinone/callerid/d/d/b;)Lcom/allinone/callerid/d/a/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_1
    return-void
.end method
