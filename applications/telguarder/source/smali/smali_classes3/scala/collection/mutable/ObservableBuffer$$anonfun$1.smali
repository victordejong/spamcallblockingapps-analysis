.class public final Lscala/collection/mutable/ObservableBuffer$$anonfun$1;
.super Lscala/runtime/AbstractFunction2;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ObservableBuffer;->insertAll(ILscala/collection/Traversable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/script/Script<",
        "TA;>;TA;",
        "Lscala/collection/script/Script<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final curr$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ObservableBuffer;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;)V"
        }
    .end annotation

    .line 81
    iput-object p2, p0, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;->curr$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Lscala/collection/script/Script;

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;->apply(Lscala/collection/script/Script;Ljava/lang/Object;)Lscala/collection/script/Script;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/script/Script;Ljava/lang/Object;)Lscala/collection/script/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Script<",
            "TA;>;TA;)",
            "Lscala/collection/script/Script<",
            "TA;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;->curr$1:Lscala/runtime/IntRef;

    iget p2, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lscala/runtime/IntRef;->elem:I

    .line 84
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    new-instance p2, Lscala/collection/script/Include;

    new-instance v1, Lscala/collection/script/Index;

    iget-object v2, p0, Lscala/collection/mutable/ObservableBuffer$$anonfun$1;->curr$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    invoke-direct {v1, v2}, Lscala/collection/script/Index;-><init>(I)V

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lscala/collection/script/Include;-><init>(Lscala/collection/script/Location;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    check-cast p1, Lscala/collection/script/Script;

    return-object p1
.end method
