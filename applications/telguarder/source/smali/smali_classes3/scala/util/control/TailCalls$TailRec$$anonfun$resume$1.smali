.class public final Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;
.super Lscala/runtime/AbstractFunction0;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/TailCalls$TailRec;->resume()Lscala/util/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/util/control/TailCalls$TailRec<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x3$1:Lscala/util/control/TailCalls$Call;

.field private final x4$2:Lscala/util/control/TailCalls$Cont;


# direct methods
.method public constructor <init>(Lscala/util/control/TailCalls$TailRec;Lscala/util/control/TailCalls$Call;Lscala/util/control/TailCalls$Cont;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;)V"
        }
    .end annotation

    .line 68
    iput-object p2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;->x3$1:Lscala/util/control/TailCalls$Call;

    iput-object p3, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;->x4$2:Lscala/util/control/TailCalls$Cont;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;->apply()Lscala/util/control/TailCalls$TailRec;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/util/control/TailCalls$TailRec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;->x3$1:Lscala/util/control/TailCalls$Call;

    .line 68
    invoke-virtual {v0}, Lscala/util/control/TailCalls$Call;->rest()Lscala/Function0;

    move-result-object v0

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    .line 63
    iget-object v1, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;->x4$2:Lscala/util/control/TailCalls$Cont;

    .line 68
    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v1

    instance-of v2, v0, Lscala/util/control/TailCalls$Done;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lscala/util/control/TailCalls$Done;

    new-instance v3, Lscala/util/control/TailCalls$Call;

    new-instance v4, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v4, v0, v1, v2}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v3, v4}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lscala/util/control/TailCalls$Call;

    if-eqz v2, :cond_1

    check-cast v0, Lscala/util/control/TailCalls$Call;

    new-instance v3, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v3, v0, v1}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lscala/util/control/TailCalls$Cont;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lscala/util/control/TailCalls$Cont;

    new-instance v3, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v4

    new-instance v5, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v5, v0, v1, v2}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v3, v4, v5}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    :goto_0
    return-object v3

    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
