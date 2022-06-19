.class public final Lscala/collection/parallel/ParMapLike$$anon$2$$anonfun$splitter$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParMapLike$$anon$2;->splitter()Lscala/collection/parallel/IterableSplitter$Mapped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/Tuple2<",
        "TK;TS;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParMapLike$$anon$2;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParMapLike$$anon$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParMapLike<",
            "TK;TV;TRepr;TSequential;>.$anon$2;)V"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$$anon$2$$anonfun$splitter$1;->$outer:Lscala/collection/parallel/ParMapLike$$anon$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$2$$anonfun$splitter$1;->apply(Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/Tuple2<",
            "TK;TS;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParMapLike$$anon$2$$anonfun$splitter$1;->$outer:Lscala/collection/parallel/ParMapLike$$anon$2;

    iget-object v2, v2, Lscala/collection/parallel/ParMapLike$$anon$2;->f$4:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
