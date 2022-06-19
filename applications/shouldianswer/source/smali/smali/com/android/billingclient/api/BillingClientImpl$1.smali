.class Lcom/android/billingclient/api/BillingClientImpl$1;
.super Landroid/os/ResultReceiver;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/c;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/c;Landroid/os/Handler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$1;->a:Lcom/android/billingclient/api/c;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$1;->a:Lcom/android/billingclient/api/c;

    invoke-static {v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()Lcom/android/billingclient/api/g;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BillingClient"

    const-string p2, "PurchasesUpdatedListener is null - no way to return the response."

    .line 146
    invoke-static {p1, p2}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-static {p2}, Lcom/android/billingclient/a/a;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    .line 151
    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/g;->a(ILjava/util/List;)V

    return-void
.end method
