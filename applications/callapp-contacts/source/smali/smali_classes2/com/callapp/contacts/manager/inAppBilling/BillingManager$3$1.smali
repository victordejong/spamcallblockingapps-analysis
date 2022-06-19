.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 387
    const-class v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    const-string v1, "onBillingServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/android/billingclient/api/g;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1000
    iget p1, p1, Lcom/android/billingclient/api/g;->a:I

    if-nez p1, :cond_0

    .line 373
    const-class v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBillingSetupFinished() response: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;

    iget-object p1, p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 375
    iget-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;

    iget-object p1, p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 378
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onBillingSetupFinished() error code: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 381
    :cond_2
    const-class p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    const-string v0, "onBillingSetupFinished() null billingResult"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
