.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.$anon$2$$anonfun$2;)V"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;->addEntry(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
