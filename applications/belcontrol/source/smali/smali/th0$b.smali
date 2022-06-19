.class public final Lth0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lth0;->c(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Li91;

.field public final synthetic c:Lcom/callcontrol/datashare/CallControl$Report;

.field public final synthetic d:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(ZLi91;Lcom/callcontrol/datashare/CallControl$Report;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V
    .locals 0

    iput-boolean p1, p0, Lth0$b;->a:Z

    iput-object p2, p0, Lth0$b;->b:Li91;

    iput-object p3, p0, Lth0$b;->c:Lcom/callcontrol/datashare/CallControl$Report;

    iput-object p4, p0, Lth0$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean p1, p0, Lth0$b;->a:Z

    if-eqz p1, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->j:Ljava/lang/String;

    iget-object p2, p0, Lth0$b;->b:Li91;

    invoke-virtual {p2}, Li91;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->k:Ljava/lang/String;

    iget-object p2, p0, Lth0$b;->c:Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {p2}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->l:Ljava/lang/String;

    iget-object p2, p0, Lth0$b;->c:Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {p2}, Lcom/callcontrol/datashare/CallControl$Report;->c()Z

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lth0$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v1

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lth0$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const p2, 0x7f110241

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lth0$b;->d:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
