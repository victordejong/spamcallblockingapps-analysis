.class public abstract Lcom/unknownphone/callblocker/custom/e;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "OnScrollListener.java"


# instance fields
.field private a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private b:I


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/unknownphone/callblocker/custom/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/unknownphone/callblocker/custom/e;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 29
    if-gtz p3, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/custom/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/unknownphone/callblocker/custom/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    .line 32
    iget-object v2, p0, Lcom/unknownphone/callblocker/custom/e;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v2

    .line 33
    add-int/2addr v1, v2

    iget v2, p0, Lcom/unknownphone/callblocker/custom/e;->b:I

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/e;->a()V

    goto :goto_0
.end method
