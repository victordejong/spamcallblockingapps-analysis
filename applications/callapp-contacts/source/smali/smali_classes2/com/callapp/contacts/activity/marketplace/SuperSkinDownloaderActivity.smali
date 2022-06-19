.class public Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;
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
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 60
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->g:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 50
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "RETURN_TO_PREVIOUS_CLASS"

    .line 53
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->f:Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p0, p1, v2, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 125
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->f:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 125
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getWizardImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 124
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$WRdVx7XfJ586ei7Bt32pPUUDvsU;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$WRdVx7XfJ586ei7Bt32pPUUDvsU;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$PEt0pIIOJfXZOacrpBRBSCf0oCM(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$WRdVx7XfJ586ei7Bt32pPUUDvsU(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$qoI6UsFqVcjS5LHw6KpM6NdMsJw(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->d()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 3073
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getSuperSkin()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 110
    invoke-super/range {p0 .. p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    const v1, 0x7f0a0107

    .line 112
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_0

    const v3, 0x7f0a087b

    .line 114
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    const v1, 0x7f0a08c5

    .line 121
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->f:Landroid/widget/ImageView;

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$qoI6UsFqVcjS5LHw6KpM6NdMsJw;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$qoI6UsFqVcjS5LHw6KpM6NdMsJw;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_1

    .line 130
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$1;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz v1, :cond_4

    const v1, 0x7f0a04a5

    .line 139
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    iput-object v1, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->g:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getImageUrls()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 142
    array-length v3, v2

    if-lez v3, :cond_3

    .line 144
    new-instance v3, Lcom/callapp/contacts/manager/task/DoneCountNotifier;

    array-length v5, v2

    new-instance v6, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$2;

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/manager/task/DoneCountNotifier;-><init>(ILcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 153
    array-length v14, v2

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_3

    aget-object v9, v2, v15

    .line 154
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    new-instance v13, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v10, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a:Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object v5, v13

    move-object v12, v3

    move-object v4, v13

    move-object/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader$SinglePageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Lcom/callapp/contacts/manager/task/Task$DoneListener;Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const v2, 0x7f0a08c2

    .line 160
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 162
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v3, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->getStoreFullPreviewImageUrls()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 1169
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;

    invoke-direct {v5, v0, v2, v3}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 164
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->g:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setData(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 1

    .line 193
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$4;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0047

    return v0
.end method

.method public getStatusBarColor()I
    .locals 2

    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f060088

    .line 187
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "EXTRA_IS_SUPER_SKIN_DOWNLOADED"

    .line 102
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store SuperSkin screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->showActionBar(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_1
    const p1, 0x7f0a04b8

    .line 90
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a0179

    .line 92
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$PEt0pIIOJfXZOacrpBRBSCf0oCM;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$SuperSkinDownloaderActivity$PEt0pIIOJfXZOacrpBRBSCf0oCM;-><init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->g:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c()V

    .line 358
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onPause()V

    return-void
.end method
