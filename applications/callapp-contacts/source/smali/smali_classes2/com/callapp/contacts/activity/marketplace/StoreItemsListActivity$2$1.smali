.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;)V

    return-void
.end method
