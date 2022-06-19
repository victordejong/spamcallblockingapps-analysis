.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getItemsStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 2

    .line 111
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1114
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iput-object p1, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1116
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
