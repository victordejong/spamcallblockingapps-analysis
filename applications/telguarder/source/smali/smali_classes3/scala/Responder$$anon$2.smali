.class public final Lscala/Responder$$anon$2;
.super Lscala/Responder;
.source "Responder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder;->flatMap(Lscala/Function1;)Lscala/Responder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Responder<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/Responder;

.field public final f$1:Lscala/Function1;


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

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Responder$$anon$2;->$outer:Lscala/Responder;

    iput-object p2, p0, Lscala/Responder$$anon$2;->f$1:Lscala/Function1;

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
            "TB;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/Responder$$anon$2;->$outer:Lscala/Responder;

    new-instance v1, Lscala/Responder$$anon$2$$anonfun$respond$2;

    invoke-direct {v1, p0, p1}, Lscala/Responder$$anon$2$$anonfun$respond$2;-><init>(Lscala/Responder$$anon$2;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/Responder;->respond(Lscala/Function1;)V

    return-void
.end method
