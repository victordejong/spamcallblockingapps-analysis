.class public abstract Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204a0

    .line 49
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;->refreshCardData()V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract refreshCardData()V
.end method

.method public setDefaultDialer()V
    .locals 3

    .line 72
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 73
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
