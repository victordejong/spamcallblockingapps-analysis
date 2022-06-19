.class public abstract Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public d()Lb9/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    check-cast v0, Lb9/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->f(Ljava/lang/Class;)Lb9/b;

    move-result-object v0

    iput-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    check-cast v0, Lb9/b;

    return-object v0
.end method

.method public e(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    .line 1
    instance-of v0, p1, Lh0/b;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lh0/b;

    .line 3
    iget-object v1, p0, Ll/b;->b:Ljava/lang/Object;

    check-cast v1, Ls/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ls/g;

    invoke-direct {v1}, Ls/g;-><init>()V

    iput-object v1, p0, Ll/b;->b:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Ll/b;->b:Ljava/lang/Object;

    check-cast v1, Ls/g;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v2}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ll/c;

    iget-object v1, p0, Ll/b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Ll/c;-><init>(Landroid/content/Context;Lh0/b;)V

    .line 9
    iget-object v1, p0, Ll/b;->b:Ljava/lang/Object;

    check-cast v1, Ls/g;

    invoke-virtual {v1, v0, p1}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public f(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    instance-of v0, p1, Lh0/c;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lh0/c;

    .line 3
    iget-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    check-cast v0, Ls/g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ls/g;

    invoke-direct {v0}, Ls/g;-><init>()V

    iput-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Ll/b;->c:Ljava/lang/Object;

    check-cast v0, Ls/g;

    invoke-virtual {v0, p1}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ll/g;

    iget-object v1, p0, Ll/b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ll/g;-><init>(Landroid/content/Context;Lh0/c;)V

    .line 7
    iget-object v1, p0, Ll/b;->c:Ljava/lang/Object;

    check-cast v1, Ls/g;

    invoke-virtual {v1, p1, v0}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public g(Lc9/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ll/b;->h(Lc9/f;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lc9/f;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc9/a;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lc9/a;->b(Ljava/lang/String;[Ljava/lang/String;)Lc9/g;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p3}, Ll/b;->i(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ll/b;->c(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    .line 3
    throw p2

    :cond_0
    :goto_0
    return-object p2
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/raizlabs/android/dbflow/config/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    iput-object v0, p0, Ll/b;->b:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Ll/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/raizlabs/android/dbflow/config/c;

    .line 4
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->j()Lc9/f;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ll/b;->g(Lc9/f;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
