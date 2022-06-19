.class Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->c(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->c(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getDropTargetId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 114
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 115
    invoke-static {v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->d(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->c(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v4}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->c(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getDropTargetId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 105
    iget-object p3, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {p3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->b(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 99
    iget-object p3, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {p3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->a(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
