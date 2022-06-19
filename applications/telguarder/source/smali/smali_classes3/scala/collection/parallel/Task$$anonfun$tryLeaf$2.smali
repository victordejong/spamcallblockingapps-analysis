.class public final Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;
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
.field public final synthetic $outer:Lscala/collection/parallel/Task;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;->$outer:Lscala/collection/parallel/Task;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 52
    iget-object v0, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;->$outer:Lscala/collection/parallel/Task;

    invoke-interface {v0}, Lscala/collection/parallel/Task;->signalAbort()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 52
    iget-object v0, p0, Lscala/collection/parallel/Task$$anonfun$tryLeaf$2;->$outer:Lscala/collection/parallel/Task;

    invoke-interface {v0}, Lscala/collection/parallel/Task;->signalAbort()V

    return-void
.end method
