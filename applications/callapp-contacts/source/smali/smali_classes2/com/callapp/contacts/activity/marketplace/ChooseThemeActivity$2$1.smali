.class Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 1

    .line 97
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1100
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->b:Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ChooseThemeFragment;->isLightTheme()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Z)V

    .line 1101
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity$2;->c:Lcom/callapp/contacts/activity/marketplace/ChooseThemeActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/app/Activity;)V

    return-void
.end method
