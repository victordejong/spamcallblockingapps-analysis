.class public final Lio/objectbox/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;Lio/objectbox/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Lio/objectbox/c/a<",
            "TT;>;>;",
            "Lio/objectbox/c/a<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 30
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/c/a;

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    instance-of v2, v1, Lio/objectbox/c/h;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 36
    :goto_1
    instance-of v3, v2, Lio/objectbox/c/h;

    if-eqz v3, :cond_2

    .line 37
    check-cast v2, Lio/objectbox/c/h;

    invoke-interface {v2}, Lio/objectbox/c/h;->a()Lio/objectbox/c/a;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method
