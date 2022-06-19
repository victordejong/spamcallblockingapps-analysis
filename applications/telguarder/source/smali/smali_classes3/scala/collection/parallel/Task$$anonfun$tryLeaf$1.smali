.class public final Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/Task;->tryLeaf(Lscala/Option;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/Task;

.field private final lastres$1:Lscala/Option;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/Task;Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->$outer:Lscala/collection/parallel/Task;

    iput-object p2, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->lastres$1:Lscala/Option;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 49
    iget-object v0, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->$outer:Lscala/collection/parallel/Task;

    iget-object v1, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->lastres$1:Lscala/Option;

    invoke-interface {v0, v1}, Lscala/collection/parallel/Task;->leaf(Lscala/Option;)V

    .line 50
    iget-object v0, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$1;->$outer:Lscala/collection/parallel/Task;

    invoke-interface {v0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/Task;->result_$eq(Ljava/lang/Object;)V

    return-void
.end method
