.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager$OnItemSelectedListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z
    .locals 8

    .line 1792
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->g(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const-string v1, "Store"

    const-string v2, "MarketPlace Widget Clicked"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1793
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1794
    const-class p1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "PLAN_PAGE_SOURCE"

    const-string v1, "storeWidget"

    .line 1795
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$14;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->startActivity(Landroid/content/Intent;)V

    return v7
.end method
