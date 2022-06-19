.class public Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$c;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$c;->j:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView$c;->j:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-static {v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->a(Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;)Z

    move-result v0

    return v0
.end method
