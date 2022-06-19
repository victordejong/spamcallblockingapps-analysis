.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1000
    iget p1, p1, Lcom/android/billingclient/api/g;->a:I

    if-nez p1, :cond_1

    .line 294
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/k;

    .line 296
    invoke-virtual {p2}, Lcom/android/billingclient/api/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/k;->c()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v6, v0

    .line 297
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;

    iget-object v0, v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$2;->a:Lcom/android/billingclient/api/i;

    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/billingclient/api/k;->d()Ljava/lang/String;

    move-result-object v8

    const-string v3, "user purchased item"

    const-string v5, "subs"

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
