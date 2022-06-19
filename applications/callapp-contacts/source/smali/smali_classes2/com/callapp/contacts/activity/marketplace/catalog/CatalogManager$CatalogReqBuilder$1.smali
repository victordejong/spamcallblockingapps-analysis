.class Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;->b:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;->b:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->c:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;->b:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    iget-object v3, v2, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->c:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-static {v3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;->onDone(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
