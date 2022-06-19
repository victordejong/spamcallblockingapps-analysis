.class Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->access$002(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Z)Z

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->animateGraph()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/HoursCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/HoursCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/HoursCard;->access$202(Lcom/callapp/contacts/activity/analytics/cards/HoursCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_1
    return-void
.end method
