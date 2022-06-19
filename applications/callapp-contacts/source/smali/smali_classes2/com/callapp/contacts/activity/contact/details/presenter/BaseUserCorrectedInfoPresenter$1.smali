.class Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->showTellUsWhoItIsPopup(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->collapse(Z)V

    :cond_0
    return-void
.end method
