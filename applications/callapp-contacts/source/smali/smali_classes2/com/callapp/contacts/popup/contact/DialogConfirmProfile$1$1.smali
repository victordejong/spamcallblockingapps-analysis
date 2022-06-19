.class Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iput p2, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iget-object v2, v2, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-static {v2}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->a(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iget-object v3, v3, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-static {v3}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->b(Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile$1;->b:Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogConfirmProfile;->dismiss()V

    return-void
.end method
