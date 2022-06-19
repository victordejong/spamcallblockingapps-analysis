.class public final synthetic Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/framework/util/CollectionUtils$Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/-$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog;->lambda$getJsonStoreItem$0(Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;)Z

    move-result p1

    return p1
.end method
