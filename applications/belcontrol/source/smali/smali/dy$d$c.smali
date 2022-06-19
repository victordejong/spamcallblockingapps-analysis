.class public Ldy$d$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy$d;
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

.field public final synthetic e:Ldy$d;


# direct methods
.method public constructor <init>(Ldy$d;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Ldy$d$c;->e:Ldy$d;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Ldy$d$c;->a:Landroid/view/View;

    sget v0, Lqx;->mr_picker_route_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldy$d$c;->b:Landroid/widget/ImageView;

    sget v0, Lqx;->mr_picker_route_progress_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ldy$d$c;->c:Landroid/widget/ProgressBar;

    sget v1, Lqx;->mr_picker_route_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ldy$d$c;->d:Landroid/widget/TextView;

    iget-object p1, p1, Ldy$d;->g:Ldy;

    iget-object p1, p1, Ldy;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lfy;->t(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public b(Ldy$d$b;)V
    .locals 2

    invoke-virtual {p1}, Ldy$d$b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldz$i;

    iget-object v0, p0, Ldy$d$c;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ldy$d$c;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Ldy$d$c;->a:Landroid/view/View;

    new-instance v1, Ldy$d$c$a;

    invoke-direct {v1, p0, p1}, Ldy$d$c$a;-><init>(Ldy$d$c;Ldz$i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ldy$d$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldy$d$c;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Ldy$d$c;->e:Ldy$d;

    invoke-virtual {v1, p1}, Ldy$d;->e(Ldz$i;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
