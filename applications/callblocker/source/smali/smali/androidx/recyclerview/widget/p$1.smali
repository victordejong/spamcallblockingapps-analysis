.class Landroidx/recyclerview/widget/p$1;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroidx/recyclerview/widget/p;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/p;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Landroidx/recyclerview/widget/p$1;->b:Landroidx/recyclerview/widget/p;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/p$1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 49
    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/p$1;->a:Z

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/p$1;->a:Z

    .line 51
    iget-object v0, p0, Landroidx/recyclerview/widget/p$1;->b:Landroidx/recyclerview/widget/p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->a()V

    .line 53
    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 57
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/p$1;->a:Z

    .line 60
    :cond_1
    return-void
.end method
