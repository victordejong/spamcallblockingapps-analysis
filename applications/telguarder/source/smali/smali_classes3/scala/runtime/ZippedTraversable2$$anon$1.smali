.class public final Lscala/runtime/ZippedTraversable2$$anon$1;
.super Lscala/collection/AbstractTraversable;
.source "Tuple2Zipped.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/ZippedTraversable2$;->zippedTraversable2ToTraversable(Lscala/runtime/ZippedTraversable2;)Lscala/collection/Traversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractTraversable<",
        "Lscala/Tuple2<",
        "TEl1;TEl2;>;>;"
    }
.end annotation


# instance fields
.field private final zz$1:Lscala/runtime/ZippedTraversable2;


# direct methods
.method public constructor <init>(Lscala/runtime/ZippedTraversable2;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lscala/runtime/ZippedTraversable2$$anon$1;->zz$1:Lscala/runtime/ZippedTraversable2;

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
            "Lscala/Tuple2<",
            "TEl1;TEl2;>;TU;>;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lscala/runtime/ZippedTraversable2$$anon$1;->zz$1:Lscala/runtime/ZippedTraversable2;

    sget-object v1, Lscala/Function$;->MODULE$:Lscala/Function$;

    new-instance v1, Lscala/Function$$anonfun$untupled$1;

    invoke-direct {v1, p1}, Lscala/Function$$anonfun$untupled$1;-><init>(Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/runtime/ZippedTraversable2;->foreach(Lscala/Function2;)V

    return-void
.end method
