.class public final Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;
.super Lscala/runtime/AbstractFunction1;
.source "TreeSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/TreeSet;->iteratorFrom(Lscala/Option;)Lscala/collection/Iterator;
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
.field private final synthetic $outer:Lscala/collection/mutable/TreeSet;

.field private final x2$1:Lscala/Some;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/TreeSet;Lscala/Some;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;->$outer:Lscala/collection/mutable/TreeSet;

    iput-object p2, p0, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;->x2$1:Lscala/Some;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;->$outer:Lscala/collection/mutable/TreeSet;

    invoke-virtual {v0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;->x2$1:Lscala/Some;

    .line 113
    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
