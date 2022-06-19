.class Lcom/callapp/contacts/CallAppApplication$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$10;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$10;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->c(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$10;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/contacts/CallAppApplication;->c(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 497
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$10;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->c(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 498
    iget-object p1, p0, Lcom/callapp/contacts/CallAppApplication$10;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p1}, Lcom/callapp/contacts/CallAppApplication;->d(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
