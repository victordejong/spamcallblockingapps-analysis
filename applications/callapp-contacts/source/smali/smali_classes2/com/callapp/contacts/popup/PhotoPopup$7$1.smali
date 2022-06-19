.class Lcom/callapp/contacts/popup/PhotoPopup$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/PhotoPopup$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/PhotoPopup$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/PhotoPopup$7;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$7$1;->a:Lcom/callapp/contacts/popup/PhotoPopup$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup$7$1;->a:Lcom/callapp/contacts/popup/PhotoPopup$7;

    iget-object v0, v0, Lcom/callapp/contacts/popup/PhotoPopup$7;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup$7$1;->a:Lcom/callapp/contacts/popup/PhotoPopup$7;

    iget-object v1, v1, Lcom/callapp/contacts/popup/PhotoPopup$7;->d:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v1}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openContactProfile(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup$7$1;->a:Lcom/callapp/contacts/popup/PhotoPopup$7;

    iget-object v0, v0, Lcom/callapp/contacts/popup/PhotoPopup$7;->d:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/PhotoPopup;->dismiss()V

    return-void
.end method
