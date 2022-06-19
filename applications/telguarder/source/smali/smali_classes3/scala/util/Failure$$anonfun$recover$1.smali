.class public final Lscala/util/Failure$$anonfun$recover$1;
.super Lscala/runtime/AbstractFunction0;
.source "Try.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/Failure;->recover(Lscala/PartialFunction;)Lscala/util/Try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/util/Failure;

.field private final rescueException$1:Lscala/PartialFunction;


# direct methods
.method public constructor <init>(Lscala/util/Failure;Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Failure<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/Failure$$anonfun$recover$1;->$outer:Lscala/util/Failure;

    iput-object p2, p0, Lscala/util/Failure$$anonfun$recover$1;->rescueException$1:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/util/Failure$$anonfun$recover$1;->rescueException$1:Lscala/PartialFunction;

    iget-object v1, p0, Lscala/util/Failure$$anonfun$recover$1;->$outer:Lscala/util/Failure;

    invoke-virtual {v1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
