.class public final Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;
.super Lscala/runtime/AbstractFunction1;
.source "GenTraversableFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenTraversableFactory;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
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

.field public final f$3:Lscala/Function3;

.field private final n2$7:I

.field private final n3$6:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenTraversableFactory;IILscala/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iput p2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->n2$7:I

    iput p3, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->n3$6:I

    iput-object p4, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->f$3:Lscala/Function3;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->apply(I)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/collection/GenTraversable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCC;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->$outer:Lscala/collection/generic/GenTraversableFactory;

    iget v1, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->n2$7:I

    iget v2, p0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;->n3$6:I

    new-instance v3, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2;

    invoke-direct {v3, p0, p1}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2$$anonfun$apply$2;-><init>(Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;I)V

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/generic/GenTraversableFactory;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method
