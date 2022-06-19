.class Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5$1;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;

    iget-object v0, v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;->c:Lcom/android/billingclient/api/m;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
