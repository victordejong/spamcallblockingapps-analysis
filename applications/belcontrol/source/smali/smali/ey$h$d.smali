.class public Ley$h$d;
.super Ley$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final e:Landroid/widget/TextView;

.field public final f:I

.field public final synthetic g:Ley$h;


# direct methods
.method public constructor <init>(Ley$h;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Ley$h$d;->g:Ley$h;

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

    sget v0, Lqx;->mr_group_volume_route_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ley$h$d;->e:Landroid/widget/TextView;

    iget-object p1, p1, Ley$h;->j:Ley;

    iget-object p1, p1, Ley;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lox;->mr_dynamic_volume_group_list_item_height:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Ley$h$d;->f:I

    return-void
.end method


# virtual methods
.method public f(Ley$h$f;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, p0, Ley$h$d;->g:Ley$h;

    invoke-virtual {v1}, Ley$h;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Ley$h$d;->f:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ley;->h(Landroid/view/View;I)V

    invoke-virtual {p1}, Ley$h$f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldz$i;

    invoke-super {p0, p1}, Ley$f;->b(Ldz$i;)V

    iget-object v0, p0, Ley$h$d;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ley$h$d;->f:I

    return v0
.end method
