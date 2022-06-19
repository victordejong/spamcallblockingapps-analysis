.class public final Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction1;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/TailCalls$TailRec;->result()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/util/control/TailCalls$TailRec<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x4$3:Lscala/util/control/TailCalls$Cont;

.field private final x4$4:Lscala/util/control/TailCalls$Cont;


# direct methods
.method public constructor <init>(Lscala/util/control/TailCalls$TailRec;Lscala/util/control/TailCalls$Cont;Lscala/util/control/TailCalls$Cont;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;)V"
        }
    .end annotation

    .line 81
    iput-object p2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;->x4$3:Lscala/util/control/TailCalls$Cont;

    iput-object p3, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;->x4$4:Lscala/util/control/TailCalls$Cont;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;->apply(Ljava/lang/Object;)Lscala/util/control/TailCalls$TailRec;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/util/control/TailCalls$TailRec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;->x4$3:Lscala/util/control/TailCalls$Cont;

    .line 81
    invoke-virtual {v0}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/control/TailCalls$TailRec;

    .line 75
    iget-object v0, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;->x4$4:Lscala/util/control/TailCalls$Cont;

    .line 81
    invoke-virtual {v0}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v0

    instance-of v1, p1, Lscala/util/control/TailCalls$Done;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lscala/util/control/TailCalls$Done;

    new-instance v2, Lscala/util/control/TailCalls$Call;

    new-instance v3, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v3, p1, v0, v1}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v2, v3}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lscala/util/control/TailCalls$Call;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v2, p1, v0}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lscala/util/control/TailCalls$Cont;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lscala/util/control/TailCalls$Cont;

    new-instance v2, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v3

    new-instance v4, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v4, p1, v0, v1}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v2, v3, v4}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    :goto_0
    return-object v2

    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
