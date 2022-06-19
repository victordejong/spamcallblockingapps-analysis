.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    .line 537
    :try_start_0
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v1, 0x0

    .line 1001
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/f$a;-><init>(Lcom/android/billingclient/api/w;)V

    if-eqz p1, :cond_0

    .line 2000
    iget v1, p1, Lcom/android/billingclient/api/g;->a:I

    if-nez v1, :cond_0

    .line 538
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 539
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/k;

    new-instance p2, Ljava/util/ArrayList;

    .line 2001
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, v0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    .line 540
    iget-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    iget-object p1, p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    iget-object p2, p2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/c;->a(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;

    .line 541
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Purchase"

    const-string v0, "launchBillingFlow success"

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const-string v0, "null"

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 543
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3000
    iget v2, p1, Lcom/android/billingclient/api/g;->a:I

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 543
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/k;

    .line 547
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "empty"

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    const v0, 0x7f1204b6

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 554
    const-class p2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "skuId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    iget-object v2, v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    iget-object v2, v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", list: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 557
    const-class p2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 558
    invoke-static {p1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    return-void
.end method
