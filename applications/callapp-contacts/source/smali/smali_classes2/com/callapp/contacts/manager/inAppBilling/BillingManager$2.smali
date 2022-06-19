.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/i;

    .line 263
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1000
    :try_start_0
    new-instance v2, Lcom/android/billingclient/api/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/billingclient/api/a$a;-><init>(Lcom/android/billingclient/api/n;)V

    .line 266
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->c()Ljava/lang/String;

    move-result-object v4

    .line 2000
    iput-object v4, v2, Lcom/android/billingclient/api/a$a;->a:Ljava/lang/String;

    .line 267
    iget-object v4, v2, Lcom/android/billingclient/api/a$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2001
    new-instance v4, Lcom/android/billingclient/api/a;

    invoke-direct {v4, v3}, Lcom/android/billingclient/api/a;-><init>(Lcom/android/billingclient/api/n;)V

    iget-object v2, v2, Lcom/android/billingclient/api/a$a;->a:Ljava/lang/String;

    .line 3000
    iput-object v2, v4, Lcom/android/billingclient/api/a;->a:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;Lcom/android/billingclient/api/i;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    goto :goto_1

    .line 267
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Purchase token must be set"

    .line 2001
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 277
    const-class v3, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 278
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Purchase"

    const-string v5, "acknowledgePurchase exception"

    invoke-virtual {v2, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_1
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->d()I

    move-result v2

    if-nez v2, :cond_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;

    invoke-direct {v5, p0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;Lcom/android/billingclient/api/i;)V

    const-string v6, "inapp"

    invoke-virtual {v2, v6, v4, v5}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V

    .line 306
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "orderid"

    aput-object v4, v13, v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v3

    const-string v8, "Purchase"

    const-string v9, "order info"

    invoke-virtual/range {v7 .. v13}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
