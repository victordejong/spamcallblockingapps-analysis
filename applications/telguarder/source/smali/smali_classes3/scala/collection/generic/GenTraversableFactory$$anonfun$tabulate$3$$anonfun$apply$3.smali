.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction3;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction3<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;

.field private final i1$3:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>.$anonfun$tabulate$3;)V"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;->$outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;->i1$3:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction3;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(III)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)TA;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;->$outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;

    iget-object v0, v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;->f$2:Lscala/Function4;

    iget v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;->i1$3:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, v1, p1, p2, p3}, Lscala/Function4;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3$$anonfun$apply$3;->apply(III)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
