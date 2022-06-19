.class Landroidx/recyclerview/widget/RecyclerView$i$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$i;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 0

    .prologue
    .line 7627
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 7635
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7646
    .line 7647
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7648
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 7630
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 7640
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 7641
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7640
    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 7653
    .line 7654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 7655
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i$2;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->k(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method
