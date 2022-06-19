.class Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->getNumberOfCallsProgressBarData(Ljava/util/Map;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 308
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$1500(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 309
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$1600(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
