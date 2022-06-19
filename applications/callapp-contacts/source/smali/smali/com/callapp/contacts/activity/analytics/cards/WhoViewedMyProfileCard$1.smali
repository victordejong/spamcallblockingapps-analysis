.class Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$002(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Z)Z

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;->access$402(Lcom/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
