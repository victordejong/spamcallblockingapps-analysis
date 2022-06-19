.class public Lcom/a/a/a/a/b/a/c;
.super Lcom/a/a/a/a/b/a/e;
.source "ChangeAnimationInfo.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$w;

.field public b:Landroidx/recyclerview/widget/RecyclerView$w;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/a/a/a/a/b/a/e;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 28
    iput-object p2, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 29
    iput p3, p0, Lcom/a/a/a/a/b/a/c;->c:I

    .line 30
    iput p4, p0, Lcom/a/a/a/a/b/a/c;->d:I

    .line 31
    iput p5, p0, Lcom/a/a/a/a/b/a/c;->e:I

    .line 32
    iput p6, p0, Lcom/a/a/a/a/b/a/c;->f:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    :goto_0
    return-object v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 43
    iput-object v1, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p1, :cond_1

    .line 46
    iput-object v1, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/a/a/a/a/b/a/c;->c:I

    .line 50
    iput p1, p0, Lcom/a/a/a/a/b/a/c;->d:I

    .line 51
    iput p1, p0, Lcom/a/a/a/a/b/a/c;->e:I

    .line 52
    iput p1, p0, Lcom/a/a/a/a/b/a/c;->f:I

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{, oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/c;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/c;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
