.class public final Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field final synthetic a:Lkotlin/jvm/internal/ab$e;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/ab$e;Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->a:Lkotlin/jvm/internal/ab$e;

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->a:Lkotlin/jvm/internal/ab$e;

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->b:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->a:Lkotlin/jvm/internal/ab$e;

    iget-object p1, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ObjectAnimator;

    const-string v0, "oa1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->a:Lkotlin/jvm/internal/ab$e;

    iget-object p1, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/FavoritesPromotionViewHolder$flip$1;->a:Lkotlin/jvm/internal/ab$e;

    iget-object p1, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
