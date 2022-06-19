.class public Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;
.super Lscala/collection/convert/Wrappers$MutableMapWrapper;
.source "Wrappers.scala"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConcurrentMapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/convert/Wrappers$MutableMapWrapper<",
        "TA;TB;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TA;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/concurrent/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Lscala/collection/convert/Wrappers$MutableMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V

    return-void
.end method


# virtual methods
.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TB;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/concurrent/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 305
    instance-of p2, p1, Lscala/Some;

    if-eqz p2, :cond_0

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 306
    :cond_0
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 304
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/concurrent/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TB;"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/concurrent/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 317
    instance-of p2, p1, Lscala/Some;

    if-eqz p2, :cond_0

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 316
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TB;)Z"
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lscala/collection/concurrent/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$convert$Wrappers$ConcurrentMapWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 302
    iget-object v0, p0, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public underlying()Lscala/collection/concurrent/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 302
    invoke-super {p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/concurrent/Map;

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/mutable/Map;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object v0

    return-object v0
.end method
