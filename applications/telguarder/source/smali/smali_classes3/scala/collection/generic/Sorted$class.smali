.class public abstract Lscala/collection/generic/Sorted$class;
.super Ljava/lang/Object;
.source "Sorted.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/Sorted;)V
    .locals 0

    return-void
.end method

.method public static compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/collection/generic/Sorted;->ordering()Lscala/math/Ordering;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lscala/math/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static from(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 1

    .line 54
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {p0, v0, p1}, Lscala/collection/generic/Sorted;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;

    move-result-object p0

    return-object p0
.end method

.method public static hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z
    .locals 6

    .line 97
    invoke-interface {p0}, Lscala/collection/generic/Sorted;->keySet()Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SortedSet;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lscala/collection/Iterator;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lscala/collection/Iterator;->isEmpty()Z

    move-result p0

    return p0

    .line 100
    :cond_0
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 101
    :cond_1
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 102
    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 103
    :goto_0
    invoke-interface {p0, v2, v1}, Lscala/collection/generic/Sorted;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-gez v4, :cond_3

    return v5

    .line 107
    :cond_3
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    .line 109
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    return v3
.end method

.method public static range(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 1

    .line 68
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1}, Lscala/collection/generic/Sorted;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 2

    .line 74
    invoke-interface {p0}, Lscala/collection/generic/Sorted;->keySet()Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/SortedSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/SortedSet;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lscala/collection/Iterator;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/generic/Sorted;->repr()Lscala/collection/generic/Sorted;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-interface {p0, v1, p1}, Lscala/collection/generic/Sorted;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    .line 78
    invoke-interface {v0}, Lscala/collection/Iterator;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lscala/collection/generic/Sorted;->repr()Lscala/collection/generic/Sorted;

    move-result-object p0

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/generic/Sorted;->until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p0

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p0, v1}, Lscala/collection/generic/Sorted;->until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static until(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 2

    .line 60
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    new-instance v1, Lscala/Some;

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Lscala/collection/generic/Sorted;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;

    move-result-object p0

    return-object p0
.end method
