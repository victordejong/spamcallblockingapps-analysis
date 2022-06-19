.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$002(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Z)Z

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a(Ljava/util/List;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->access$402(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
