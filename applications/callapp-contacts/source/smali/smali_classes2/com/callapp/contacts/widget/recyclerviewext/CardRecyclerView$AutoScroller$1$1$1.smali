.class Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 264
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 266
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->b(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)J

    move-result-wide p1

    const-wide/16 v0, 0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)Z

    .line 270
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-object p2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p2, p2, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p2, p2, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Z)Z

    .line 273
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->b(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    .line 274
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1$1;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    iget-object p1, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;->b()V

    :cond_1
    return-void
.end method
