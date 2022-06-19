.class public Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialImagesCardAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/e/b<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/e/b<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;>;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 240
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    .line 244
    monitor-enter p1

    if-eqz p2, :cond_0

    .line 246
    :try_start_0
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    goto :goto_0

    .line 248
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b()V

    .line 252
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Z
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    new-instance v2, Landroidx/core/e/b;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)V
    .locals 2

    .line 2364
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2365
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2366
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2367
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b()V

    .line 2369
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Ljava/lang/Object;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private isNotEmpty()Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 4

    .line 239
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;

    .line 1305
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->getAdapterPosition()I

    move-result p2

    .line 1307
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1309
    monitor-exit v0

    return-void

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/e/b;

    .line 1313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    iget-object v0, p2, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1316
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->s:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1319
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1320
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->r:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1376
    iput-boolean v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 1320
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 1321
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->t:Landroid/widget/ImageView;

    iget-object p2, p2, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->getSocialId()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1323
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->r:Landroid/widget/ImageView;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 1348
    :cond_1
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->s:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1350
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 1313
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2297
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2298
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;-><init>(Landroid/view/View;)V

    .line 2299
    iget-object p1, p2, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardViewHolder;->s:Landroid/view/View;

    const v0, 0x7f0805c4

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public setItemsData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/e/b<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;>;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->b()V

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;->c:Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImagesCardAdapter;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
