.class Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;

    move-result-object p1

    if-nez p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {}, Lcom/callapp/contacts/util/video/CallAppExoPlayerFactory;->a()Lcom/google/android/exoplayer2/m;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m;

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->c(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroidx/lifecycle/j;

    move-result-object p1

    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/m;->e()V

    .line 246
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 248
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setShutterBackgroundColor(I)V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p3}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/ac;)V

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;

    move-result-object p1

    new-instance p3, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;)V

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/ac$a;)V

    .line 261
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->b(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Lcom/google/android/exoplayer2/m;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/util/video/VideoCacheManager;->get()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object p3

    iget-object p4, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->b:Ljava/lang/String;

    const-string p5, "webm"

    invoke-static {p4, p5}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/callapp/contacts/util/video/VideoCacheManager;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->c(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroidx/lifecycle/j;

    move-result-object p1

    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 267
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$1;->c:Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    return p2
.end method
