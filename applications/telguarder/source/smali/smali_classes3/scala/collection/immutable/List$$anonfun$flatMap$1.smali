.class public final Lscala/collection/immutable/List$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction1;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/List;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
.field private final found$1:Lscala/runtime/BooleanRef;

.field private final h$1:Lscala/runtime/ObjectRef;

.field private final t$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/List;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 327
    iput-object p2, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->found$1:Lscala/runtime/BooleanRef;

    iput-object p3, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->h$1:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->t$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List$$anonfun$flatMap$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->found$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 335
    iget-object p1, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->t$1:Lscala/runtime/ObjectRef;

    iget-object p1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p1, v0}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 336
    iget-object p1, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->t$1:Lscala/runtime/ObjectRef;

    iput-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->h$1:Lscala/runtime/ObjectRef;

    new-instance v1, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, p1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 330
    iget-object p1, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->t$1:Lscala/runtime/ObjectRef;

    iget-object v0, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->h$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/$colon$colon;

    iput-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lscala/collection/immutable/List$$anonfun$flatMap$1;->found$1:Lscala/runtime/BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lscala/runtime/BooleanRef;->elem:Z

    :goto_0
    return-void
.end method
