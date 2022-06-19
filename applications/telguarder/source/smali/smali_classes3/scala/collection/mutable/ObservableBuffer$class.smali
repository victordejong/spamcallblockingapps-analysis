.class public abstract Lscala/collection/mutable/ObservableBuffer$class;
.super Ljava/lang/Object;
.source "ObservableBuffer.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ObservableBuffer;)V
    .locals 0

    return-void
.end method

.method public static $plus$eq(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
    .locals 1

    .line 32
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;

    .line 33
    new-instance v0, Lscala/collection/mutable/ObservableBuffer$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/ObservableBuffer$$anon$2;-><init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static $plus$eq$colon(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
    .locals 1

    .line 45
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;

    .line 46
    new-instance v0, Lscala/collection/mutable/ObservableBuffer$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/ObservableBuffer$$anon$3;-><init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static $plus$plus$eq(Lscala/collection/mutable/ObservableBuffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ObservableBuffer;
    .locals 1

    .line 40
    new-instance v0, Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1;-><init>(Lscala/collection/mutable/ObservableBuffer;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    return-object p0
.end method

.method public static clear(Lscala/collection/mutable/ObservableBuffer;)V
    .locals 1

    .line 70
    invoke-interface {p0}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$clear()V

    .line 71
    new-instance v0, Lscala/collection/mutable/ObservableBuffer$$anon$6;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ObservableBuffer$$anon$6;-><init>(Lscala/collection/mutable/ObservableBuffer;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-void
.end method

.method public static insertAll(Lscala/collection/mutable/ObservableBuffer;ILscala/collection/Traversable;)V
    .locals 2

    .line 77
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$insertAll(ILscala/collection/Traversable;)V

    add-int/lit8 p1, p1, -0x1

    .line 78
    invoke-static {p1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object p1

    .line 79
    new-instance v0, Lscala/collection/mutable/ObservableBuffer$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ObservableBuffer$$anon$1;-><init>(Lscala/collection/mutable/ObservableBuffer;)V

    .line 81
    new-instance v1, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;-><init>(Lscala/collection/mutable/ObservableBuffer;Lscala/runtime/IntRef;)V

    invoke-interface {p2, v0, v1}, Lscala/collection/Traversable;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/script/Script;

    .line 86
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-void
.end method

.method public static remove(Lscala/collection/mutable/ObservableBuffer;I)Ljava/lang/Object;
    .locals 2

    .line 61
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$remove(I)Ljava/lang/Object;

    .line 63
    new-instance v1, Lscala/collection/mutable/ObservableBuffer$$anon$5;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/mutable/ObservableBuffer$$anon$5;-><init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static update(Lscala/collection/mutable/ObservableBuffer;ILjava/lang/Object;)V
    .locals 2

    .line 53
    invoke-interface {p0, p1}, Lscala/collection/mutable/ObservableBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/ObservableBuffer;->scala$collection$mutable$ObservableBuffer$$super$update(ILjava/lang/Object;)V

    .line 55
    new-instance v1, Lscala/collection/mutable/ObservableBuffer$$anon$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lscala/collection/mutable/ObservableBuffer$$anon$4;-><init>(Lscala/collection/mutable/ObservableBuffer;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Lscala/collection/mutable/ObservableBuffer;->publish(Ljava/lang/Object;)V

    return-void
.end method
