.class public final Lscala/util/control/Exception$;
.super Ljava/lang/Object;
.source "Exception.scala"


# static fields
.field public static final MODULE$:Lscala/util/control/Exception$;


# instance fields
.field private final noCatch:Lscala/util/control/Exception$Catch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/control/Exception$Catch<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final nothingCatcher:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/Exception$;

    invoke-direct {v0}, Lscala/util/control/Exception$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/Exception$;->MODULE$:Lscala/util/control/Exception$;

    .line 148
    new-instance v0, Lscala/util/control/Exception$$anonfun$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$1;-><init>()V

    new-instance v1, Lscala/util/control/Exception$$anonfun$2;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$2;-><init>()V

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    new-instance v3, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v3, v0, v1, v2}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    iput-object v3, p0, Lscala/util/control/Exception$;->nothingCatcher:Lscala/PartialFunction;

    .line 153
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$;->nothingCatcher()Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    new-instance v3, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;

    invoke-direct {v3}, Lscala/util/control/Exception$Catch$$anonfun$$lessinit$greater$default$3$1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    const-string v1, "<nothing>"

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Catch;

    iput-object v0, p0, Lscala/util/control/Exception$;->noCatch:Lscala/util/control/Exception$Catch;

    return-void
.end method

.method private pfFromExceptions(Lscala/collection/Seq;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;

    invoke-direct {v0, p1}, Lscala/util/control/Exception$$anonfun$pfFromExceptions$1;-><init>(Lscala/collection/Seq;)V

    return-object v0
.end method


# virtual methods
.method public final allCatch()Lscala/util/control/Exception$Catch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$;->allCatcher()Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v2}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$2()Lscala/Option;

    move-result-object v2

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v3}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$3()Lscala/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    const-string v1, "<everything>"

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Catch;

    return-object v0
.end method

.method public final allCatcher()Lscala/PartialFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lscala/util/control/Exception$$anonfun$allCatcher$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$allCatcher$1;-><init>()V

    new-instance v1, Lscala/util/control/Exception$$anonfun$allCatcher$2;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$allCatcher$2;-><init>()V

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    new-instance v3, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v3, v0, v1, v2}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    return-object v3
.end method

.method public catching(Lscala/PartialFunction;)Lscala/util/control/Exception$Catch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 173
    new-instance v0, Lscala/util/control/Exception$Catch;

    sget-object v1, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v1}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$2()Lscala/Option;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v2}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$3()Lscala/Function1;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    return-object v0
.end method

.method public catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-direct {p0, p1}, Lscala/util/control/Exception$;->pfFromExceptions(Lscala/collection/Seq;)Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v2}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$2()Lscala/Option;

    move-result-object v2

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v3}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$3()Lscala/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    new-instance v1, Lscala/util/control/Exception$$anonfun$catching$1;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$catching$1;-><init>()V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    const-string v1, ", "

    invoke-interface {p1, v1}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object p1

    check-cast p1, Lscala/util/control/Exception$Catch;

    return-object p1
.end method

.method public catchingPromiscuously(Lscala/PartialFunction;)Lscala/util/control/Exception$Catch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lscala/util/control/Exception$Catch;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    new-instance v2, Lscala/util/control/Exception$$anonfun$catchingPromiscuously$1;

    invoke-direct {v2}, Lscala/util/control/Exception$$anonfun$catchingPromiscuously$1;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    return-object v0
.end method

