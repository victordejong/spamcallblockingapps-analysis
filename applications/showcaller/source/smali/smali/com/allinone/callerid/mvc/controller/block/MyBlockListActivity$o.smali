.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/f/b;->c(Lcom/allinone/callerid/i/a/a;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->L0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    new-instance p1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$b;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/f/b;->d(Lcom/allinone/callerid/i/a/a;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;->i(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$o;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->V0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
