.class public Lc/d/a/e0/d;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lc/d/a/e0/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lc/d/a/e0/b;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->j()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/c;->a(Ljava/lang/String;)Lc/d/a/e0/b;

    move-result-object p1

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-interface {p1, v1, v2}, Lc/d/a/e0/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(Ljava/util/Map;Lc/d/a/e0/b;Ljava/util/List;)Lc/d/a/e0/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lc/d/a/e0/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lc/d/a/e0/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/d/a/e0/b;->getResponseCode()I

    move-result v0

    const-string v1, "Location"

    .line 2
    invoke-interface {p1, v1}, Lc/d/a/e0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lc/d/a/e0/d;->b(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 5
    sget-boolean v8, Lc/d/a/i0/d;->a:Z

    if-eqz v8, :cond_0

    .line 6
    const-class v8, Lc/d/a/e0/d;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v4

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v7

    aput-object v3, v9, v6

    const-string v0, "redirect to %s with %d, %s"

    .line 8
    invoke-static {v8, v0, v9}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-interface {p1}, Lc/d/a/e0/b;->e()V

    .line 10
    invoke-static {p0, v2}, Lc/d/a/e0/d;->a(Ljava/util/Map;Ljava/lang/String;)Lc/d/a/e0/b;

    move-result-object p1

    .line 11
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p1}, Lc/d/a/e0/b;->execute()V

    .line 13
    invoke-interface {p1}, Lc/d/a/e0/b;->getResponseCode()I

    move-result v0

    .line 14
    invoke-interface {p1, v1}, Lc/d/a/e0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v5, v7

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v3, p1, v4

    const-string p2, "redirect too many times! %s"

    .line 16
    invoke-static {p2, p1}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    new-array p2, v6, [Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-interface {p1}, Lc/d/a/e0/b;->b()Ljava/util/Map;

    move-result-object p1

    aput-object p1, p2, v7

    const-string p1, "receive %d (redirect) but the location is null with response [%s]"

    .line 19
    invoke-static {p1, p2}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object p1
.end method
