.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenTraversableFactory;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
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

.field public final f$1:Lscala/Function5;

.field private final n2$5:I

.field private final n3$4:I

.field private final n4$3:I

.field private final n5$2:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;IIIILscala/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n2$5:I

    iput p3, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n3$4:I

    iput p4, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n4$3:I

    iput p5, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n5$2:I

    iput-object p6, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->f$1:Lscala/Function5;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->apply(I)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/GenTraversable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCC;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iget v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n2$5:I

    iget v2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n3$4:I

    iget v3, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n4$3:I

    iget v4, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;->n5$2:I

    new-instance v5, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4;

    invoke-direct {v5, p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4$$anonfun$apply$4;-><init>(Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;I)V

    invoke-virtual/range {v0 .. v5}, Lscala/collection/generic/GenTraversableFactory;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method
