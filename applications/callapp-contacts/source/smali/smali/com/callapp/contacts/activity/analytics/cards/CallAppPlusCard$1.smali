.class Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$CallAppPlusCardCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$002(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Z)Z

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CallAppPlusCircleGraphFragment;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$500(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$500(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;->access$502(Lcom/callapp/contacts/activity/analytics/cards/CallAppPlusCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
