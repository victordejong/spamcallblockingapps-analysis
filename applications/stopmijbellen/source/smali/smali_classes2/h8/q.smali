.class public Lh8/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 1
    :goto_0
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 2
    const-class v1, Lh8/a;

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v0, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lw8/n;

    const/4 v1, 0x0

    .line 4
    sget-object v3, Lh8/b;->g:Lx8/b;

    invoke-virtual {v3, p0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v0, v1

    .line 5
    new-instance v1, Lw8/r;

    invoke-direct {v1, v2, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    .line 7
    new-instance v0, Lh8/a;

    invoke-direct {v0}, Lh8/a;-><init>()V

    .line 8
    iput-object p0, v0, Lh8/a;->c:Ljava/lang/String;

    .line 9
    iput-object p1, v0, Lh8/a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lb9/a;->a()Z

    return-void
.end method

.method public static C(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 1
    invoke-static {p0, v0}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p0

    new-instance v0, Lk8/l;

    const-string v1, "MGDB.updateLogWithCallLog.NO_PERMISSION"

    invoke-direct {v0, v1}, Lk8/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lh8/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh8/o;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/c;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/d;->j:Lx8/b;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v2, v0

    .line 5
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/c;

    .line 8
    iget v4, v3, Lh8/c;->f:I

    if-ne v4, v5, :cond_0

    .line 9
    iget-object v4, v3, Lh8/c;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_0

    .line 10
    iget-object v3, v3, Lh8/c;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/c;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/d;->j:Lx8/b;

    const/4 v5, -0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v2, v0

    .line 6
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/c;

    .line 9
    iget-object v3, v3, Lh8/c;->c:Ljava/lang/String;

    invoke-static {v3, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method public static d()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Lx8/a;

    .line 2
    new-instance v3, Lw8/o;

    invoke-direct {v3, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 3
    const-class v2, Lh8/l;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lw8/n;

    .line 5
    sget-object v3, Lh8/m;->v:Lx8/b;

    .line 6
    invoke-virtual {v3, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lh8/m;->i:Lx8/b;

    .line 7
    invoke-virtual {v3, v1}, Lx8/b;->d(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 8
    new-instance v1, Lw8/r;

    invoke-direct {v1, v4, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 9
    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/g;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/h;->h:Lx8/b;

    invoke-virtual {v4, p0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v2, v0

    .line 5
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/i;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v3}, Lw8/e;->l()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/i;

    .line 6
    iget-object v2, v2, Lh8/i;->d:Ljava/lang/String;

    invoke-static {v2, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/r;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/s;->g:Lx8/b;

    const-string v5, "16"

    .line 5
    invoke-static {p0, v5, v1}, Lf8/g;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v4, p0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v2, v0

    .line 7
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 8
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/w;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/x;->j:Lx8/b;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v2, v0

    .line 5
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/w;

    .line 8
    iget v4, v3, Lh8/w;->f:I

    if-ne v4, v5, :cond_0

    .line 9
    iget-object v4, v3, Lh8/w;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v4, v6, :cond_0

    .line 10
    iget-object v3, v3, Lh8/w;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/w;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/x;->j:Lx8/b;

    const/4 v5, -0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v2, v0

    .line 6
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/w;

    .line 9
    iget-object v3, v3, Lh8/w;->c:Ljava/lang/String;

    invoke-static {v3, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method public static j(Lh8/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget v0, p0, Lh8/i;->c:I

    if-ne v0, p5, :cond_2

    iget-object p5, p0, Lh8/i;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh8/i;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh8/i;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    iget-object p1, p0, Lh8/i;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    iget-object p0, p0, Lh8/i;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Landroid/content/Context;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lf8/g;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-class p1, Lh8/u;

    .line 3
    new-instance v0, Lw8/q;

    invoke-direct {v0, p1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    new-array v1, p1, [Lw8/n;

    .line 4
    sget-object v2, Lh8/v;->h:Lx8/b;

    .line 5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v0

    new-array p1, p1, [Lw8/n;

    sget-object v1, Lh8/v;->i:Lx8/b;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    aput-object v1, p1, v3

    .line 7
    new-instance v1, Lw8/r;

    invoke-direct {v1, v0, p1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 8
    invoke-virtual {v1}, Lw8/r;->i()Lc9/g;

    const-string p1, "psetpresets"

    .line 9
    invoke-static {p0, p1, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "psetaslfn"

    .line 10
    invoke-static {p0, p1, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "psetaspe"

    .line 11
    invoke-static {p0, p1, v3}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lx8/a;

    .line 1
    new-instance v1, Lw8/o;

    invoke-direct {v1, v0}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v0, Lh8/l;

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v2}, Lw8/e;->l()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    .line 6
    iget-object v2, v1, Lh8/l;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p0, v1, Lh8/l;->c:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/a;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw8/n;

    .line 4
    sget-object v2, Lh8/b;->g:Lx8/b;

    invoke-virtual {v2, p0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v1, v0

    .line 5
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/a;

    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Lh8/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "1"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lw8/o;

    const/4 v2, 0x1

    new-array v2, v2, [Lx8/a;

    new-array v3, v0, [Lx8/a;

    invoke-static {v3}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lw8/o;-><init>([Lx8/a;)V

    const-class v2, Lh8/c;

    .line 2
    new-instance v3, Lw8/g;

    invoke-direct {v3, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v3}, Lw8/d;->c()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/w;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/x;->j:Lx8/b;

    const/4 v5, -0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v2, v0

    .line 6
    new-instance v4, Lw8/r;

    invoke-direct {v4, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/w;

    .line 9
    iget-object v4, v3, Lh8/w;->c:Ljava/lang/String;

    invoke-static {v4, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    iget-object p0, v3, Lh8/w;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    new-array v2, v0, [Lx8/a;

    .line 11
    new-instance v3, Lw8/o;

    invoke-direct {v3, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 12
    const-class v2, Lh8/c;

    .line 13
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v1, v1, [Lw8/n;

    .line 14
    sget-object v2, Lh8/d;->j:Lx8/b;

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    aput-object v2, v1, v0

    .line 16
    new-instance v2, Lw8/r;

    invoke-direct {v2, v4, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 17
    invoke-virtual {v2}, Lw8/r;->l()Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/c;

    .line 19
    iget-object v3, v2, Lh8/c;->c:Ljava/lang/String;

    invoke-static {v3, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    iget-object p0, v2, Lh8/c;->d:Ljava/lang/String;

    return-object p0

    :cond_3
    new-array v0, v0, [Lx8/a;

    .line 21
    new-instance v1, Lw8/o;

    invoke-direct {v1, v0}, Lw8/o;-><init>([Lx8/a;)V

    .line 22
    const-class v0, Lh8/i;

    .line 23
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v2}, Lw8/e;->l()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/i;

    .line 26
    iget-object v2, v1, Lh8/i;->d:Ljava/lang/String;

    invoke-static {v2, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_5

    .line 27
    iget-object p0, v1, Lh8/i;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object p0, v1, Lh8/i;->e:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method public static p()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Lx8/a;

    .line 2
    new-instance v3, Lw8/o;

    invoke-direct {v3, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 3
    const-class v2, Lh8/c;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v4}, Lw8/e;->l()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/c;

    .line 7
    iget-object v4, v3, Lh8/c;->d:Ljava/lang/String;

    invoke-static {v4, v0}, Lh8/q;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v3, v3, Lh8/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v1, v1, [Lx8/a;

    .line 9
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 10
    const-class v1, Lh8/w;

    .line 11
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v3}, Lw8/e;->l()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/w;

    .line 14
    iget-object v3, v2, Lh8/w;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Lh8/q;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    iget-object v2, v2, Lh8/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lx8/a;

    .line 1
    new-instance v1, Lw8/o;

    invoke-direct {v1, v0}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v0, Lh8/i;

    .line 3
    new-instance v2, Lw8/g;

    invoke-direct {v2, v1, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v2}, Lw8/e;->l()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/i;

    .line 6
    iget-object v2, v1, Lh8/i;->d:Ljava/lang/String;

    invoke-static {v2, p0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p0, v1, Lh8/i;->h:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/i;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw8/n;

    .line 4
    sget-object v2, Lh8/j;->h:Lx8/b;

    .line 5
    invoke-virtual {v2, p0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v1, v0

    .line 6
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/i;

    if-eqz p0, :cond_0

    .line 8
    iget-object p0, p0, Lh8/i;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static s()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lw8/o;

    const/4 v2, 0x1

    new-array v2, v2, [Lx8/a;

    new-array v3, v0, [Lx8/a;

    invoke-static {v3}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lw8/o;-><init>([Lx8/a;)V

    const-class v2, Lh8/r;

    .line 2
    new-instance v3, Lw8/g;

    invoke-direct {v3, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v3}, Lw8/d;->c()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static t(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/r;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lw8/n;

    .line 4
    sget-object v4, Lh8/s;->g:Lx8/b;

    const-string v5, "16"

    .line 5
    invoke-static {p0, v5, v1}, Lf8/g;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v4, p0}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object p0

    aput-object p0, v2, v0

    .line 7
    new-instance p0, Lw8/r;

    invoke-direct {p0, v3, v2}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 8
    invoke-virtual {p0}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh8/r;

    if-eqz p0, :cond_0

    .line 9
    iget v0, p0, Lh8/r;->b:I

    :cond_0
    return v0
.end method

.method public static u()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/c;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lh8/d;->f:Lx8/b;

    invoke-virtual {v3, v1, v0}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v1

    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/c;

    if-eqz v1, :cond_0

    .line 5
    iget v0, v1, Lh8/c;->b:I

    :cond_0
    return v0
.end method

.method public static v()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/r;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lh8/s;->f:Lx8/b;

    invoke-virtual {v3, v1, v0}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v1

    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/r;

    if-eqz v1, :cond_0

    .line 5
    iget v0, v1, Lh8/r;->b:I

    :cond_0
    return v0
.end method

.method public static w()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 1
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 2
    const-class v1, Lh8/l;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lh8/m;->k:Lx8/b;

    invoke-virtual {v3, v1, v0}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v1

    invoke-virtual {v1}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/l;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, v1, Lh8/l;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static x()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lw8/o;

    const/4 v2, 0x1

    new-array v2, v2, [Lx8/a;

    new-array v3, v0, [Lx8/a;

    invoke-static {v3}, Lw8/i;->k([Lx8/a;)Lw8/i;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lw8/o;-><init>([Lx8/a;)V

    const-class v2, Lh8/w;

    .line 2
    new-instance v3, Lw8/g;

    invoke-direct {v3, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v3}, Lw8/d;->c()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "^0*"

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "0"

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 6
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\W"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    const-string p1, "8"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+7"

    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "*"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p1, "+"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public B(Landroid/content/Context;Z)V
    .locals 5

    const-string p2, "cb2316"

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x0

    const-string v1, "contactslastsync"

    .line 2
    invoke-static {p1, v1, v3, v4}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3
    invoke-static {p1, p2, v2}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const-string p2, "firstsynccontacts"

    .line 4
    invoke-static {p1, p2, v2}, Lf8/h;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1, p2, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    const/16 p2, 0xb

    const-wide/16 v3, 0xbb8

    const-string v1, "android.permission.READ_CONTACTS"

    if-nez v2, :cond_4

    .line 6
    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 7
    invoke-static {p1, v1}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/q;

    invoke-direct {v1, p2}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lf8/g;->D(Landroid/content/Context;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lf8/h;->s(Landroid/content/Context;)J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lh8/p;

    invoke-direct {v0, p1}, Lh8/p;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {p1}, Lf8/g;->v(Landroid/content/Context;)V

    .line 14
    invoke-static {p1, v1}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/q;

    invoke-direct {v1, p2}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 16
    invoke-static {p1}, Lf8/g;->D(Landroid/content/Context;)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {p1}, Lf8/h;->s(Landroid/content/Context;)J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lh8/o;

    invoke-direct {v1, p1, v0}, Lh8/o;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method
