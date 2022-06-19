.class public Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;
.super Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->e:Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v2, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fa66666    # 1.3f

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 56
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v16, v3, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v17, v3, v10

    const v12, 0x3fa66666    # 1.3f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3fa66666    # 1.3f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v3, 0x7d0

    .line 58
    invoke-virtual {v9, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 61
    invoke-virtual {v1, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {v9}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 64
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v9, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 79
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;

    invoke-direct {v3, v0, v1, v9}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->e:Z

    return v0
.end method

.method public static synthetic lambda$_Hy9JTau_maYt3F5SlPByxj6BN8(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;)V"
        }
    .end annotation

    .line 132
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 133
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 134
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$4;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)V

    const/4 v0, -0x1

    .line 2665
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 149
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const v0, 0x7f0600f3

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 150
    new-instance p2, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$5;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$5;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)V

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    const v5, 0x7f0d018a

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;-><init>(Landroidx/lifecycle/j;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01b5

    return v0
.end method

.method protected getStoreItemType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getStoreTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12041d

    .line 45
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store"

    const-string v1, "Call screen themes page"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Enter to call screen theme page"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0a0341

    .line 53
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$CallScreenThemeStoreItemsListActivity$_Hy9JTau_maYt3F5SlPByxj6BN8;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/marketplace/-$$Lambda$CallScreenThemeStoreItemsListActivity$_Hy9JTau_maYt3F5SlPByxj6BN8;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    const v0, 0x7f0a0740

    .line 96
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 112
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0800a3

    invoke-direct {p1, v0, v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const/4 v0, 0x1

    .line 2376
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 112
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method
