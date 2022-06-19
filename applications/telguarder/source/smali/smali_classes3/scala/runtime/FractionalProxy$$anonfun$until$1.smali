.class public final Lscala/runtime/FractionalProxy$$anonfun$until$1;
.super Lscala/runtime/AbstractFunction1;
.source "ScalaNumberProxy.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/FractionalProxy;->until(Ljava/lang/Object;)Lscala/collection/immutable/Range$Partial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/collection/immutable/NumericRange$Exclusive<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/runtime/FractionalProxy;

.field private final end$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/runtime/FractionalProxy;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/FractionalProxy<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/runtime/FractionalProxy$$anonfun$until$1;->$outer:Lscala/runtime/FractionalProxy;

    iput-object p2, p0, Lscala/runtime/FractionalProxy$$anonfun$until$1;->end$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lscala/runtime/FractionalProxy$$anonfun$until$1;->apply(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    iget-object v1, p0, Lscala/runtime/FractionalProxy$$anonfun$until$1;->$outer:Lscala/runtime/FractionalProxy;

    invoke-interface {v1}, Lscala/runtime/FractionalProxy;->self()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/runtime/FractionalProxy$$anonfun$until$1;->end$1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/runtime/FractionalProxy$$anonfun$until$1;->$outer:Lscala/runtime/FractionalProxy;

    invoke-interface {v3}, Lscala/runtime/FractionalProxy;->integralNum()Lscala/math/Integral;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method
