.class public abstract Ley$f;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public a:Ldz$i;

.field public final b:Landroid/widget/ImageButton;

.field public final c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

.field public final synthetic d:Ley;


# direct methods
.method public constructor <init>(Ley;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V
    .locals 0

    iput-object p1, p0, Ley$f;->d:Ley;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Ley$f;->b:Landroid/widget/ImageButton;

    iput-object p4, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object p2, p1, Ley;->k:Landroid/content/Context;

    invoke-static {p2}, Lfy;->k(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Ley;->k:Landroid/content/Context;

    invoke-static {p1, p4}, Lfy;->v(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    return-void
.end method


# virtual methods
.method public b(Ldz$i;)V
    .locals 3

    iput-object p1, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {p1}, Ldz$i;->r()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ley$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object v1, p0, Ley$f;->b:Landroid/widget/ImageButton;

    new-instance v2, Ley$f$a;

    invoke-direct {v2, p0}, Ley$f$a;-><init>(Ley$f;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1}, Ldz$i;->t()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v0, p0, Ley$f;->d:Ley;

    iget-object v0, v0, Ley;->r:Ley$j;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Ley$f;->d:Ley;

    iget-object v0, v0, Ley;->u:Ljava/util/Map;

    iget-object v1, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Ley$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ley$f;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Ley$f;->d:Ley;

    iget-object p1, p1, Ley;->u:Ljava/util/Map;

    iget-object v0, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ley$f;->d:Ley;

    iget-object p1, p1, Ley;->u:Ljava/util/Map;

    iget-object v0, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->r()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Ley$f;->d(Z)V

    iget-object v1, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
