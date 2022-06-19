.class public final Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenericTraversableTemplate.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenericTraversableTemplate;->unzip(Lscala/Function1;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/Builder<",
        "TA2;TCC;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final asPair$1:Lscala/Function1;

.field private final b1$1:Lscala/collection/mutable/Builder;

.field private final b2$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenericTraversableTemplate;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenericTraversableTemplate<",
            "TA;TCC;>;)V"
        }
    .end annotation

    .line 96
    iput-object p2, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->b1$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->b2$1:Lscala/collection/mutable/Builder;

    iput-object p4, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->asPair$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TA2;TCC;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->asPair$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    if-eqz p1, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->b1$1:Lscala/collection/mutable/Builder;

    invoke-interface {v1, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 99
    iget-object p1, p0, Lscala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1;->b2$1:Lscala/collection/mutable/Builder;

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
