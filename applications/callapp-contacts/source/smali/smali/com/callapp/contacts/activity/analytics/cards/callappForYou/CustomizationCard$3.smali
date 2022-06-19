.class Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
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

    .line 255
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 259
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Insights"

    const-string v1, "ClickInsightsCustomizationContinue"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1300(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$3;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1400(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
