.class Lcom/callerid/block/main/MainActivity$19;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->f1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Z

.field final synthetic o:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    iput-boolean p3, p0, Lcom/callerid/block/main/MainActivity$19;->n:Z

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->T0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "forced_update_dialog_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->S(Lcom/callerid/block/main/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/callerid/block/main/MainActivity$19;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->T0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$19;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/main/MainActivity;->U0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity$19;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/callerid/block/main/MainActivity$19$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$19$a;-><init>(Lcom/callerid/block/main/MainActivity$19;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method
