.class Lcom/callapp/contacts/manager/popup/DialogPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$000(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->access$000(Lcom/callapp/contacts/manager/popup/DialogPopup;)Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;->b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method
