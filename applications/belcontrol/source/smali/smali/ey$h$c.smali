.class public Ley$h$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/TextView;

.field public final e:F

.field public f:Ldz$i;

.field public final synthetic g:Ley$h;


# direct methods
.method public constructor <init>(Ley$h;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Ley$h$c;->g:Ley$h;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Ley$h$c;->a:Landroid/view/View;

    sget v0, Lqx;->mr_cast_group_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ley$h$c;->b:Landroid/widget/ImageView;

    sget v0, Lqx;->mr_cast_group_progress_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ley$h$c;->c:Landroid/widget/ProgressBar;

    sget v1, Lqx;->mr_cast_group_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ley$h$c;->d:Landroid/widget/TextView;

    iget-object p2, p1, Ley$h;->j:Ley;

    iget-object p2, p2, Ley;->k:Landroid/content/Context;

    invoke-static {p2}, Lfy;->h(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Ley$h$c;->e:F

    iget-object p1, p1, Ley$h;->j:Ley;

    iget-object p1, p1, Ley;->k:Landroid/content/Context;

    invoke-static {p1, v0}, Lfy;->t(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public b(Ley$h$f;)V
    .locals 2

    invoke-virtual {p1}, Ley$h$f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldz$i;

    iput-object p1, p0, Ley$h$c;->f:Ldz$i;

    iget-object v0, p0, Ley$h$c;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Ley$h$c;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Ley$h$c;->c(Ldz$i;)Z

    move-result v0

    iget-object v1, p0, Ley$h$c;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Ley$h$c;->e:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ley$h$c;->a:Landroid/view/View;

    new-instance v1, Ley$h$c$a;

    invoke-direct {v1, p0}, Ley$h$c$a;-><init>(Ley$h$c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ley$h$c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Ley$h$c;->g:Ley$h;

    invoke-virtual {v1, p1}, Ley$h;->f(Ldz$i;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ley$h$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Ldz$i;)Z
    .locals 3

    iget-object v0, p0, Ley$h$c;->g:Ley$h;

    iget-object v0, v0, Ley$h;->j:Ley;

    iget-object v0, v0, Ley;->d:Ldz$i;

    invoke-virtual {v0}, Ldz$i;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    return v2
.end method
