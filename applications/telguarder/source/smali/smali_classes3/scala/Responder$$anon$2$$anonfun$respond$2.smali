.class public final Lscala/Responder$$anon$2$$anonfun$respond$2;
.super Lscala/runtime/AbstractFunction1;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder$$anon$2;->respond(Lscala/Function1;)V
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
.field private final synthetic $outer:Lscala/Responder$$anon$2;

.field private final k$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Responder$$anon$2;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Responder<",
            "TA;>.$anon$2;)V"
        }
    .end annotation

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Responder$$anon$2$$anonfun$respond$2;->$outer:Lscala/Responder$$anon$2;

    iput-object p2, p0, Lscala/Responder$$anon$2$$anonfun$respond$2;->k$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lscala/Responder$$anon$2$$anonfun$respond$2;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/Responder$$anon$2$$anonfun$respond$2;->$outer:Lscala/Responder$$anon$2;

    iget-object v0, v0, Lscala/Responder$$anon$2;->f$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Responder;

    iget-object v0, p0, Lscala/Responder$$anon$2$$anonfun$respond$2;->k$1:Lscala/Function1;

    invoke-virtual {p1, v0}, Lscala/Responder;->respond(Lscala/Function1;)V

    return-void
.end method
