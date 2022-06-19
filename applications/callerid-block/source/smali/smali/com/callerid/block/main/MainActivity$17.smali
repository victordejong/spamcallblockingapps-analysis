.class Lcom/callerid/block/main/MainActivity$17;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->e1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    iput-object p3, p0, Lcom/callerid/block/main/MainActivity$17;->n:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->Q0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->Q0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    const-class v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$17;->n:Ljava/lang/String;

    const-string v1, "searchnumber"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$17;->o:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/main/MainActivity;->R0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    return-void
.end method
