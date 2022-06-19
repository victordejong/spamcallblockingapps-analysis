.class public Lz8/a;
.super Ll/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ll/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ll/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Ll/b;->d()Lb9/b;

    move-result-object v0

    invoke-virtual {v0}, Lb9/b;->e()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ll/b;->d()Lb9/b;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lb9/b;->d(Lc9/g;Ljava/lang/Object;)V

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-object p2
.end method

.method public g(Lc9/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lz8/a;->h(Lc9/f;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/util/List;

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
    invoke-virtual {p0, p1, p3}, Lz8/a;->i(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public i(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lz8/a;->c(Lc9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/CursorWrapper;->close()V

    .line 6
    throw p2

    .line 7
    :cond_1
    :goto_1
    check-cast p2, Ljava/util/List;

    return-object p2
.end method
