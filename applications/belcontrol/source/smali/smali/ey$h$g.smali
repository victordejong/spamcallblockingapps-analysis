.class public Ley$h$g;
.super Ley$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ProgressBar;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/RelativeLayout;

.field public final j:Landroid/widget/CheckBox;

.field public final k:F

.field public final l:I

.field public final m:I

.field public final n:Landroid/view/View$OnClickListener;

.field public final synthetic o:Ley$h;


# direct methods
.method public constructor <init>(Ley$h;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, p1, Ley$h;->j:Ley;

    sget v1, Lqx;->mr_cast_mute_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sget v2, Lqx;->mr_cast_volume_slider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-direct {p0, v0, p2, v1, v2}, Ley$f;-><init>(Ley;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    new-instance v0, Ley$h$g$a;

    invoke-direct {v0, p0}, Ley$h$g$a;-><init>(Ley$h$g;)V

    iput-object v0, p0, Ley$h$g;->n:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Ley$h$g;->e:Landroid/view/View;

    sget v0, Lqx;->mr_cast_route_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ley$h$g;->f:Landroid/widget/ImageView;

    sget v0, Lqx;->mr_cast_route_progress_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ley$h$g;->g:Landroid/widget/ProgressBar;

    sget v1, Lqx;->mr_cast_route_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ley$h$g;->h:Landroid/widget/TextView;

    sget v1, Lqx;->mr_cast_volume_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Ley$h$g;->i:Landroid/widget/RelativeLayout;

    sget v1, Lqx;->mr_cast_checkbox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    iget-object v1, p1, Ley$h;->j:Ley;

    iget-object v1, v1, Ley;->k:Landroid/content/Context;

    invoke-static {v1}, Lfy;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Ley$h;->j:Ley;

    iget-object p2, p2, Ley;->k:Landroid/content/Context;

    invoke-static {p2, v0}, Lfy;->t(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    iget-object p2, p1, Ley$h;->j:Ley;

    iget-object p2, p2, Ley;->k:Landroid/content/Context;

    invoke-static {p2}, Lfy;->h(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Ley$h$g;->k:F

    iget-object p1, p1, Ley$h;->j:Ley;

    iget-object p1, p1, Ley;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lox;->mr_dynamic_dialog_row_height:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ley$h$g;->l:I

    const/4 p1, 0x0

    iput p1, p0, Ley$h$g;->m:I

    return-void
.end method


# virtual methods
.method public f(Ley$h$f;)V
    .locals 5

    invoke-virtual {p1}, Ley$h$f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldz$i;

    iget-object v0, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz$i;

    iget-object v2, p0, Ley$h$g;->o:Ley$h;

    iget-object v2, v2, Ley$h;->j:Ley;

    iget-object v2, v2, Ley;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    :cond_1
    invoke-virtual {p0, p1}, Ley$f;->b(Ldz$i;)V

    iget-object v0, p0, Ley$h$g;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Ley$h$g;->o:Ley$h;

    invoke-virtual {v1, p1}, Ley$h;->f(Ldz$i;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ley$h$g;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0, p1}, Ley$h$g;->h(Ldz$i;)Z

    move-result v0

    invoke-virtual {p0, p1}, Ley$h$g;->g(Ldz$i;)Z

    move-result p1

    iget-object v2, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Ley$h$g;->g:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Ley$h$g;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Ley$h$g;->e:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v2, p0, Ley$f;->b:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Ley$h$g;->e:Landroid/view/View;

    iget-object v2, p0, Ley$h$g;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    iget-object v2, p0, Ley$h$g;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ley$h$g;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v2, p0, Ley$f;->a:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->x()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Ley$h$g;->l:I

    goto :goto_2

    :cond_6
    iget v2, p0, Ley$h$g;->m:I

    :goto_2
    invoke-static {v1, v2}, Ley;->h(Landroid/view/View;I)V

    iget-object v1, p0, Ley$h$g;->e:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget v3, p0, Ley$h$g;->k:F

    goto :goto_4

    :cond_8
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    if-nez p1, :cond_a

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget v2, p0, Ley$h$g;->k:F

    :cond_a
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    return-void
.end method

.method public final g(Ldz$i;)Z
    .locals 3

    iget-object v0, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Ley$h$g;->h(Ldz$i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ley$h$g;->h(Ldz$i;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0, p1}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ldz$i$a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public h(Ldz$i;)Z
    .locals 2

    invoke-virtual {p1}, Ldz$i;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0, p1}, Ldz$i;->h(Ldz$i;)Ldz$i$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ldz$i$a;->a()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(ZZ)V
    .locals 3

    iget-object v0, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Ley$h$g;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ley$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ley$h$g;->f:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ley$h$g;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Ley$h$g;->o:Ley$h;

    iget-object v0, p0, Ley$h$g;->i:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget p1, p0, Ley$h$g;->l:I

    goto :goto_0

    :cond_1
    iget p1, p0, Ley$h$g;->m:I

    :goto_0
    invoke-virtual {p2, v0, p1}, Ley$h;->d(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
