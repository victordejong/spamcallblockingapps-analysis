.class public Lcom/a/a/a/a/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "BridgeAdapterDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/a/a/a/a/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/a/c$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    .line 115
    iput-object p3, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/c$a;

    .line 134
    iget-object v1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/a/a/a/a/a/c$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/c$a;

    .line 147
    iget-object v1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 149
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/a/a/a/a/a/c$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 7

    .line 198
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/a/a/a/a/a/c$a;

    .line 199
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/a/a/a/a/a/c$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/a/a/a/a/a/c$a;

    .line 160
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 162
    iget-object v3, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/a/a/a/a/a/c$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/c$a;

    .line 173
    iget-object v1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/a/a/a/a/a/c$a;->b(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/c$a;

    .line 186
    iget-object v1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/a/a/a/a/a/c$a;->c(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
