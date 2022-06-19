.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->b:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

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

    .line 95
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;->a(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->a:Ljava/lang/String;

    .line 1197
    iput-object v0, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;)V

    .line 1207
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
