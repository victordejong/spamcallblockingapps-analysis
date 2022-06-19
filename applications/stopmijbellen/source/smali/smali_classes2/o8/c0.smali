.class public final synthetic Lo8/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lw8/k$b;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/c;IILw8/k$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/c0;->a:Lcom/mglab/scm/visual/c;

    iput p2, p0, Lo8/c0;->b:I

    iput p3, p0, Lo8/c0;->c:I

    iput-object p4, p0, Lo8/c0;->d:Lw8/k$b;

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 7

    iget-object p1, p0, Lo8/c0;->a:Lcom/mglab/scm/visual/c;

    iget p2, p0, Lo8/c0;->b:I

    iget v0, p0, Lo8/c0;->c:I

    iget-object v1, p0, Lo8/c0;->d:Lw8/k$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class v2, Lh8/c;

    const-class v3, Lh8/w;

    const-class v4, Lh8/l;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v6, :cond_6

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lf8/h;->a0(Landroid/content/Context;)I

    move-result p2

    if-eq p2, v6, :cond_2

    if-eq p2, v3, :cond_1

    .line 3
    new-instance p2, Lw8/q;

    invoke-direct {p2, v4}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v1, v6, [Lw8/n;

    .line 4
    sget-object v2, Lh8/m;->n:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p2

    invoke-virtual {p2}, Lw8/e;->i()Lc9/g;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lw8/q;

    invoke-direct {p2, v4}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v1, v6, [Lw8/n;

    .line 6
    sget-object v2, Lh8/m;->n:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p2

    new-array v1, v6, [Lw8/n;

    sget-object v2, Lh8/m;->i:Lx8/b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->i(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v5

    .line 7
    new-instance v2, Lw8/r;

    invoke-direct {v2, p2, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 8
    invoke-virtual {v2}, Lw8/r;->i()Lc9/g;

    goto :goto_0

    .line 9
    :cond_2
    new-instance p2, Lw8/q;

    invoke-direct {p2, v4}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v1, v6, [Lw8/n;

    .line 10
    sget-object v2, Lh8/m;->n:Lx8/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object p2

    new-array v1, v6, [Lw8/n;

    sget-object v2, Lh8/m;->i:Lx8/b;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v5

    .line 11
    new-instance v2, Lw8/r;

    invoke-direct {v2, p2, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 12
    invoke-virtual {v2}, Lw8/r;->i()Lc9/g;

    .line 13
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/l;

    const-string v2, "list cleared"

    invoke-direct {v1, v2}, Lk8/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 14
    :cond_3
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 15
    const-class v1, Lh8/g;

    .line 16
    new-instance v2, Lw8/g;

    invoke-direct {v2, p2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 17
    invoke-virtual {v2}, Lw8/e;->i()Lc9/g;

    .line 18
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/e;

    const-string v2, "Cache cleared"

    invoke-direct {v1, v2}, Lk8/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 19
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 20
    new-instance v1, Lw8/g;

    invoke-direct {v1, p2, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v1}, Lw8/e;->i()Lc9/g;

    goto :goto_1

    .line 22
    :cond_5
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 23
    new-instance v3, Lw8/g;

    invoke-direct {v3, p2, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array p2, v6, [Lw8/n;

    aput-object v1, p2, v5

    .line 24
    new-instance v1, Lw8/r;

    invoke-direct {v1, v3, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 25
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    .line 26
    :goto_1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/a;

    invoke-direct {v1, v6}, Lk8/a;-><init>(I)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 27
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lf8/g;->D(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 28
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 29
    new-instance v1, Lw8/g;

    invoke-direct {v1, p2, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v1}, Lw8/e;->i()Lc9/g;

    goto :goto_2

    .line 31
    :cond_7
    new-instance p2, Lw8/f;

    invoke-direct {p2}, Lw8/f;-><init>()V

    .line 32
    new-instance v2, Lw8/g;

    invoke-direct {v2, p2, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array p2, v6, [Lw8/n;

    aput-object v1, p2, v5

    .line 33
    new-instance v1, Lw8/r;

    invoke-direct {v1, v2, p2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 34
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    .line 35
    :goto_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-static {v6, p2}, La6/h;->m(ILba/b;)V

    .line 36
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lf8/g;->D(Landroid/content/Context;)V

    .line 37
    :goto_3
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    if-nez v0, :cond_8

    const v0, 0x7f11011d

    goto :goto_4

    :cond_8
    const v0, 0x7f1101ab

    :goto_4
    invoke-static {p2, p1, v0}, Lf8/g;->K(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method
