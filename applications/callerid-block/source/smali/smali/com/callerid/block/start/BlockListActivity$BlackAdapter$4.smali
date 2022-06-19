.class Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e(ILcom/callerid/block/bean/EZBlackList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/bean/EZBlackList;

.field final synthetic o:I

.field final synthetic p:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->p:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iput-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->n:Lcom/callerid/block/bean/EZBlackList;

    iput p4, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->o:I

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->n:Lcom/callerid/block/bean/EZBlackList;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZBlackList;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4$a;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->d(Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->p:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->c(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->o:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->p:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object p1, p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {p1}, Lcom/callerid/block/start/BlockListActivity;->U()V

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$4;->p:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object p1, p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-static {p1}, Lcom/callerid/block/start/BlockListActivity;->T(Lcom/callerid/block/start/BlockListActivity;)Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    return-void
.end method
