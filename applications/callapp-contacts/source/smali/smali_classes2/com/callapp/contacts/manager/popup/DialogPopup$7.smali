.class Lcom/callapp/contacts/manager/popup/DialogPopup$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/DialogPopup;->setupButton(Landroid/view/View;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;ILjava/lang/String;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

.field final synthetic b:Lcom/callapp/contacts/manager/popup/DialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iput-object p2, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 396
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 397
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->a:Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;->onClickListener(Landroid/app/Activity;)V

    .line 398
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismissOnBtnClicked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/DialogPopup$7;->b:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    :cond_0
    return-void
.end method
