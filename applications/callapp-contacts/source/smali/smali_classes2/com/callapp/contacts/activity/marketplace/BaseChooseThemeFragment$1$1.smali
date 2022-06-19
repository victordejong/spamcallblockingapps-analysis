.class Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 1

    .line 116
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1119
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getThemes()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->a(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Ljava/util/List;)Ljava/util/List;

    .line 1121
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;->a:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;->b(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment;Ljava/util/List;)V

    .line 1123
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseChooseThemeFragment$1$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
