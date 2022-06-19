.class public final Lscala/Responder$;
.super Ljava/lang/Object;
.source "Responder.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Responder$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Responder$;

    invoke-direct {v0}, Lscala/Responder$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Responder$;->MODULE$:Lscala/Responder$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lscala/Responder$;->MODULE$:Lscala/Responder$;

    return-object v0
.end method


# virtual methods
.method public constant(Ljava/lang/Object;)Lscala/Responder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lscala/Responder<",
            "TA;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lscala/Responder$$anon$1;

    invoke-direct {v0, p1}, Lscala/Responder$$anon$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public exec(Lscala/Function0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V

    const/4 p1, 0x1

    return p1
.end method

.method public loop(Lscala/Responder;)Lscala/Responder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Responder<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/Responder<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lscala/Responder$$anonfun$loop$1;

    invoke-direct {v0, p1}, Lscala/Responder$$anonfun$loop$1;-><init>(Lscala/Responder;)V

    invoke-virtual {p1, v0}, Lscala/Responder;->flatMap(Lscala/Function1;)Lscala/Responder;

    move-result-object p1

    return-object p1
.end method

.method public loopWhile(Lscala/Function0;Lscala/Responder;)Lscala/Responder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Responder<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/Responder<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lscala/Function0;->apply$mcZ$sp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Responder$$anonfun$loopWhile$1;

    invoke-direct {v0, p1, p2}, Lscala/Responder$$anonfun$loopWhile$1;-><init>(Lscala/Function0;Lscala/Responder;)V

    invoke-virtual {p2, v0}, Lscala/Responder;->flatMap(Lscala/Function1;)Lscala/Responder;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/Responder$;->constant(Ljava/lang/Object;)Lscala/Responder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public run(Lscala/Responder;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Responder<",
            "TA;>;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 38
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 39
    new-instance v1, Lscala/Responder$$anonfun$run$1;

    invoke-direct {v1, v0}, Lscala/Responder$$anonfun$run$1;-><init>(Lscala/runtime/ObjectRef;)V

    invoke-virtual {p1, v1}, Lscala/Responder;->foreach(Lscala/Function1;)V

    .line 40
    iget-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/Option;

    return-object p1
.end method
