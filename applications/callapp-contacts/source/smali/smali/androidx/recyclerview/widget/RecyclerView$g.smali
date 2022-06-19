.class final Landroidx/recyclerview/widget/RecyclerView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 13096
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 7

    const/4 v0, 0x1

    .line 13101
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 13102
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->g:Landroidx/recyclerview/widget/RecyclerView$v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->h:Landroidx/recyclerview/widget/RecyclerView$v;

    if-nez v1, :cond_0

    .line 13103
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->g:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 13107
    :cond_0
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$v;->h:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 13807
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->i:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 13109
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 14520
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->d()V

    .line 14521
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    .line 15373
    iget-object v5, v4, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v5, v3}, Landroidx/recyclerview/widget/b$b;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 15375
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)Z

    goto :goto_1

    .line 15380
    :cond_2
    iget-object v6, v4, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/b$a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15381
    iget-object v6, v4, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    .line 15382
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)Z

    .line 15386
    iget-object v4, v4, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v4, v5}, Landroidx/recyclerview/widget/b$b;->a(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 14523
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v3

    .line 14524
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 14525
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_4
    xor-int/lit8 v3, v0, 0x1

    .line 14531
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->a(Z)V

    if-nez v0, :cond_5

    .line 13109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$v;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13110
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_5
    return-void
.end method
