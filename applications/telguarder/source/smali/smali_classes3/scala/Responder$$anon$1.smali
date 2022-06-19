.class public final Lscala/Responder$$anon$1;
.super Lscala/Responder;
.source "Responder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Responder$;->constant(Ljava/lang/Object;)Lscala/Responder;
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
.field private final x$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lscala/Responder$$anon$1;->x$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/Responder;-><init>()V

    return-void
.end method


# virtual methods
.method public respond(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lscala/Responder$$anon$1;->x$1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
