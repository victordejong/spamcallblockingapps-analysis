.class Lcom/callapp/contacts/manager/popup/DialogPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iput-boolean p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$200(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$100(Lcom/callapp/contacts/manager/popup/DialogPopup;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->setCancelable(Z)V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$200(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$300(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->a(Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;)V

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$200(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$400(Lcom/callapp/contacts/manager/popup/DialogPopup;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 110
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->a:Z

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 112
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$500(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setDialogSizeAndBackground(Landroid/app/Dialog;Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 116
    new-instance p1, Lcom/callapp/contacts/manager/popup/DialogPopup$3$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/manager/popup/DialogPopup$3$1;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$3;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p2
.end method

.method public getDialogPopup()Lcom/callapp/contacts/manager/popup/DialogPopup;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$3;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    return-object v0
.end method
