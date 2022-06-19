.class public final synthetic Lif0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/ExpandableRecyclerView$b;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$b0;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/ExpandableRecyclerView$b;ILandroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif0;->a:Lcarbon/widget/ExpandableRecyclerView$b;

    iput p2, p0, Lif0;->b:I

    iput-object p3, p0, Lif0;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lif0;->a:Lcarbon/widget/ExpandableRecyclerView$b;

    iget v1, p0, Lif0;->b:I

    iget-object v2, p0, Lif0;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1, v2, p1}, Lcarbon/widget/ExpandableRecyclerView$b;->p(ILandroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;)V

    return-void
.end method
