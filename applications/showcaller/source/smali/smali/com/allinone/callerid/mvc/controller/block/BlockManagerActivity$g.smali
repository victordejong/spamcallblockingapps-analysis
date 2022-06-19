.class Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;
.super Ljava/lang/Object;
.source "BlockManagerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/p/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->u0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->t0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->t0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->t0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/allinone/callerid/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/allinone/callerid/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->r0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/b/c;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$g;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    return-void
.end method
