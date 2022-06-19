.class public final Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenericTraversableTemplate.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenericTraversableTemplate;->transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/GenericTraversableTemplate;

.field private final asTraversable$2:Lscala/Function1;

.field public final bs$1:Lscala/collection/IndexedSeq;

.field public final headSize$1:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenericTraversableTemplate;ILscala/collection/IndexedSeq;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenericTraversableTemplate<",
            "TA;TCC;>;)V"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate;

    iput p2, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->headSize$1:I

    iput-object p3, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->bs$1:Lscala/collection/IndexedSeq;

    iput-object p4, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->asTraversable$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->asTraversable$2:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v1, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1$$anonfun$apply$1;-><init>(Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 224
    iget p1, v0, Lscala/runtime/IntRef;->elem:I

    iget v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->headSize$1:I

    if-ne p1, v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate;

    invoke-static {p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->fail$1(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public synthetic scala$collection$generic$GenericTraversableTemplate$$anonfun$$$outer()Lscala/collection/generic/GenericTraversableTemplate;
    .locals 1

    .line 217
    iget-object v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$transpose$1;->$outer:Lscala/collection/generic/GenericTraversableTemplate;

    return-object v0
.end method
