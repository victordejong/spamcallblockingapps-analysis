.class public final Lscala/collection/SeqLike$$anonfun$reverseMap$2;
.super Lscala/runtime/AbstractFunction1;
.source "SeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike;->reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
        "TB;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final b$2:Lscala/collection/mutable/Builder;

.field public final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 287
    iput-object p2, p0, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->b$2:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TThat;>;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->b$2:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/SeqLike$$anonfun$reverseMap$2;->f$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
