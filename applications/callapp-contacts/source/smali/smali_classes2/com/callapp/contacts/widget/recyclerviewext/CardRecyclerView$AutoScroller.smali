.class public Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoScroller"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field private b:J

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;JI)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c:Z

    .line 236
    iput-wide p2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->b:J

    .line 237
    iput p4, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->d:I

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)Z
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Z)Z

    .line 245
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;->a()V

    .line 251
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->d:I

    if-lez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    new-instance v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$1;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget v1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->d:I

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    new-instance v2, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller$2;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    :cond_3
    return-void
.end method
