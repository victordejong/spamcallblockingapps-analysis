.class public final Lscala/concurrent/Future$$anonfun$reduce$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/TraversableOnce<",
        "TT;>;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final op$2:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/Function2;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$reduce$1;->op$2:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$reduce$1;->apply(Lscala/collection/TraversableOnce;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/TraversableOnce;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$reduce$1;->op$2:Lscala/Function2;

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
