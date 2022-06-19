.class public final Lscala/runtime/ZippedTraversable3$$anon$1;
.super Lscala/collection/AbstractTraversable;
.source "Tuple3Zipped.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/ZippedTraversable3$;->zippedTraversable3ToTraversable(Lscala/runtime/ZippedTraversable3;)Lscala/collection/Traversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractTraversable<",
        "Lscala/Tuple3<",
        "TEl1;TEl2;TEl3;>;>;"
    }
.end annotation


# instance fields
.field private final zz$1:Lscala/runtime/ZippedTraversable3;


# direct methods
.method public constructor <init>(Lscala/runtime/ZippedTraversable3;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lscala/runtime/ZippedTraversable3$$anon$1;->zz$1:Lscala/runtime/ZippedTraversable3;

    invoke-direct {p0}, Lscala/collection/AbstractTraversable;-><init>()V

    return-void
.end method


# virtual methods
.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple3<",
            "TEl1;TEl2;TEl3;>;TU;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lscala/runtime/ZippedTraversable3$$anon$1;->zz$1:Lscala/runtime/ZippedTraversable3;

    sget-object v1, Lscala/Function$;->MODULE$:Lscala/Function$;

    new-instance v1, Lscala/Function$$anonfun$untupled$2;

    invoke-direct {v1, p1}, Lscala/Function$$anonfun$untupled$2;-><init>(Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/runtime/ZippedTraversable3;->foreach(Lscala/Function3;)V

    return-void
.end method
