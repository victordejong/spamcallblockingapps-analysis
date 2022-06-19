.class public final Lscala/util/control/Exception$Finally$$anonfun$and$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$Finally;->and(Lscala/Function0;)Lscala/util/control/Exception$Finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/util/control/Exception$Finally;

.field public final other$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/util/control/Exception$Finally;Lscala/Function0;)V
    .locals 0

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->$outer:Lscala/util/control/Exception$Finally;

    iput-object p2, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->other$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lscala/util/control/Exception$Finally$$anonfun$and$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 79
    iget-object v0, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->$outer:Lscala/util/control/Exception$Finally;

    iget-object v0, v0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Finally$$body:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    iget-object v0, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->other$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 79
    iget-object v0, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->$outer:Lscala/util/control/Exception$Finally;

    iget-object v0, v0, Lscala/util/control/Exception$Finally;->scala$util$control$Exception$Finally$$body:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    iget-object v0, p0, Lscala/util/control/Exception$Finally$$anonfun$and$1;->other$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method
