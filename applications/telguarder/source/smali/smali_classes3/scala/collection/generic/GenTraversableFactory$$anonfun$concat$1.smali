.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenTraversableFactory;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Traversable<",
        "TA;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lscala/collection/Traversable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$1;->apply(Lscala/collection/Traversable;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Traversable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Traversable<",
            "TA;>;)Z"
        }
    .end annotation

    .line 73
    instance-of p1, p1, Lscala/collection/IndexedSeq;

    return p1
.end method
