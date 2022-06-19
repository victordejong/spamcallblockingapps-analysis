.class Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->access$500(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->STATISTICS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    const-string v1, "Enter to plans screen - premium"

    const-string v2, "Store"

    if-ne p1, v0, :cond_1

    .line 138
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "InsightsStatsTab"

    invoke-virtual {p1, v2, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "InsightsTab"

    invoke-virtual {p1, v2, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->access$700(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "PLAN_PAGE_SOURCE"

    const-string v1, "InsightsBanner"

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;->b:Lcom/callapp/contacts/activity/analytics/cards/BannerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->access$800(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;)V

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
