.class Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 1

    .line 232
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    if-eqz p1, :cond_0

    .line 1236
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->setDefaultTheme(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)V

    .line 1237
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
