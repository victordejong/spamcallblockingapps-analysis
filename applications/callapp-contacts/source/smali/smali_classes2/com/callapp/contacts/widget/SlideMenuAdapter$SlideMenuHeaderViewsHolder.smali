.class Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;
.implements Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideMenuHeaderViewsHolder"
.end annotation


# instance fields
.field final synthetic r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

.field private s:Landroid/widget/ImageView;

.field private t:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Landroidx/lifecycle/j;)V
    .locals 3

    .line 407
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    .line 408
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0a4e

    .line 409
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a0a4f

    .line 410
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a0273

    .line 411
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a0272

    .line 412
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a0271

    .line 413
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a0a8a

    .line 414
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a0a8e

    .line 415
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/widget/ProfilePictureView;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0ad7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    .line 417
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p3, p0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 419
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getUserBadgeContributionForSlideMenu()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 421
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p3, 0x7f060117

    .line 426
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    new-instance p3, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$1;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a017c

    .line 436
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 437
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 438
    new-instance v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$2;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a017b

    .line 446
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 447
    new-instance p3, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    new-instance p2, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$vRhR4za759cNP9eWwKjagYP7dLQ;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$vRhR4za759cNP9eWwKjagYP7dLQ;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    .line 463
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 464
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->dY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance p3, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NUj1jlRHd5ZNXfOYJrcGpNmQ-rM;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NUj1jlRHd5ZNXfOYJrcGpNmQ-rM;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;)V

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    goto :goto_1

    .line 469
    :cond_1
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->dY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance p3, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v0, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$76zqAeS964Fv5aRdLwlOBbUgZqk;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$76zqAeS964Fv5aRdLwlOBbUgZqk;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;)V

    invoke-direct {p3, v0}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    .line 475
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->t:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 476
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Landroidx/lifecycle/j;Lcom/callapp/contacts/widget/SlideMenuAdapter$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Landroidx/lifecycle/j;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;->j()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 472
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 470
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$AEwfmQBpSHbZTskc8pIwqSIyaSo;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$AEwfmQBpSHbZTskc8pIwqSIyaSo;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->s:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 464
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NW8JcrDexiHeycsMEhcGwDvLNoQ;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/-$$Lambda$SlideMenuAdapter$SlideMenuHeaderViewsHolder$NW8JcrDexiHeycsMEhcGwDvLNoQ;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$76zqAeS964Fv5aRdLwlOBbUgZqk(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$AEwfmQBpSHbZTskc8pIwqSIyaSo(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NUj1jlRHd5ZNXfOYJrcGpNmQ-rM(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$NW8JcrDexiHeycsMEhcGwDvLNoQ(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$vRhR4za759cNP9eWwKjagYP7dLQ(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 10

    .line 495
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->a()V

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 499
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    new-instance v9, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0805a9

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0xbb8

    new-instance v8, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IIZZILcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;)V

    invoke-static {p1, v9}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 482
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->g(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 484
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->t:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    return-void
.end method
