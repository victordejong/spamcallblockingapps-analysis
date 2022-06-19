.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
    .locals 2

    .line 347
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p2, p2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;)V

    const-string v1, "inapp"

    invoke-virtual {p2, v1, p1, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    .line 401
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p2, p2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;)V

    const-string v1, "subs"

    invoke-virtual {p2, v1, p1, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method public static synthetic lambda$GYn31lLRteULs5Brct4PJprMGLw(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->c(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;->getSkuInformation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;

    .line 342
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->getSkuId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->b(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/marketplace/planPage/-$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;Ljava/util/List;)V

    .line 1207
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    .line 460
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
