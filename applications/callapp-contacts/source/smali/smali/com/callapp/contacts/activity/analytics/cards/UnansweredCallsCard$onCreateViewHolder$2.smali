.class final Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onVisibilityChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$setShouldShowYouAvoidAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Z)V

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$getAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$getAvoidYouFragment$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$getAvoidYouData$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$getYouAvoidVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;->access$setYouAvoidVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V

    return-void
.end method
