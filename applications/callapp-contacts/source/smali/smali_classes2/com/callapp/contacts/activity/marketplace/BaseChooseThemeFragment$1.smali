.class Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;)V

    .line 1207
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
