.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->collect2combiner_quick(Lscala/PartialFunction;[Ljava/lang/Object;Lscala/collection/mutable/Builder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TS;",
        "Lscala/collection/mutable/Builder<",
        "TS;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cb$2:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;)V"
        }
    .end annotation

    .line 406
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;->cb$2:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lscala/collection/mutable/Builder<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;->cb$2:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
