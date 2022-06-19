.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterGridView$onActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/Action;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$5;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 122
    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Bottom Action Bar"

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Call reminder clicked"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action;->getKey()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/action/local/BlockCallAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Block clicked"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
