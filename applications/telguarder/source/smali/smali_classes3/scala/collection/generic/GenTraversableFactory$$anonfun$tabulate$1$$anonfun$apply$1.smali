.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;

.field private final i1$1:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>.$anonfun$tabulate$1;)V"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;->i1$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;

    iget-object v0, v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->f$4:Lscala/Function2;

    iget v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;->i1$1:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
