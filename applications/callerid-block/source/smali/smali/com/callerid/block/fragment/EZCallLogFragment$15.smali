.class Lcom/callerid/block/fragment/EZCallLogFragment$15;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->r2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

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
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->g2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v1}, Lcom/callerid/block/fragment/EZCallLogFragment;->W1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$15$a;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment$15;)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/h/a/d/g;->a(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/h/a/d/f;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$15;->n:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
