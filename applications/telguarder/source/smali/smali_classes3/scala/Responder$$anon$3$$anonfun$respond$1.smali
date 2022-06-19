.class public final Lscala/Responder$$anon$3$$anonfun$respond$1;
.super Lscala/runtime/AbstractFunction1;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder$$anon$3;->respond(Lscala/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Responder$$anon$3;

.field private final k$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Responder$$anon$3;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Responder<",
            "TA;>.$anon$3;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Responder$$anon$3$$anonfun$respond$1;->$outer:Lscala/Responder$$anon$3;

    iput-object p2, p0, Lscala/Responder$$anon$3$$anonfun$respond$1;->k$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/Responder$$anon$3$$anonfun$respond$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lscala/Responder$$anon$3$$anonfun$respond$1;->k$2:Lscala/Function1;

    iget-object v1, p0, Lscala/Responder$$anon$3$$anonfun$respond$1;->$outer:Lscala/Responder$$anon$3;

    iget-object v1, v1, Lscala/Responder$$anon$3;->f$2:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
