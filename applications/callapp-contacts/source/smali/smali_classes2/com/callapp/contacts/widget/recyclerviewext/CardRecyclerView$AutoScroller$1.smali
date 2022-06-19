.class Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 255
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 257
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 258
    iget-object p2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p2, p2, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    new-instance v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
