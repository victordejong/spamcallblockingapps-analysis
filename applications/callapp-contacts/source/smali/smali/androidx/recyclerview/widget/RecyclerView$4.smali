.class final Landroidx/recyclerview/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 643
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 2

    .line 676
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)V
    .locals 2

    .line 647
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 648
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5545
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    const/4 v1, 0x0

    .line 5546
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 5547
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5548
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)V
    .locals 2

    .line 654
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 6537
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 6538
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->b(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6539
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    :cond_0
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 661
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->a(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 667
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$f$b;Landroidx/recyclerview/widget/RecyclerView$f$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 670
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$4;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->g()V

    :cond_1
    return-void
.end method
