.class final Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;
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

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$setShouldShowLongestAnimation$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Z)V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getAlreadyBounded$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getGraphFragmentLongestCalls$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getLongestCallsData$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a(Ljava/util/List;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$getLongestVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard$onCreateViewHolder$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;->access$setLongestVisibilityTracker$p(Lcom/callapp/contacts/activity/analytics/cards/HitListsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)V

    return-void
.end method
