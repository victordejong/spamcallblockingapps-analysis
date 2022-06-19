.class public final Lscala/concurrent/Future$$anonfun$fold$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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
.field private final op$1:Lscala/Function2;

.field private final zero$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/Function2;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$fold$1;->zero$1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$fold$1;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p1, Lscala/collection/TraversableOnce;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$fold$1;->apply(Lscala/collection/TraversableOnce;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/TraversableOnce;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$fold$1;->zero$1:Ljava/lang/Object;

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$fold$1;->op$1:Lscala/Function2;

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
