.class public final Ley$h;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ley$h$c;,
        Ley$h$g;,
        Ley$h$e;,
        Ley$h$d;,
        Ley$h$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ley$h$f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:Ley$h$f;

.field public final h:I

.field public final i:Landroid/view/animation/Interpolator;

.field public final synthetic j:Ley;


# direct methods
.method public constructor <init>(Ley;)V
    .locals 1

    iput-object p1, p0, Ley$h;->j:Ley;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ley$h;->a:Ljava/util/ArrayList;

    iget-object v0, p1, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ley$h;->b:Landroid/view/LayoutInflater;

    iget-object v0, p1, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Lfy;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ley$h;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Lfy;->q(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ley$h;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Lfy;->m(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ley$h;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Ley;->k:Landroid/content/Context;

    invoke-static {v0}, Lfy;->n(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ley$h;->f:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Ley;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lrx;->mr_cast_volume_slider_layout_animation_duration_ms:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Ley$h;->h:I

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Ley$h;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ley$h;->k()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Ley$h$a;

    invoke-direct {v1, p0, p2, v0, p1}, Ley$h$a;-><init>(Ley$h;IILandroid/view/View;)V

    new-instance p2, Ley$h$b;

    invoke-direct {p2, p0}, Ley$h$b;-><init>(Ley$h;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget p2, p0, Ley$h;->h:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p2, p0, Ley$h;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final e(Ldz$i;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Ldz$i;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ldz$i;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ley$h;->f:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    iget-object p1, p0, Ley$h;->c:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    iget-object p1, p0, Ley$h;->e:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_2
    iget-object p1, p0, Ley$h;->d:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public f(Ldz$i;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Ldz$i;->i()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Ley$h;->j:Ley;

    iget-object v1, v1, Ley;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0, p1}, Ley$h;->e(Ldz$i;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Ley$h$f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Ley$h;->g:Ley$h$f;

    return-object p1

    :cond_0
    iget-object v0, p0, Ley$h;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ley$h$f;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ley$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Ley$h;->g(I)Ley$h$f;

    move-result-object p1

    invoke-virtual {p1}, Ley$h$f;->b()I

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(Ldz$i;Z)V
    .locals 5

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Ldz$i;->x()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ldz$i;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldz$i;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, p2, :cond_0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr v1, v4

    :cond_4
    invoke-virtual {p0}, Ley$h;->h()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-lt v1, p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eq p1, v2, :cond_7

    iget-object p1, p0, Ley$h;->j:Ley;

    iget-object p1, p1, Ley;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    instance-of p2, p1, Ley$h$d;

    if-eqz p2, :cond_7

    check-cast p1, Ley$h$d;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ley$h$d;->g()I

    move-result v0

    :cond_6
    invoke-virtual {p0, p2, v0}, Ley$h;->d(Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v1, v0, Ley;->j:Ljava/util/List;

    iget-object v2, v0, Ley;->g:Ljava/util/List;

    invoke-virtual {v0}, Ley;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcy;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public k()V
    .locals 10

    iget-object v0, p0, Ley$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ley$h$f;

    iget-object v1, p0, Ley$h;->j:Ley;

    iget-object v2, v1, Ley;->d:Ldz$i;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    iput-object v0, p0, Ley$h;->g:Ley$h$f;

    iget-object v0, v1, Ley;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz$i;

    iget-object v4, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v5, Ley$h$f;

    invoke-direct {v5, p0, v2, v1}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v2, Ley$h$f;

    iget-object v4, p0, Ley$h;->j:Ley;

    iget-object v4, v4, Ley;->d:Ldz$i;

    invoke-direct {v2, p0, v4, v1}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldz$i;

    iget-object v8, p0, Ley$h;->j:Ley;

    iget-object v8, v8, Ley;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v6, :cond_5

    iget-object v6, p0, Ley$h;->j:Ley;

    iget-object v6, v6, Ley;->d:Ldz$i;

    invoke-virtual {v6}, Ldz$i;->g()Lzy$b;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lzy$b;->k()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, p0, Ley$h;->j:Ley;

    iget-object v6, v6, Ley;->k:Landroid/content/Context;

    sget v8, Lux;->mr_dialog_groupable_header:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    iget-object v8, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v9, Ley$h$f;

    invoke-direct {v9, p0, v6, v2}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_5
    iget-object v8, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v9, Ley$h$f;

    invoke-direct {v9, p0, v7, v1}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v6, p0, Ley$h;->j:Ley;

    iget-object v6, v6, Ley;->d:Ldz$i;

    if-eq v6, v1, :cond_7

    if-nez v5, :cond_a

    invoke-virtual {v6}, Ldz$i;->g()Lzy$b;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lzy$b;->l()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v4

    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Ley$h;->j:Ley;

    iget-object v5, v5, Ley;->k:Landroid/content/Context;

    sget v6, Lux;->mr_dialog_transferable_header:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_9
    iget-object v6, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v7, Ley$h$f;

    invoke-direct {v7, p0, v5, v2}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_a
    iget-object v6, p0, Ley$h;->a:Ljava/util/ArrayList;

    new-instance v7, Ley$h$f;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v1, v8}, Ley$h$f;-><init>(Ley$h;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Ley$h;->j()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 3

    invoke-virtual {p0, p2}, Ley$h;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, p2}, Ley$h;->g(I)Ley$h$f;

    move-result-object p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "MediaRouteCtrlDialog"

    const-string p2, "Cannot bind item to ViewHolder because of wrong view type"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    check-cast p1, Ley$h$c;

    invoke-virtual {p1, p2}, Ley$h$c;->b(Ley$h$f;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ley$h$f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$i;

    iget-object v1, p0, Ley$h;->j:Ley;

    iget-object v1, v1, Ley;->s:Ljava/util/Map;

    invoke-virtual {v0}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ley$f;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ley$h$g;

    invoke-virtual {p1, p2}, Ley$h$g;->f(Ley$h$f;)V

    goto :goto_0

    :cond_2
    check-cast p1, Ley$h$e;

    invoke-virtual {p1, p2}, Ley$h$e;->b(Ley$h$f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ley$h$f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$i;

    iget-object v1, p0, Ley$h;->j:Ley;

    iget-object v1, v1, Ley;->s:Ljava/util/Map;

    invoke-virtual {v0}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ley$f;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ley$h$d;

    invoke-virtual {p1, p2}, Ley$h$d;->f(Ley$h$f;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string p1, "MediaRouteCtrlDialog"

    const-string p2, "Cannot create ViewHolder because of wrong view type"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Ley$h;->b:Landroid/view/LayoutInflater;

    sget v0, Ltx;->mr_cast_group_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ley$h$c;

    invoke-direct {p2, p0, p1}, Ley$h$c;-><init>(Ley$h;Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Ley$h;->b:Landroid/view/LayoutInflater;

    sget v0, Ltx;->mr_cast_route_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ley$h$g;

    invoke-direct {p2, p0, p1}, Ley$h$g;-><init>(Ley$h;Landroid/view/View;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Ley$h;->b:Landroid/view/LayoutInflater;

    sget v0, Ltx;->mr_cast_header_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ley$h$e;

    invoke-direct {p2, p0, p1}, Ley$h$e;-><init>(Ley$h;Landroid/view/View;)V

    return-object p2

    :cond_3
    iget-object p2, p0, Ley$h;->b:Landroid/view/LayoutInflater;

    sget v0, Ltx;->mr_cast_group_volume_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ley$h$d;

    invoke-direct {p2, p0, p1}, Ley$h$d;-><init>(Ley$h;Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object v0, p0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
