.class public Lcom/a/a/a/a/b/a/j;
.super Lcom/a/a/a/a/b/a/e;
.source "RemoveAnimationInfo.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$w;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/a/a/a/a/b/a/e;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveAnimationInfo{holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/j;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
