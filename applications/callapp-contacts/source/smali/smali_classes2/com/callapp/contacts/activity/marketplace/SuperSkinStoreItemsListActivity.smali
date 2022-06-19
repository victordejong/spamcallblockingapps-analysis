.class public Lcom/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity;
.super Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableSuperSkins()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getStoreItemType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getStoreTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120421

    .line 25
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
