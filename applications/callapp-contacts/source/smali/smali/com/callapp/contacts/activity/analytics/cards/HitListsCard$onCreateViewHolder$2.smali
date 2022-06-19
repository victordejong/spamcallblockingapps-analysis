.class final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$HitListsCardHolder;
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
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$setShouldShowWhoICallAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getGraphFragmentFrequentCallersA$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getWhoICalledTheMostData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getWhoICallVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$2;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$setWhoICallVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V

    return-void
.end method
