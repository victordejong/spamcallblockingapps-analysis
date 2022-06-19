.class public final Lscala/Responder$$anon$4;
.super Lscala/Responder;
.source "Responder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder;->filter(Lscala/Function1;)Lscala/Responder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Responder<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/Responder;

.field public final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Responder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Responder<",
            "TA;>;)V"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Responder$$anon$4;->$outer:Lscala/Responder;

    iput-object p2, p0, Lscala/Responder$$anon$4;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/Responder;-><init>()V

    return-void
.end method


# virtual methods
.method public respond(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lscala/Responder$$anon$4;->$outer:Lscala/Responder;

    new-instance v1, Lscala/Responder$$anon$4$$anonfun$respond$3;

    invoke-direct {v1, p0, p1}, Lscala/Responder$$anon$4$$anonfun$respond$3;-><init>(Lscala/Responder$$anon$4;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/Responder;->respond(Lscala/Function1;)V

    return-void
.end method
