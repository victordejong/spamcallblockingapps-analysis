.class public Landroidx/recyclerview/widget/l;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/l$a;
    }
.end annotation


# instance fields
.field final b:Landroidx/recyclerview/widget/RecyclerView;

.field final c:Landroidx/recyclerview/widget/l$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11099
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/l$a;

    if-eqz p1, :cond_0

    .line 47
    instance-of v0, p1, Landroidx/recyclerview/widget/l$a;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Landroidx/recyclerview/widget/l$a;

    iput-object p1, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/l$a;

    return-void

    .line 50
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/l$a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/l$a;-><init>(Landroidx/recyclerview/widget/l;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/l;->c:Landroidx/recyclerview/widget/l$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 2

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 13055
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    .line 13631
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/core/view/a/c;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12055
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->h()Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    .line 12820
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 80
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 14055
    iget-object v0, p0, Landroidx/recyclerview/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method
