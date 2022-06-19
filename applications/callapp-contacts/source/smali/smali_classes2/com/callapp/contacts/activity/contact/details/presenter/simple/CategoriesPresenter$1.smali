.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 91
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 92
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const-string v1, "Affiliation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;ZLcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 93
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/contacts/AffiliationUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)Z

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void
.end method
