.class Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0

    .line 1321
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz p1, :cond_0

    .line 1322
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    :cond_0
    return-void
.end method
