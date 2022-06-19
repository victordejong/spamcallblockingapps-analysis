.class Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 273
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    .line 275
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->setPurchased(Z)V

    .line 277
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->setNotValidForPromotion(Z)V

    .line 282
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getDaysOfFreeSubscription()I

    move-result p1

    if-lez p1, :cond_2

    .line 283
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cN:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getDaysOfFreeSubscription()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->setUserBuyProduct(Z)V

    .line 286
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    .line 287
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/PromotionManager;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)V

    .line 288
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b()V

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2$1;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;->a:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
