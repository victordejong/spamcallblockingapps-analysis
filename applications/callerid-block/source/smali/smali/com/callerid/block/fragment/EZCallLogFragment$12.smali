.class Lcom/callerid/block/fragment/EZCallLogFragment$12;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# instance fields
.field final synthetic n:Lcom/callerid/block/search/CallLogBean;

.field final synthetic o:Lcom/callerid/block/fragment/EZCallLogFragment;


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 4

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$12;->n:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment$12;->n:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v2

    new-instance v3, Lcom/callerid/block/fragment/EZCallLogFragment$12$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$12$a;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment$12;)V

    invoke-static {v0, v1, v2, v3}, Lcom/callerid/block/h/a/d/g;->d(Landroid/content/Context;Ljava/lang/String;ILcom/callerid/block/h/a/d/f;)V

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$12;->o:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->q(II)Lcom/rey/material/app/Dialog;

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
