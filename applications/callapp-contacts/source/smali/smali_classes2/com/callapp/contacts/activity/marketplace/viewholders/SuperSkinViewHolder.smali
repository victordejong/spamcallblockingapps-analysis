.class public Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;
.super Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
.source "SourceFile"


# instance fields
.field private v:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    const p2, 0x7f0a08c5

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->v:Landroid/widget/ImageView;

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$SuperSkinViewHolder$xbmDd2-7EVqt24C7rYr8PhYctno;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$SuperSkinViewHolder$xbmDd2-7EVqt24C7rYr8PhYctno;-><init>(Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 42
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method public static synthetic lambda$5HlNqjvbEduUb_k320ychywmX6g(Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$xbmDd2-7EVqt24C7rYr8PhYctno(Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAllSuperSkins()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;->a(Ljava/lang/String;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    .line 40
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    .line 41
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getWizardImageUrls()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 42
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$SuperSkinViewHolder$5HlNqjvbEduUb_k320ychywmX6g;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$SuperSkinViewHolder$5HlNqjvbEduUb_k320ychywmX6g;-><init>(Lcom/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
