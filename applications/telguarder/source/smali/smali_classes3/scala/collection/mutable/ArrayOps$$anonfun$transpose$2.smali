.class public final Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayOps;->transpose(Lscala/Function1;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/ArrayBuilder<",
        "TU;>;",
        "Lscala/collection/mutable/Builder<",
        "Ljava/lang/Object;",
        "[",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final bb$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;->bb$1:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Lscala/collection/mutable/ArrayBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;->apply(Lscala/collection/mutable/ArrayBuilder;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/ArrayBuilder;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TU;>;)",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lscala/collection/mutable/ArrayOps$$anonfun$transpose$2;->bb$1:Lscala/collection/mutable/Builder;

    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
