.class Lcom/callapp/contacts/CallAppApplication$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication$22;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication$22;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication$22;)V
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    iget-object v0, v0, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    iget-object v0, v0, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 1303
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    .line 1305
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orderid"

    aput-object v3, v8, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const-string v3, "Purchase"

    const-string v4, "order info"

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1312
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 1313
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$22$1;->a:Lcom/callapp/contacts/CallAppApplication$22;

    iget-object p1, p1, Lcom/callapp/contacts/CallAppApplication$22;->a:Lcom/callapp/contacts/CallAppApplication;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    :cond_2
    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
