.class public final Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;
.super Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u0008\u0018\u00010\u000cR\u00020\rH\u0014J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003J\u0010\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0014J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;",
        "Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "promotionCardBackground",
        "Landroid/widget/ImageView;",
        "promotionCardCTA",
        "Landroid/widget/TextView;",
        "promotionCardImage",
        "promotionCardText",
        "createAdapterDataLoadTask",
        "Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;",
        "Lcom/callapp/contacts/activity/base/BaseContactHolder;",
        "flip",
        "",
        "view",
        "getLoaderLoadFields",
        "Ljava/util/EnumSet;",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getProfilePicture",
        "Lcom/callapp/contacts/widget/ProfilePictureView;",
        "onBind",
        "jsonStickyData",
        "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field w:Landroid/widget/TextView;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0533

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/favorites/BaseFavoriteViewHolder;-><init>(Landroid/view/View;IZ)V

    const v0, 0x7f0a070b

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Te\u2026>(R.id.promotionCardText)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->w:Landroid/widget/TextView;

    const v0, 0x7f0a070a

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Im\u2026(R.id.promotionCardImage)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->x:Landroid/widget/ImageView;

    const v0, 0x7f0a0709

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Te\u2026w>(R.id.promotionCardCTA)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->y:Landroid/widget/TextView;

    const v0, 0x7f0a0708

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById<Im\u2026.promotionCardBackground)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->z:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$e;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 65
    iget-object v1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ObjectAnimator;

    const-string v2, "oa1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    iget-object v1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;

    invoke-direct {v3, v0, p0}, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;-><init>(Lkotlin/jvm/internal/ab$e;Landroid/view/View;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    iget-object p0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    iget-object p0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final getLoaderLoadFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
