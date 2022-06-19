.class public Lcarbon/widget/DropDown$c;
.super Lid0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lid0<",
        "Lcarbon/widget/DropDown$k;",
        "TType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lid0;-><init>()V

    return-void
.end method

.method private synthetic h(Lcarbon/widget/DropDown$k;Landroid/view/View;)V
    .locals 0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lid0;->d(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public synthetic i(Lcarbon/widget/DropDown$k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/DropDown$c;->h(Lcarbon/widget/DropDown$k;Landroid/view/View;)V

    return-void
.end method

.method public j(Lcarbon/widget/DropDown$k;I)V
    .locals 2

    iget-object v0, p1, Lcarbon/widget/DropDown$k;->a:Lcarbon/widget/TextView;

    iget-object v1, p0, Lid0;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lze0;

    invoke-direct {v0, p0, p1}, Lze0;-><init>(Lcarbon/widget/DropDown$c;Lcarbon/widget/DropDown$k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcarbon/widget/DropDown$k;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lm80;->carbon_popupmenu_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcarbon/widget/DropDown$k;

    invoke-direct {p2, p1}, Lcarbon/widget/DropDown$k;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcarbon/widget/DropDown$k;

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/DropDown$c;->j(Lcarbon/widget/DropDown$k;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/DropDown$c;->k(Landroid/view/ViewGroup;I)Lcarbon/widget/DropDown$k;

    move-result-object p1

    return-object p1
.end method
