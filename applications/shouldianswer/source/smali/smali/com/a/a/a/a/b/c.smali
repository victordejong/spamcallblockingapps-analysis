.class public abstract Lcom/a/a/a/a/b/c;
.super Lcom/a/a/a/a/b/a;
.source "GeneralItemAnimator.java"


# instance fields
.field private a:Z

.field private b:Lcom/a/a/a/a/b/a/h;

.field private c:Lcom/a/a/a/a/b/a/d;

.field private d:Lcom/a/a/a/a/b/a/f;

.field private e:Lcom/a/a/a/a/b/a/g;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/a/a/a/a/b/a;-><init>()V

    .line 39
    invoke-direct {p0}, Lcom/a/a/a/a/b/c;->p()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->l()V

    .line 45
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setup incomplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->n()V

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/d;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/f;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/g;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    return-void
.end method

.method protected a(Lcom/a/a/a/a/b/a/h;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateRemove(id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVGeneralItemAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/h;->a(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
    .locals 8

    .line 84
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateMove(id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVGeneralItemAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/a/a/a/a/b/a/g;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z
    .locals 9

    if-ne p1, p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/a/b/a/g;->a(Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "-"

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz p2, :cond_3

    .line 104
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    if-eqz p2, :cond_4

    .line 105
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateChange(old.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", old.position = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new.id = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new.position = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromX = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fromY = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toX = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toY = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVGeneralItemAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/a/a/b/a/f;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;IIII)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    .line 157
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    .line 158
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    .line 159
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateAdd(id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARVGeneralItemAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/d;->a(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ARVGeneralItemAnimator"

    const-string v1, "dispatchFinishedWhenDone()"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/a/a/a/a/b/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/g;->e()V

    .line 166
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/h;->e()V

    .line 167
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/d;->e()V

    .line 168
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/f;->e()V

    .line 170
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/g;->f()V

    .line 176
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/d;->f()V

    .line 177
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/f;->f()V

    .line 180
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/h;->d()V

    .line 181
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/g;->d()V

    .line 182
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/d;->d()V

    .line 183
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/f;->d()V

    .line 185
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->i()V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 122
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/c;->z(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 124
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/g;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 125
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/f;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 126
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/h;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 127
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/d;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 129
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/g;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 130
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 131
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/h;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 132
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/d;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 135
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/h;->b(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "after animation is cancelled, item should not be in the active animation list [remove]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/d;->b(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "after animation is cancelled, item should not be in the active animation list [add]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/f;->b(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 144
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "after animation is cancelled, item should not be in the active animation list [change]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a/g;->b(Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/a/a/a/a/b/c;->a:Z

    if-nez p1, :cond_6

    goto :goto_3

    .line 148
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "after animation is cancelled, item should not be in the active animation list [move]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->c()Z

    return-void
.end method

.method public k()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/a/a/a/a/b/c;->a:Z

    return v0
.end method

.method protected abstract l()V
.end method

.method protected m()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    .line 204
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    .line 205
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    .line 206
    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected n()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->o()V

    return-void
.end method

.method protected o()V
    .locals 14

    .line 259
    iget-object v0, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/h;->b()Z

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v1}, Lcom/a/a/a/a/b/a/g;->b()Z

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v2}, Lcom/a/a/a/a/b/a/f;->b()Z

    move-result v2

    .line 262
    iget-object v3, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v3}, Lcom/a/a/a/a/b/a/d;->b()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->g()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->e()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/a/a/a/a/b/c;->h()J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide v10, v4

    :goto_2
    const/4 v12, 0x0

    if-eqz v0, :cond_3

    .line 269
    iget-object v13, p0, Lcom/a/a/a/a/b/c;->b:Lcom/a/a/a/a/b/a/h;

    invoke-virtual {v13, v12, v4, v5}, Lcom/a/a/a/a/b/a/h;->a(ZJ)V

    :cond_3
    if-eqz v1, :cond_4

    .line 275
    iget-object v13, p0, Lcom/a/a/a/a/b/c;->e:Lcom/a/a/a/a/b/a/g;

    invoke-virtual {v13, v0, v6, v7}, Lcom/a/a/a/a/b/a/g;->a(ZJ)V

    :cond_4
    if-eqz v2, :cond_5

    .line 281
    iget-object v13, p0, Lcom/a/a/a/a/b/c;->d:Lcom/a/a/a/a/b/a/f;

    invoke-virtual {v13, v0, v6, v7}, Lcom/a/a/a/a/b/a/f;->a(ZJ)V

    :cond_5
    if-eqz v3, :cond_9

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v12, 0x1

    .line 286
    :cond_7
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v6

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    move-wide v0, v4

    .line 288
    :goto_3
    iget-object v2, p0, Lcom/a/a/a/a/b/c;->c:Lcom/a/a/a/a/b/a/d;

    invoke-virtual {v2, v12, v0, v1}, Lcom/a/a/a/a/b/a/d;->a(ZJ)V

    :cond_9
    return-void
.end method

.method protected z(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 115
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/g/y;->b()V

    return-void
.end method
