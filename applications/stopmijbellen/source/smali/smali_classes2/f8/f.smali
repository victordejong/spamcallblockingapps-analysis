.class public final synthetic Lf8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lf8/f;->b:Ljava/util/List;

    iput-object p4, p0, Lf8/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 11

    iget-object p1, p0, Lf8/f;->a:Ljava/lang/String;

    iget-object v0, p0, Lf8/f;->b:Ljava/util/List;

    iget-object v1, p0, Lf8/f;->c:Landroid/content/Context;

    check-cast p2, Ls6/k;

    .line 1
    const-class v2, Lh8/l;

    if-eqz p2, :cond_2

    :try_start_0
    const-string v3, "body"

    .line 2
    invoke-virtual {p2, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ls6/l;

    invoke-direct {p2}, Ls6/l;-><init>()V

    invoke-virtual {p2, p1}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->b()Ls6/h;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ls6/i;->toString()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ls6/h;->size()I

    const/4 p2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/l;

    .line 8
    invoke-virtual {p1, v3}, Ls6/h;->e(I)Ls6/i;

    move-result-object v5

    invoke-virtual {v5}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_0

    .line 11
    new-instance v6, Lw8/q;

    invoke-direct {v6, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x3

    new-array v9, v9, [Lw8/n;

    .line 12
    sget-object v10, Lh8/m;->l:Lx8/b;

    .line 13
    invoke-virtual {v10, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v10

    aput-object v10, v9, p2

    sget-object v10, Lh8/m;->z:Lx8/b;

    .line 14
    invoke-virtual {v10, v5}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v9, v7

    sget-object v5, Lh8/m;->A:Lx8/b;

    .line 15
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v10}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v5

    aput-object v5, v9, v8

    .line 16
    invoke-virtual {v6, v9}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v5

    new-array v6, v7, [Lw8/n;

    sget-object v7, Lh8/m;->h:Lx8/b;

    iget-object v4, v4, Lh8/l;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v7, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v6, p2

    .line 18
    new-instance v4, Lw8/r;

    invoke-direct {v4, v5, v6}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 19
    invoke-virtual {v4}, Lw8/d;->d()V

    goto :goto_1

    .line 20
    :cond_0
    new-instance v5, Lw8/q;

    invoke-direct {v5, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    new-array v6, v8, [Lw8/n;

    .line 21
    sget-object v8, Lh8/m;->z:Lx8/b;

    const-string v9, ""

    .line 22
    invoke-virtual {v8, v9}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v8

    aput-object v8, v6, p2

    sget-object v8, Lh8/m;->A:Lx8/b;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v5

    new-array v6, v7, [Lw8/n;

    sget-object v7, Lh8/m;->h:Lx8/b;

    iget-object v4, v4, Lh8/l;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {v7, v4}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v6, p2

    .line 24
    new-instance v4, Lw8/r;

    invoke-direct {v4, v5, v6}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 25
    invoke-virtual {v4}, Lw8/d;->d()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_1
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 29
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v1}, Lf8/g;->D(Landroid/content/Context;)V

    :goto_2
    return-void
.end method
