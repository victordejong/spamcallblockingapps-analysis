.class public Lau0;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Lau0;
    .locals 4

    new-instance v0, Lau0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lau0;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic c(Lrt0;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lrt0;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Lrt0;J)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lxt0;

    invoke-direct {p3, p1}, Lxt0;-><init>(Lrt0;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
