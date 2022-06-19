.class Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;Ljava/util/List;)V

    .line 1207
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
