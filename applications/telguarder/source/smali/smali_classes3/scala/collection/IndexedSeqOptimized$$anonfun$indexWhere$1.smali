.class public final Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;
.super Lscala/runtime/AbstractFunction1;
.source "IndexedSeqOptimized.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IndexedSeqOptimized;->indexWhere(Lscala/Function1;I)I
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
.field private final p$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeqOptimized<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 204
    iput-object p2, p0, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->p$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->p$2:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