.method public catchingPromiscuously(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lscala/util/control/Exception$;->pfFromExceptions(Lscala/collection/Seq;)Lscala/PartialFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$;->catchingPromiscuously(Lscala/PartialFunction;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public failAsValue(Lscala/collection/Seq;Lscala/Function0;)Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lscala/Function0<",
            "TT;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$;->catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    new-instance v0, Lscala/util/control/Exception$$anonfun$failAsValue$1;

    invoke-direct {v0, p2}, Lscala/util/control/Exception$$anonfun$failAsValue$1;-><init>(Lscala/Function0;)V

    invoke-virtual {p1, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public failing(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/Option<",
            "TT;>;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$;->catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    new-instance v0, Lscala/util/control/Exception$$anonfun$failing$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$failing$1;-><init>()V

    invoke-virtual {p1, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public handling(Lscala/collection/Seq;)Lscala/util/control/Exception$By;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$By<",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "TT;>;",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Lscala/util/control/Exception$By;

    new-instance v1, Lscala/util/control/Exception$$anonfun$handling$1;

    invoke-direct {v1, p1}, Lscala/util/control/Exception$$anonfun$handling$1;-><init>(Lscala/collection/Seq;)V

    invoke-direct {v0, v1}, Lscala/util/control/Exception$By;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public ignoring(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$;->catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    new-instance v0, Lscala/util/control/Exception$$anonfun$ignoring$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$ignoring$1;-><init>()V

    invoke-virtual {p1, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public mkCatcher(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ex:",
            "Ljava/lang/Throwable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TEx;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Function1<",
            "TEx;TT;>;",
            "Lscala/reflect/ClassTag<",
            "TEx;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    new-instance v0, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v0, p1, p2, p3}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public mkThrowableCatcher(Lscala/Function1;Lscala/Function1;)Lscala/PartialFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v0

    new-instance v1, Lscala/util/control/Exception$$anon$1;

    invoke-direct {v1, p1, p2, v0}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    return-object v1
.end method

.method public final noCatch()Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lscala/util/control/Exception$;->noCatch:Lscala/util/control/Exception$Catch;

    return-object v0
.end method

.method public final nonFatalCatch()Lscala/util/control/Exception$Catch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$;->nonFatalCatcher()Lscala/PartialFunction;

    move-result-object v1

    sget-object v2, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v2}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$2()Lscala/Option;

    move-result-object v2

    sget-object v3, Lscala/util/control/Exception$Catch$;->MODULE$:Lscala/util/control/Exception$Catch$;

    invoke-virtual {v3}, Lscala/util/control/Exception$Catch$;->$lessinit$greater$default$3()Lscala/Function1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    const-string v1, "<non-fatal>"

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Catch;

    return-object v0
.end method

.method public final nonFatalCatcher()Lscala/PartialFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lscala/util/control/Exception$$anonfun$nonFatalCatcher$1;

    invoke-direct {v0}, Lscala/util/control/Exception$$anonfun$nonFatalCatcher$1;-><init>()V

    new-instance v1, Lscala/util/control/Exception$$anonfun$nonFatalCatcher$2;

    invoke-direct {v1}, Lscala/util/control/Exception$$anonfun$nonFatalCatcher$2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lscala/util/control/Exception$;->mkThrowableCatcher(Lscala/Function1;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object v0

    return-object v0
.end method

.method public final nothingCatcher()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lscala/util/control/Exception$;->nothingCatcher:Lscala/PartialFunction;

    return-object v0
.end method

.method public final scala$util$control$Exception$$fun$1(Lscala/Function1;Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 0

    .line 205
    invoke-virtual {p0, p2}, Lscala/util/control/Exception$;->catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public final scala$util$control$Exception$$unwrap$1(Ljava/lang/Throwable;Lscala/collection/Seq;)Ljava/lang/Throwable;
    .locals 1

    .line 215
    :goto_0
    invoke-virtual {p0, p1, p2}, Lscala/util/control/Exception$;->scala$util$control$Exception$$wouldMatch(Ljava/lang/Throwable;Lscala/collection/Seq;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public scala$util$control$Exception$$wouldMatch(Ljava/lang/Throwable;Lscala/collection/Seq;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 223
    new-instance v0, Lscala/util/control/Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1;

    invoke-direct {v0, p1}, Lscala/util/control/Exception$$anonfun$scala$util$control$Exception$$wouldMatch$1;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lscala/collection/Seq;->exists(Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public shouldRethrow(Ljava/lang/Throwable;)Z
    .locals 2

    .line 57
    instance-of v0, p1, Lscala/util/control/ControlThrowable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public throwableSubtypeToCatcher(Lscala/PartialFunction;Lscala/reflect/ClassTag;)Lscala/PartialFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Ex:",
            "Ljava/lang/Throwable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TEx;TT;>;",
            "Lscala/reflect/ClassTag<",
            "TEx;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    new-instance v0, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;

    invoke-direct {v0, p1}, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$1;-><init>(Lscala/PartialFunction;)V

    new-instance v1, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$2;

    invoke-direct {v1, p1}, Lscala/util/control/Exception$$anonfun$throwableSubtypeToCatcher$2;-><init>(Lscala/PartialFunction;)V

    new-instance p1, Lscala/util/control/Exception$$anon$1;

    invoke-direct {p1, v0, v1, p2}, Lscala/util/control/Exception$$anon$1;-><init>(Lscala/Function1;Lscala/Function1;Lscala/reflect/ClassTag;)V

    return-object p1
.end method

.method public ultimately(Lscala/Function0;)Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lscala/util/control/Exception$;->noCatch()Lscala/util/control/Exception$Catch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/control/Exception$Catch;->andFinally(Lscala/Function0;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public unwrapping(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lscala/util/control/Exception$;->catching(Lscala/collection/Seq;)Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lscala/util/control/Exception$$anonfun$unwrapping$1;

    invoke-direct {v1, p1}, Lscala/util/control/Exception$$anonfun$unwrapping$1;-><init>(Lscala/collection/Seq;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method
