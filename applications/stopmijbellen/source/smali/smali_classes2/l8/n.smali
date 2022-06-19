.class public final synthetic Ll8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Ll8/w;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ll8/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8/n;->a:Ll8/w;

    iput p2, p0, Ll8/n;->b:I

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 8

    iget-object p1, p0, Ll8/n;->a:Ll8/w;

    iget p2, p0, Ll8/n;->b:I

    .line 1
    const-class v0, Lh8/u;

    iget-object v1, p1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-le v1, p2, :cond_0

    .line 2
    new-instance v4, Lw8/q;

    invoke-direct {v4, v0}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v5, v2, [Lw8/n;

    .line 3
    sget-object v6, Lh8/v;->i:Lx8/b;

    iget-object v7, p1, Ll8/w;->b:Ljava/util/List;

    .line 4
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget v7, v7, Lh8/u;->e:I

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v4

    new-array v5, v2, [Lw8/n;

    sget-object v6, Lh8/v;->f:Lx8/b;

    iget-object v7, p1, Ll8/w;->b:Ljava/util/List;

    .line 5
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lh8/u;

    iget v7, v7, Lh8/u;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v5, v3

    .line 6
    new-instance v3, Lw8/r;

    invoke-direct {v3, v4, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {v3}, Lw8/r;->i()Lc9/g;

    .line 8
    iget-object v3, p1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/u;

    iget v4, v3, Lh8/u;->e:I

    sub-int/2addr v4, v2

    iput v4, v3, Lh8/u;->e:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lw8/f;

    invoke-direct {v1}, Lw8/f;-><init>()V

    .line 10
    new-instance v4, Lw8/g;

    invoke-direct {v4, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v2, [Lw8/n;

    .line 11
    sget-object v1, Lh8/v;->f:Lx8/b;

    iget-object v2, p1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/u;

    iget v2, v2, Lh8/u;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    aput-object v1, v0, v3

    .line 12
    new-instance v1, Lw8/r;

    invoke-direct {v1, v4, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 13
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    .line 14
    iget-object v0, p1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ll8/w;->g()V

    return-void
.end method
