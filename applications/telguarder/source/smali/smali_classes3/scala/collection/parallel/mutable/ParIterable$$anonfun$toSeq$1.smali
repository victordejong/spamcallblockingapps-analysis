.class public final Lscala/collection/parallel/mutable/ParIterable$$anonfun$toSeq$1;
.super Lscala/runtime/AbstractFunction0;
.source "ParIterable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParIterable;->toSeq()Lscala/collection/parallel/mutable/ParSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/parallel/Combiner<",
        "TT;",
        "Lscala/collection/parallel/mutable/ParSeq<",
        "TT;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParIterable$$anonfun$toSeq$1;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lscala/collection/parallel/mutable/ParSeq$;->MODULE$:Lscala/collection/parallel/mutable/ParSeq$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParSeq$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method
