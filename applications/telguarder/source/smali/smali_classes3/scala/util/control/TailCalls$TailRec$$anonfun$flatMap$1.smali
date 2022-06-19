.class public final Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction0;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/TailCalls$TailRec;->flatMap(Lscala/Function1;)Lscala/util/control/TailCalls$TailRec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/util/control/TailCalls$TailRec<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$2:Lscala/Function1;

.field private final x2$1:Lscala/util/control/TailCalls$Done;


# direct methods
.method public constructor <init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;)V"
        }
    .end annotation

    .line 55
    iput-object p2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    iput-object p3, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;->x2$1:Lscala/util/control/TailCalls$Done;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;->apply()Lscala/util/control/TailCalls$TailRec;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/util/control/TailCalls$TailRec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    .line 54
    iget-object v1, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;->x2$1:Lscala/util/control/TailCalls$Done;

    .line 55
    invoke-virtual {v1}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    return-object v0
.end method
