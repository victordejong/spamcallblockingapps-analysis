.class Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;
.super Ljava/lang/Object;
.source "BlockManagerActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$i;->a:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->g0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    return-void
.end method
