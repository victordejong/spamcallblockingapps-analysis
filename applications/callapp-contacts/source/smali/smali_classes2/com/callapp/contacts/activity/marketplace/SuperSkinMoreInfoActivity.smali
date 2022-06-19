.class public Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;
.super Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 51
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "ACTIVITY_SOURCE"

    const-string p1, "Store SuperSkin More Info screen"

    .line 52
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    return-object p0
.end method

.method private synthetic a(Landroid/widget/ImageView;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getWizardImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 118
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinMoreInfoActivity$jYYZYMDg4hebzdrV9XoVGw_GdV8;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinMoreInfoActivity$jYYZYMDg4hebzdrV9XoVGw_GdV8;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p1, p2, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 118
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->f:Z

    return v0
.end method

.method public static synthetic lambda$jYYZYMDg4hebzdrV9XoVGw_GdV8(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$n-G06bI9hAMVrbyYzBBhFf7sVxk(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 2061
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getSuperSkin()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)V
    .locals 14

    .line 82
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    const p1, 0x7f0a0107

    .line 84
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz p1, :cond_3

    const p1, 0x7f0a04a5

    .line 95
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getStorePartialPreviewImageUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    array-length v1, v0

    if-lez v1, :cond_2

    .line 100
    new-instance v1, Lcom/callapp/contacts/manager/task/DoneCountNotifier;

    array-length v2, v0

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/manager/task/DoneCountNotifier;-><init>(ILcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 108
    array-length v11, v0

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v6, v0, v12

    .line 109
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    new-instance v13, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a:Ljava/lang/String;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v9, 0x0

    move-object v2, v13

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f0a08c5

    .line 115
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinMoreInfoActivity$n-G06bI9hAMVrbyYzBBhFf7sVxk;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinMoreInfoActivity$n-G06bI9hAMVrbyYzBBhFf7sVxk;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setData(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 1

    .line 138
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)V

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0046

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->f:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->f:Z

    const-string v2, "EXTRA_IS_SUPER_SKIN_DOWNLOADED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store SuperSkin More Info screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p1, 0x7f120421

    .line 69
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0183

    .line 70
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f06010b

    .line 71
    invoke-static {p0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Store SuperSkin More Info screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c()V

    .line 294
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onPause()V

    return-void
.end method
