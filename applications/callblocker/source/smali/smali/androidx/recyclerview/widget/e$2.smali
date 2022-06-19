.class Landroidx/recyclerview/widget/e$2;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/e;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/e;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Landroidx/recyclerview/widget/e$2;->a:Landroidx/recyclerview/widget/e;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/e$2;->a:Landroidx/recyclerview/widget/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/e;->a(II)V

    .line 135
    return-void
.end method
