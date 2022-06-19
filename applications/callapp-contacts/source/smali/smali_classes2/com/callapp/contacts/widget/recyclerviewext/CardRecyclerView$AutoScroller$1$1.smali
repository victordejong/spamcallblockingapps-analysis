.class Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iput-object p2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object v0, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object v0, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object v1, v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-static {v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object v1, v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object v1, v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    return-void
.end method
