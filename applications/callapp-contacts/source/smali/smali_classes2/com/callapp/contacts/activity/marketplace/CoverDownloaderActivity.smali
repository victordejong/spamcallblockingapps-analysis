.class public Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
        ">;",
        "Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 58
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "source"

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p2, "RETURN_TO_PREVIOUS_CLASS"

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$4;-><init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 4080
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getCover()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 111
    invoke-super/range {p0 .. p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    const v1, 0x7f0a0107

    .line 112
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a087b

    .line 113
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_0
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    if-eqz v1, :cond_2

    .line 128
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_2
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz v1, :cond_5

    const v1, 0x7f0a04a5

    .line 137
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    iput-object v1, v0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getImageUrls()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 140
    array-length v3, v2

    if-lez v3, :cond_4

    .line 142
    new-instance v3, Lcom/callapp/contacts/manager/task/DoneCountNotifier;

    array-length v5, v2

    new-instance v6, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$2;

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;)V

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/manager/task/DoneCountNotifier;-><init>(ILcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 151
    array-length v14, v2

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_4

    aget-object v9, v2, v15

    .line 152
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
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

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a02c2

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 161
    invoke-direct {v0, v2, v3}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;I)V

    .line 163
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    invoke-virtual {v3, v1}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setData(Ljava/util/ArrayList;)V

    .line 164
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;

    invoke-direct {v3, v0, v2}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;Lcom/callapp/contacts/activity/marketplace/CoverPreviewFragment;)V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->setPageChangedListener(Landroidx/viewpager/widget/ViewPager$e;)V

    :cond_5
    return-void
.end method

.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V

    return-void
.end method

.method public a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V
    .locals 2

    .line 205
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 206
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->setCoverUrls(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V

    .line 207
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->o_()V

    return-void
.end method

.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    return-void
.end method

.method public synthetic c()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$c(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;
    .locals 3

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    .line 4247
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    .line 4248
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getOverlayUrls()[Ljava/lang/String;

    move-result-object p1

    .line 4249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4250
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4251
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4254
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4255
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4258
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4261
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4264
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download button clicked"

    const/16 v2, 0x50

    .line 1206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 200
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "Download finished"

    const/16 v2, 0x50

    .line 2206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public g()V
    .locals 6

    .line 212
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 214
    invoke-virtual {v5, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_1
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->dq:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v2, 0x7f120615

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f120251

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3111
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->o_()V

    return-void
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 0

    return-object p0
.end method

.method public getItemType()I
    .locals 1

    .line 65
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0030

    return v0
.end method

.method public synthetic getLeftButtonPrefixText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getLeftButtonPrefixText(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 269
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public synthetic getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getPurchasePref(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarColor()I
    .locals 2

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f060088

    .line 188
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 232
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->o_()V

    return-void
.end method

.method public isLightTheme()Z
    .locals 1

    .line 227
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    return v0
.end method

.method public isSkuInUse()Z
    .locals 2

    .line 237
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$j(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store Covers screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "source"

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->d:Ljava/lang/String;

    const-string v1, "EXTRA_ITEM_ID"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->c:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->c:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 p1, 0x2

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p1, v7, v0

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->d:Ljava/lang/String;

    aput-object v2, v7, p1

    const-string v2, "Store"

    const-string v3, "Enter to cover page"

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->showActionBar(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Store Covers screen"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;->e:Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    if-eqz v0, :cond_0

    .line 3172
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->c()V

    .line 279
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onPause()V

    return-void
.end method
