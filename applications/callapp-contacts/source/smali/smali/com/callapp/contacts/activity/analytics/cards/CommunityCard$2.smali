.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$102(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Z)Z

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->level:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$500(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel;Lcom/callapp/contacts/model/contact/ContactData;I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$602(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
