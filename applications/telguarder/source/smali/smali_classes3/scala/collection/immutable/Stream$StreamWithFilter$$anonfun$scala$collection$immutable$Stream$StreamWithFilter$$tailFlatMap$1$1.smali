.class public final Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream$StreamWithFilter;

.field private final f$4:Lscala/Function1;

.field private final tail$2:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>.StreamWithFilter;)V"
        }
    .end annotation

    .line 560
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->$outer:Lscala/collection/immutable/Stream$StreamWithFilter;

    iput-object p2, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->f$4:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->tail$2:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->$outer:Lscala/collection/immutable/Stream$StreamWithFilter;

    iget-object v1, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->tail$2:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    iget-object v2, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;->f$4:Lscala/Function1;

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
