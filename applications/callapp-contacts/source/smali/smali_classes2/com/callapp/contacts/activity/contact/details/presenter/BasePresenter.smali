.class public abstract Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object v0
.end method

.method protected getTrackerCategory()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-static {v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
.end method

.method public setPresentersContainer(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-void
.end method

.method public shouldAdd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
