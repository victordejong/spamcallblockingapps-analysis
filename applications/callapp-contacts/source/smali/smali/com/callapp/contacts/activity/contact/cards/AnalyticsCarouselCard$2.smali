.class Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->handleFooter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Insights"

    const-string v2, "ClickMoreInsightsContactCard"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 98
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ENTER_FROM_BOTTOM_BAR"

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->getPriority()I

    move-result v0

    const-string v1, "CARD_PRIORITY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
