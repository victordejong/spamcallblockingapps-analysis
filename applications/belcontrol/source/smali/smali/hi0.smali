.class public Lhi0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lii0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lii0;I)V
    .locals 0

    invoke-virtual {p1}, Lii0;->b()V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lii0;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lii0;

    iget v1, p0, Lhi0;->b:I

    invoke-direct {v0, p2, p1, v1}, Lii0;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iget p1, p0, Lhi0;->d:I

    invoke-virtual {v0, p1}, Lii0;->g(I)V

    iget p1, p0, Lhi0;->c:I

    invoke-virtual {v0, p1}, Lii0;->e(I)V

    iget-object p1, p0, Lhi0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lii0;->h(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lhi0;->e:I

    invoke-virtual {v0, p1}, Lii0;->f(I)V

    iget-boolean p1, p0, Lhi0;->f:Z

    invoke-virtual {v0, p1}, Lii0;->c(Z)V

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lhi0;->f:Z

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lhi0;->b:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lhi0;->a:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lhi0;->a:I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lhi0;->c:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lhi0;->d:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lhi0;->e:I

    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lhi0;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lii0;

    invoke-virtual {p0, p1, p2}, Lhi0;->d(Lii0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lhi0;->e(Landroid/view/ViewGroup;I)Lii0;

    move-result-object p1

    return-object p1
.end method
