.class public abstract Lscala/collection/mutable/ObservableSet$class;
.super Ljava/lang/Object;
.source "ObservableSet.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ObservableSet;)V
    .locals 0

    return-void
.end method

.method public static $minus$eq(Lscala/collection/mutable/ObservableSet;Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;
    .locals 1

    .line 41
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableSet;->scala$collection$mutable$ObservableSet$$super$$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;

    .line 43
    new-instance v0, Lscala/collection/mutable/ObservableSet$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/ObservableSet$$anon$2;-><init>(Lscala/collection/mutable/ObservableSet;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableSet;->publish(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static $plus$eq(Lscala/collection/mutable/ObservableSet;Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;
    .locals 1

    .line 33
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableSet;->scala$collection$mutable$ObservableSet$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableSet;

    .line 35
    new-instance v0, Lscala/collection/mutable/ObservableSet$$anon$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/ObservableSet$$anon$1;-><init>(Lscala/collection/mutable/ObservableSet;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableSet;->publish(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/ObservableSet;)V
    .locals 1

    .line 49
    invoke-interface {p0}, Lscala/collection/mutable/ObservableSet;->scala$collection$mutable$ObservableSet$$super$clear()V

    .line 50
    new-instance v0, Lscala/collection/mutable/ObservableSet$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ObservableSet$$anon$3;-><init>(Lscala/collection/mutable/ObservableSet;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableSet;->publish(Ljava/lang/Object;)V

    return-void
.end method
