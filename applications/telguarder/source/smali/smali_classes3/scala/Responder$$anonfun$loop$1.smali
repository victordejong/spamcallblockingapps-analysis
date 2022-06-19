.class public final Lscala/Responder$$anonfun$loop$1;
.super Lscala/runtime/AbstractFunction1;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder$;->loop(Lscala/Responder;)Lscala/Responder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/Responder<",
        "Lscala/runtime/Nothing$;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final r$1:Lscala/Responder;


# direct methods
.method public constructor <init>(Lscala/Responder;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lscala/Responder$$anonfun$loop$1;->r$1:Lscala/Responder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/Responder$$anonfun$loop$1;->apply(Lscala/runtime/BoxedUnit;)Lscala/Responder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/runtime/BoxedUnit;)Lscala/Responder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/Responder<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object p1, Lscala/Responder$;->MODULE$:Lscala/Responder$;

    iget-object v0, p0, Lscala/Responder$$anonfun$loop$1;->r$1:Lscala/Responder;

    invoke-virtual {p1, v0}, Lscala/Responder$;->loop(Lscala/Responder;)Lscala/Responder;

    move-result-object p1

    new-instance v0, Lscala/Responder$$anonfun$loop$1$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/Responder$$anonfun$loop$1$$anonfun$apply$1;-><init>(Lscala/Responder$$anonfun$loop$1;)V

    invoke-virtual {p1, v0}, Lscala/Responder;->map(Lscala/Function1;)Lscala/Responder;

    move-result-object p1

    return-object p1
.end method
