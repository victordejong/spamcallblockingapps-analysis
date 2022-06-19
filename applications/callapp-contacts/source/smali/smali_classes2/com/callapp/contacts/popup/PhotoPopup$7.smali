.class Lcom/callapp/contacts/popup/PhotoPopup$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/PhotoPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/callapp/contacts/popup/PhotoPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/PhotoPopup;ILcom/callapp/common/model/json/JSONSocialNetworkID;Landroid/app/Activity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->d:Lcom/callapp/contacts/popup/PhotoPopup;

    iput p2, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iput-object p4, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 230
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->a:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->d:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v1}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup$7;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/PhotoPopup$7$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/PhotoPopup$7$1;-><init>(Lcom/callapp/contacts/popup/PhotoPopup$7;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
