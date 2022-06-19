.class public Ldu0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcu0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ltz0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ldu0;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lcu0;I)V
    .locals 1

    iget-object v0, p0, Ldu0;->a:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object v0, p0, Ldu0;->b:Ltz0;

    invoke-virtual {p1, p2, v0}, Lcu0;->c(Ljava/lang/String;Ltz0;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcu0;
    .locals 0

    invoke-static {p1}, Lcu0;->b(Landroid/view/ViewGroup;)Lcu0;

    move-result-object p1

    return-object p1
.end method

.method public f([Ljava/lang/String;Ltz0;)V
    .locals 0

    iput-object p1, p0, Ldu0;->a:[Ljava/lang/String;

    iput-object p2, p0, Ldu0;->b:Ltz0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ldu0;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcu0;

    invoke-virtual {p0, p1, p2}, Ldu0;->d(Lcu0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldu0;->e(Landroid/view/ViewGroup;I)Lcu0;

    move-result-object p1

    return-object p1
.end method
