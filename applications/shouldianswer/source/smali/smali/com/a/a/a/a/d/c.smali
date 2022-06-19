.class public Lcom/a/a/a/a/d/c;
.super Ljava/lang/Object;
.source "WrapperAdapterUtils.java"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;I)I
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, p2, p3, v0}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;ILcom/a/a/a/a/a/a;)I

    move-result p0

    return p0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;ILcom/a/a/a/a/a/a;)I
    .locals 4

    .line 112
    new-instance v0, Lcom/a/a/a/a/a/f;

    invoke-direct {v0}, Lcom/a/a/a/a/a/f;-><init>()V

    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {p4}, Lcom/a/a/a/a/a/a;->a()Lcom/a/a/a/a/a/a;

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 124
    new-instance v3, Lcom/a/a/a/a/a/b;

    invoke-direct {v3, p0, v2}, Lcom/a/a/a/a/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;)V

    invoke-virtual {p4, v3}, Lcom/a/a/a/a/a/a;->a(Lcom/a/a/a/a/a/b;)Lcom/a/a/a/a/a/a;

    :cond_2
    if-ne p3, v1, :cond_3

    goto :goto_0

    :cond_3
    if-ne p0, p1, :cond_4

    goto :goto_0

    .line 136
    :cond_4
    instance-of v3, p0, Lcom/a/a/a/a/a/h;

    if-nez v3, :cond_5

    if-eqz p1, :cond_7

    move p3, v1

    goto :goto_0

    .line 143
    :cond_5
    check-cast p0, Lcom/a/a/a/a/a/h;

    .line 145
    invoke-virtual {v0}, Lcom/a/a/a/a/a/f;->a()V

    .line 146
    invoke-interface {p0, v0, p3}, Lcom/a/a/a/a/a/h;->a(Lcom/a/a/a/a/a/f;I)V

    .line 147
    iget p3, v0, Lcom/a/a/a/a/a/f;->c:I

    .line 148
    iget-object v2, v0, Lcom/a/a/a/a/a/f;->b:Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Lcom/a/a/a/a/a/f;->b()Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz p4, :cond_6

    .line 152
    invoke-virtual {p4, v0}, Lcom/a/a/a/a/a/a;->a(Lcom/a/a/a/a/a/f;)Lcom/a/a/a/a/a/a;

    .line 156
    :cond_6
    iget-object p0, v0, Lcom/a/a/a/a/a/f;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    if-nez p0, :cond_2

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    if-eq p0, p1, :cond_8

    move p3, v1

    :cond_8
    if-eqz p2, :cond_9

    if-eq v2, p2, :cond_9

    move p3, v1

    :cond_9
    if-ne p3, v1, :cond_a

    if-eqz p4, :cond_a

    .line 168
    invoke-virtual {p4}, Lcom/a/a/a/a/a/a;->a()Lcom/a/a/a/a/a/a;

    :cond_a
    return p3
.end method

.method public static a(Lcom/a/a/a/a/a/a;III)I
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->b()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-le p1, p2, :cond_1

    .line 205
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/b;

    add-int/lit8 v1, p1, -0x1

    .line 206
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/a/a/b;

    .line 210
    iget-object v1, v1, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    check-cast v1, Lcom/a/a/a/a/a/h;

    invoke-interface {v1, v0, p3}, Lcom/a/a/a/a/a/h;->a(Lcom/a/a/a/a/a/b;I)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static a(Lcom/a/a/a/a/a/a;Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;I)I
    .locals 8

    .line 175
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->b()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-nez p1, :cond_0

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez p2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    :goto_2
    if-ge v4, v1, :cond_5

    .line 183
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/a/a/a/a/a/b;

    if-eqz p1, :cond_3

    .line 184
    iget-object v7, v6, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    if-ne v7, p1, :cond_3

    move v3, v4

    :cond_3
    if-eqz p2, :cond_4

    .line 187
    iget-object v6, v6, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    if-ne v6, p2, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eq v3, v2, :cond_7

    if-eq v5, v2, :cond_7

    if-le v5, v3, :cond_6

    goto :goto_3

    .line 197
    :cond_6
    invoke-static {p0, v3, v5, p3}, Lcom/a/a/a/a/d/c;->a(Lcom/a/a/a/a/a/a;III)I

    move-result p0

    return p0

    :cond_7
    :goto_3
    return v2
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$a;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/a/a/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a/a/a;-><init>()V

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v1, v1, p2, v0}, Lcom/a/a/a/a/d/c;->a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;Ljava/lang/Object;ILcom/a/a/a/a/a/a;)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    return-object v1

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/a/a/a/a/a/a;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/a/a/a/a/a/b;

    .line 57
    iget-object v0, p2, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object p0, p2, Lcom/a/a/a/a/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
