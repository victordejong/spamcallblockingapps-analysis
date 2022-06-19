.class public final Lscala/collection/TraversableOnce$$anonfun$toMap$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
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
        "Lscala/Tuple2<",
        "TT;TU;>;",
        "Lscala/collection/immutable/Map<",
        "TT;TU;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$1:Lscala/collection/mutable/Builder;

.field private final ev$1:Lscala/Predef$$less$colon$less;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Builder;Lscala/Predef$$less$colon$less;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 314
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$toMap$1;->b$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/TraversableOnce$$anonfun$toMap$1;->ev$1:Lscala/Predef$$less$colon$less;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$toMap$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TT;TU;>;",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;>;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$toMap$1;->b$1:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$toMap$1;->ev$1:Lscala/Predef$$less$colon$less;

    invoke-virtual {v1, p1}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
