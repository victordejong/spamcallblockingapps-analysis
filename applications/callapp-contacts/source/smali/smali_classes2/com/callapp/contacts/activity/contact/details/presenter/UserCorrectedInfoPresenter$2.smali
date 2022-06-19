.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->onNegativeBtnClicked(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$2;->a:Lcom/callapp/framework/phone/Phone;

    const-string v3, "Is it X shown"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->showTellUsWhoItIsPopup(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    return-void
.end method
