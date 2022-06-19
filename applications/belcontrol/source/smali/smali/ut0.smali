.class public Lut0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lwt0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lrt0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrt0<",
            "Lvt0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrt0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrt0<",
            "Lvt0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lut0;->a:Lrt0;

    return-void
.end method


# virtual methods
.method public d(Lwt0;I)V
    .locals 1

    invoke-static {}, Lvt0;->b()[Lvt0;

    move-result-object v0

    aget-object p2, v0, p2

    iget-object v0, p0, Lut0;->a:Lrt0;

    invoke-virtual {p1, p2, v0}, Lwt0;->d(Lvt0;Lrt0;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lwt0;
    .locals 0

    invoke-static {p1}, Lwt0;->b(Landroid/view/ViewGroup;)Lwt0;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    invoke-static {}, Lvt0;->b()[Lvt0;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lwt0;

    invoke-virtual {p0, p1, p2}, Lut0;->d(Lwt0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lut0;->e(Landroid/view/ViewGroup;I)Lwt0;

    move-result-object p1

    return-object p1
.end method
