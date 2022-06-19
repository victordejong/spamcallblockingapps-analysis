.class public final Lscala/collection/TraversableOnce$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->collectFirst(Lscala/PartialFunction;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TB;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final nonLocalReturnKey1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 136
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$1;->apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    .line 136
    new-instance v0, Lscala/runtime/NonLocalReturnControl;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$1;->nonLocalReturnKey1$1:Ljava/lang/Object;

    new-instance v2, Lscala/Some;

    invoke-direct {v2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method
