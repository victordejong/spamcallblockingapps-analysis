.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/i;

.field final synthetic b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;Lcom/android/billingclient/api/i;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;

    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;->a:Lcom/android/billingclient/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/g;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1000
    iget p1, p1, Lcom/android/billingclient/api/g;->a:I

    if-eqz p1, :cond_0

    .line 272
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;->a:Lcom/android/billingclient/api/i;

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2$1;->a:Lcom/android/billingclient/api/i;

    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Purchase"

    const-string v2, "acknowledgePurchase failed"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
