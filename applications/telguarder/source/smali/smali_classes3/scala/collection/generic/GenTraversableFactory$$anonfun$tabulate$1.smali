.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenTraversableFactory;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "TCC;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenTraversableFactory;

.field public final f$4:Lscala/Function2;

.field private final n2$8:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;ILscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->n2$8:I

    iput-object p3, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->f$4:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->apply(I)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/GenTraversable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCC;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iget v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;->n2$8:I

    new-instance v2, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1$$anonfun$apply$1;-><init>(Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;I)V

    invoke-virtual {v0, v1, v2}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method
