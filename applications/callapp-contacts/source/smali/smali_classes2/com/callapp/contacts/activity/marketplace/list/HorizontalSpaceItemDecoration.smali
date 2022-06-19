.class public Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 12
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 18
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    .line 19
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;->a:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 22
    :cond_0
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
