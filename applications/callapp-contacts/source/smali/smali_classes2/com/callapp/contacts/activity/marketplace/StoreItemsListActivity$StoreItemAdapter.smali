.class final Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StoreItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

.field private b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 199
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f0601ec

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->d:I

    .line 203
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->c:Ljava/util/List;

    .line 204
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;

    .line 205
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;)Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TU;"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d027a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    move-object v0, p1

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v3, 0x7f060026

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    .line 216
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    const-class v5, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    aput-object v5, v4, v1

    const-class v5, Landroidx/lifecycle/j;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->e:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    aput-object p1, v3, v1

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    .line 1090
    iput-boolean v1, p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->u:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 196
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    .line 1227
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz p2, :cond_1

    .line 1229
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1230
    iget-object v0, p1, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1231
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter$1;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)V

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    .line 1238
    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionIcon()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1241
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPromotionPercent()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionIcon()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getPromotionText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;->a(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    move-result-object p1

    return-object p1
.end method
