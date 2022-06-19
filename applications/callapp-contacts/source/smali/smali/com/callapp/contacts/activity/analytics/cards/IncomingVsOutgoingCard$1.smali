.class Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;
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

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$002(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Z)Z

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->access$402(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
