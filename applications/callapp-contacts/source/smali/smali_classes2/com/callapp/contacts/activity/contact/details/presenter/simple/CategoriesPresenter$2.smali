.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const-string v1, "Affiliation"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/popup/contact/EditContactPopup;

    invoke-direct {v3, p1}, Lcom/callapp/contacts/popup/contact/EditContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const p1, 0x7f1207f1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return v2
.end method
