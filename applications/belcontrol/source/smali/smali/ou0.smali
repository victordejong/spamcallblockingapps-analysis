.class public Lou0;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lou0;
    .locals 4

    new-instance v0, Lou0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lou0;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public c(Lkq0;Lst0;I)V
    .locals 4

    new-instance v0, Lmu0;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-direct {v0, v1, p1, p2, p3}, Lmu0;-><init>(Landroid/view/View;Lkq0;Lst0;I)V

    iget-object p2, v0, Lmu0;->h:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p1

    sget-object p2, Li11;->h:Li11;

    if-ne p1, p2, :cond_4

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lfa1;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lmu0;->h:Landroid/widget/TextView;

    const p3, 0x7f1100eb

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, v0, Lmu0;->h:Landroid/widget/TextView;

    const p3, 0x7f080437

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p3, Lk81;

    invoke-direct {p3}, Lk81;-><init>()V

    invoke-virtual {p3}, Lv71;->m()Landroid/database/Cursor;

    move-result-object p3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-gtz p3, :cond_2

    const p3, 0x7f1100ea

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v1, 0x7f0f0000

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {p1, v1, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p3, v0, Lmu0;->h:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, v0, Lmu0;->h:Landroid/widget/TextView;

    const p3, 0x7f080436

    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, v0, Lmu0;->h:Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lmu0;->h:Landroid/widget/TextView;

    const/16 p2, 0x8

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lmu0;->a(I)V

    return-void
.end method
