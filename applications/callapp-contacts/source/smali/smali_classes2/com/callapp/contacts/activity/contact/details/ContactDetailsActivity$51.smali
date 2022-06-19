.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onTopBarIconClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 3050
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$51;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3054
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a()V

    .line 3056
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$51;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    if-eqz p1, :cond_0

    .line 3058
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->collapseCorrectedInfoViewForHelpUsIdentifyNumber()V

    :cond_0
    return-void
.end method
