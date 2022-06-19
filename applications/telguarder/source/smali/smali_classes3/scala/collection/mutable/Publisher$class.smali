.class public abstract Lscala/collection/mutable/Publisher$class;
.super Ljava/lang/Object;
.source "Publisher.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Publisher;)V
    .locals 1

    .line 39
    invoke-interface {p0, p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$_setter_$self_$eq(Lscala/collection/mutable/Publisher;)V

    .line 41
    new-instance v0, Lscala/collection/mutable/Publisher$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/Publisher$$anon$1;-><init>(Lscala/collection/mutable/Publisher;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$_setter_$scala$collection$mutable$Publisher$$filters_$eq(Lscala/collection/mutable/HashMap;)V

    .line 42
    new-instance v0, Lscala/collection/mutable/HashSet;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet;-><init>()V

    invoke-interface {p0, v0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$_setter_$scala$collection$mutable$Publisher$$suspended_$eq(Lscala/collection/mutable/HashSet;)V

    return-void
.end method

.method public static activateSubscription(Lscala/collection/mutable/Publisher;Lscala/collection/mutable/Subscriber;)V
    .locals 0

    .line 47
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$suspended()Lscala/collection/mutable/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    return-void
.end method

.method public static equals(Lscala/collection/mutable/Publisher;Ljava/lang/Object;)Z
    .locals 3

    .line 63
    instance-of v0, p1, Lscala/collection/mutable/Publisher;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lscala/collection/mutable/Publisher;

    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$suspended()Lscala/collection/mutable/HashSet;

    move-result-object p0

    invoke-interface {p1}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$suspended()Lscala/collection/mutable/HashSet;

    move-result-object p1

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public static publish(Lscala/collection/mutable/Publisher;Ljava/lang/Object;)V
    .locals 2

    .line 52
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/Publisher$$anonfun$publish$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/Publisher$$anonfun$publish$1;-><init>(Lscala/collection/mutable/Publisher;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static removeSubscription(Lscala/collection/mutable/Publisher;Lscala/collection/mutable/Subscriber;)V
    .locals 0

    .line 48
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;

    return-void
.end method

.method public static removeSubscriptions(Lscala/collection/mutable/Publisher;)V
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->clear()V

    return-void
.end method

.method public static subscribe(Lscala/collection/mutable/Publisher;Lscala/collection/mutable/Subscriber;)V
    .locals 1

    .line 44
    new-instance v0, Lscala/collection/mutable/Publisher$$anonfun$subscribe$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/Publisher$$anonfun$subscribe$1;-><init>(Lscala/collection/mutable/Publisher;)V

    invoke-interface {p0, p1, v0}, Lscala/collection/mutable/Publisher;->subscribe(Lscala/collection/mutable/Subscriber;Lscala/Function1;)V

    return-void
.end method

.method public static subscribe(Lscala/collection/mutable/Publisher;Lscala/collection/mutable/Subscriber;Lscala/Function1;)V
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object p0

    check-cast p0, Lscala/collection/mutable/MultiMap;

    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/MultiMap;->addBinding(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;

    return-void
.end method

.method public static suspendSubscription(Lscala/collection/mutable/Publisher;Lscala/collection/mutable/Subscriber;)V
    .locals 0

    .line 46
    invoke-interface {p0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$suspended()Lscala/collection/mutable/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    return-void
.end method
