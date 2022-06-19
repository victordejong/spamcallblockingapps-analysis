.class public final Lkotlin/reflect/jvm/internal/impl/load/java/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "methodName"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 48
    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc

    const-string v1, "get"

    const/4 v2, 0x0

    .line 2013
    invoke-static {p0, v1, v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, "is"

    invoke-static {p0, v1, v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    .line 48
    :cond_0
    invoke-static {v0}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 2019
    invoke-static {p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/a/n;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 55
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/f;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 5

    .line 1045
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/c/e;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "methodName.identifier"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1405
    invoke-static {v0, p1, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    return-object v1

    .line 31
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-gt v4, v3, :cond_3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    if-eqz p3, :cond_7

    .line 34
    sget-boolean p0, Lkotlin/x;->a:Z

    if-eqz p0, :cond_6

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Assertion failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 35
    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p2, :cond_8

    return-object p0

    .line 39
    :cond_8
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/g/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return-object v1

    .line 41
    :cond_9
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;I)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 3

    const-string v0, "methodName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "is"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    const-string v1, "set"

    const/4 v2, 0x0

    .line 16
    invoke-static {p0, v1, v2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/String;ZLjava/lang/String;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    return-object p0
.end method
