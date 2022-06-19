.class public Lcom/a/a/a/a/b/a/i;
.super Lcom/a/a/a/a/b/a/e;
.source "MoveAnimationInfo.java"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$w;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$w;IIII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/a/a/a/a/b/a/e;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 30
    iput p2, p0, Lcom/a/a/a/a/b/a/i;->b:I

    .line 31
    iput p3, p0, Lcom/a/a/a/a/b/a/i;->c:I

    .line 32
    iput p4, p0, Lcom/a/a/a/a/b/a/i;->d:I

    .line 33
    iput p5, p0, Lcom/a/a/a/a/b/a/i;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    return-object v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveAnimationInfo{holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/a/b/a/i;->a:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/a/a/a/a/b/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
