.class public final Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenericTraversableTemplate.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TB;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenericTraversableTemplate<",
            "TA;TCC;>.$anonfun$transpose$1;)V"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

    iput-object p2, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

    iget v1, v1, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->headSize$1:I

    if-ge v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

    iget-object v0, v0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->bs$1:Lscala/collection/IndexedSeq;

    iget-object v1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 222
    iget-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->i$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void

    .line 220
    :cond_0
    iget-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;

    iget-object p1, p1, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate;

    invoke-static {p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->fail$1(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method
