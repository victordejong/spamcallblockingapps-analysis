.class public Lcom/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity;
.super Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;-><init>()V

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
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getStoreItemType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getStoreTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120422

    .line 16
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
