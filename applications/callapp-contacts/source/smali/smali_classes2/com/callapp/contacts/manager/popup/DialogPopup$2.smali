.class Lcom/callapp/contacts/manager/popup/DialogPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogDismissed(Landroid/content/DialogInterface;)V

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$000(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$000(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$2;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;->a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method
