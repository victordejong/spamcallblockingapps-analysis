.class public Lcarbon/widget/DropDown$d;
.super Lid0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/DropDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lid0<",
        "Lcarbon/widget/DropDown$e;",
        "TType;>;"
    }
.end annotation


# instance fields
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lid0;-><init>()V

    iput-object p1, p0, Lcarbon/widget/DropDown$d;->f:Ljava/util/List;

    return-void
.end method

.method private synthetic h(Lcarbon/widget/DropDown$e;Landroid/view/View;)V
    .locals 0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lid0;->d(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public synthetic i(Lcarbon/widget/DropDown$e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/DropDown$d;->h(Lcarbon/widget/DropDown$e;Landroid/view/View;)V

    return-void
.end method

.method public j(Lcarbon/widget/DropDown$e;I)V
    .locals 2

    iget-object v0, p1, Lcarbon/widget/DropDown$e;->a:Lcarbon/widget/CheckBox;

    iget-object v1, p0, Lid0;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcarbon/widget/DropDown$e;->a:Lcarbon/widget/CheckBox;

    iget-object v1, p0, Lcarbon/widget/DropDown$d;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcarbon/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Laf0;

    invoke-direct {v0, p0, p1}, Laf0;-><init>(Lcarbon/widget/DropDown$d;Lcarbon/widget/DropDown$e;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcarbon/widget/DropDown$e;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lm80;->carbon_popupmenu_checkableitem:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcarbon/widget/DropDown$e;

    invoke-direct {p2, p1}, Lcarbon/widget/DropDown$e;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcarbon/widget/DropDown$e;

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/DropDown$d;->j(Lcarbon/widget/DropDown$e;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcarbon/widget/DropDown$d;->k(Landroid/view/ViewGroup;I)Lcarbon/widget/DropDown$e;

    move-result-object p1

    return-object p1
.end method
