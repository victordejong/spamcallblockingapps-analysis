.class public final Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;
.super Lscala/runtime/AbstractFunction1;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$StreamWithFilter;->foreach(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/immutable/Stream$StreamWithFilter;

.field public final f$5:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>.StreamWithFilter;)V"
        }
    .end annotation

    .line 570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->$outer:Lscala/collection/immutable/Stream$StreamWithFilter;

    iput-object p2, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->f$5:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->$outer:Lscala/collection/immutable/Stream$StreamWithFilter;

    iget-object v0, v0, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->f$5:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
