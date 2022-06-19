.class Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$902(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Z)Z

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1100(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$2;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1202(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
