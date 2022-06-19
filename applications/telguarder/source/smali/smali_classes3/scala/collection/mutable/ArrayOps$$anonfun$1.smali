.class public final Lscala/collection/mutable/ArrayOps$$anonfun$1;
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
        "TU;",
        "Lscala/collection/mutable/ArrayBuilder<",
        "TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ArrayOps;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$1;->$outer:Lscala/collection/mutable/ArrayOps;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TU;>;"
        }
    .end annotation

    .line 98
    iget-object p1, p0, Lscala/collection/mutable/ArrayOps$$anonfun$1;->$outer:Lscala/collection/mutable/ArrayOps;

    invoke-static {p1}, Lscala/collection/mutable/ArrayOps$class;->mkRowBuilder$1(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method
