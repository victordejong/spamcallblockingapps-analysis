.class public abstract Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private final B:Landroid/view/ViewGroup;

.field private final C:Landroid/widget/ImageView;

.field private final D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private final F:Landroidx/lifecycle/j;

.field private G:Lcom/google/android/exoplayer2/m;

.field public final r:Landroid/widget/ImageView;

.field public s:Landroid/widget/TextView;

.field protected final t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

.field public u:Z

.field private v:Landroidx/cardview/widget/CardView;

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->u:Z

    .line 73
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->F:Landroidx/lifecycle/j;

    const p3, 0x7f0a04c5

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->r:Landroid/widget/ImageView;

    const p3, 0x7f0a02a2

    .line 75
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/cardview/widget/CardView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->v:Landroidx/cardview/widget/CardView;

    const p3, 0x7f0a0a87

    .line 76
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->A:Landroid/view/View;

    const p3, 0x7f0a02c3

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->w:Landroid/view/ViewGroup;

    const p3, 0x7f0a053b

    .line 78
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->y:Landroid/widget/TextView;

    const p3, 0x7f0a0538

    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->z:Landroid/widget/TextView;

    const p3, 0x7f0a070d

    .line 80
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->C:Landroid/widget/ImageView;

    const p3, 0x7f0a070e

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->D:Landroid/widget/TextView;

    const p3, 0x7f0a070c

    .line 82
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->B:Landroid/view/ViewGroup;

    const p3, 0x7f0a0a79

    .line 83
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    const p3, 0x7f0a06c5

    .line 84
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    .line 85
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->t:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    const p2, 0x7f0a02f9

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->s:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    return-object p1
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">;)",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$StoreItemLoadingViewHolder$wVZTmexKnM80CYKxa8svGpJE27U;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$StoreItemLoadingViewHolder$wVZTmexKnM80CYKxa8svGpJE27U;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Lcom/callapp/framework/util/CollectionUtils$Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    return-object p1
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    .line 97
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroidx/lifecycle/j;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->F:Landroidx/lifecycle/j;

    return-object p0
.end method

.method private l()V
    .locals 6

    .line 312
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600f2

    .line 314
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 316
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 317
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f0601cc

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 318
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f080378

    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 321
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPrice()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionIcon()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 327
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;-><init>(Landroid/view/View;)V

    .line 332
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    :cond_0
    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 336
    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 339
    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$wVZTmexKnM80CYKxa8svGpJE27U(Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
.end method

.method public final a(Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->r:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 103
    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 222
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v1, p3, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2376
    iput-boolean v1, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 226
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;-><init>(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Ljava/lang/String;)V

    .line 2496
    iput-object v1, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 274
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 280
    new-instance p3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPrice()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->x:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;

    .line 286
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :cond_2
    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionIcon()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPromotionPercent()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionIcon()Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->l()V

    .line 303
    :goto_0
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    .line 304
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x190

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 306
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void
.end method

.method public final a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 190
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getContainer()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v1, p3, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 1376
    iput-boolean p3, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 193
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 194
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 197
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPromotionPercent()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPromotionPercent()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120555

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    const p3, 0x7f060244

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getUpperFrame()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 210
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->l()V

    .line 212
    :goto_1
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    .line 213
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x190

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 215
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
.end method

.method protected b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 1

    .line 346
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cM:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getPrice()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method destroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->w()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 3130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->E:Landroid/view/View;

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 381
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public getContainer()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->v:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public getDataLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->w:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrice()Landroid/widget/TextView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPromotionContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPromotionIcon()Landroid/view/View;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPromotionText()Landroid/widget/TextView;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpperFrame()Landroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->A:Landroid/view/View;

    return-object v0
.end method

.method protected setAdditionalDataView(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 4

    .line 160
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->u:Z

    const v1, 0x7f060088

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ColorUtils;->getRgbRepresentation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "><b>$1</b></font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\*(.*?)\\*"

    .line 162
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->s:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->s:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPrice()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1203b3

    .line 176
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 177
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f060041

    .line 178
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f12057f

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_3
    const p1, 0x7f06010a

    .line 181
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method start()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->j()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->b()V

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->G:Lcom/google/android/exoplayer2/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/m;->e()V

    :cond_0
    return-void
.end method
