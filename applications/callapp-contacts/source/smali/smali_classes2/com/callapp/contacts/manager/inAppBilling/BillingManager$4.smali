.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 9

    .line 477
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    if-eqz p1, :cond_2

    .line 1481
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getBundle()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1482
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getBundle()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->getFreeSkus()[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    move-result-object p1

    .line 1483
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1484
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 1485
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;->component1()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1486
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1487
    iget-object v7, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;->a:Ljava/util/ArrayList;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1488
    iget-object v7, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
