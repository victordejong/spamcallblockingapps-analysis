.class public final Lscala/collection/DebugUtils$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/DebugUtils$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/DebugUtils$;

    invoke-direct {v0}, Lscala/collection/DebugUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    return-void
.end method


# virtual methods
.method public arrayString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 109
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lscala/collection/mutable/ArrayOps;->slice(II)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance p2, Lscala/collection/DebugUtils$$anonfun$arrayString$1;

    invoke-direct {p2}, Lscala/collection/DebugUtils$$anonfun$arrayString$1;-><init>()V

    sget-object p3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-virtual {p3, v1}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    const-string p2, " | "

    .line 112
    invoke-interface {p1, p2}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildString(Lscala/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 102
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 103
    new-instance v1, Lscala/collection/DebugUtils$$anonfun$buildString$1;

    invoke-direct {v1, v0}, Lscala/collection/DebugUtils$$anonfun$buildString$1;-><init>(Lscala/runtime/ObjectRef;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public illegalArgument(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOutOfBounds(I)Lscala/runtime/Nothing$;
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noSuchElement(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 97
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsupported(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
