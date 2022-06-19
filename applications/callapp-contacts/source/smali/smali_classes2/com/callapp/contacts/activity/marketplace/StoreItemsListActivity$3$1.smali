.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Landroid/view/View;[Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(",
            "Landroid/view/View;",
            "[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 141
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 144
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result p1

    .line 145
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->c(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto/16 :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;->f:Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->finish()V

    return-void
.end method
