.class public final Lscala/collection/immutable/Stream$;
.super Lscala/collection/generic/SeqFactory;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/immutable/Stream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stream$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stream$;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1138
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1138
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1138
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1177
    invoke-interface {p1}, Lscala/collection/Seq;->toStream()Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "*>;TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    .line 1150
    new-instance v0, Lscala/collection/immutable/Stream$StreamCanBuildFrom;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$StreamCanBuildFrom;-><init>()V

    return-object v0
.end method

.method public collectedTail(Ljava/lang/Object;Lscala/collection/immutable/Stream;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/immutable/Stream$Cons;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/PartialFunction<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)",
            "Lscala/collection/immutable/Stream$Cons<",
            "TB;>;"
        }
    .end annotation

    .line 1303
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;

    invoke-direct {v0, p2, p3, p4}, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;-><init>(Lscala/collection/immutable/Stream;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p2, p1, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p2
.end method

.method public consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;)",
            "Lscala/collection/immutable/Stream$ConsWrapper<",
            "TA;>;"
        }
    .end annotation

    .line 1197
    new-instance v0, Lscala/collection/immutable/Stream$ConsWrapper;

    invoke-direct {v0, p1}, Lscala/collection/immutable/Stream$ConsWrapper;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public continually(Lscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1279
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$continually$1;

    invoke-direct {v1, p1}, Lscala/collection/immutable/Stream$$anonfun$continually$1;-><init>(Lscala/Function0;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 1138
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1174
    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object v0
.end method

.method public bridge synthetic fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1138
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$;->fill(ILscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public fill(ILscala/Function0;)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    .line 1282
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$fill$1;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$fill$1;-><init>(ILscala/Function0;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object p1
.end method

.method public filteredTail(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream$Cons;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream$Cons<",
            "TA;>;"
        }
    .end annotation

    .line 1299
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {p1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p1
.end method

.method public from(I)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1270
    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/Stream$;->from(II)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public from(II)Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1262
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$from$1;

    invoke-direct {v1, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$from$1;-><init>(II)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p1
.end method

.method public bridge synthetic iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1138
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;I",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1251
    invoke-virtual {p0, p1, p3}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/immutable/Stream;->take(I)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1248
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Stream$$anonfun$iterate$1;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p2, p1, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p2
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation

    .line 1153
    new-instance v0, Lscala/collection/immutable/Stream$StreamBuilder;

    invoke-direct {v0}, Lscala/collection/immutable/Stream$StreamBuilder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1138
    invoke-virtual {p0, p1, p2, p3, p4}, Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1291
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v6, p4

    check-cast v6, Lscala/math/Integral;

    .line 1294
    invoke-interface {v6, p3}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-interface {v6}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, p1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v6, p2}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    .line 1295
    :cond_1
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    new-instance v0, Lscala/collection/immutable/Stream$$anonfun$range$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/Stream$$anonfun$range$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;Lscala/math/Integral;)V

    new-instance p2, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p2, p1, v0}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final scala$collection$immutable$Stream$$loop$4(IILscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2

    if-lt p1, p2, :cond_0

    .line 1286
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;

    invoke-direct {v1, p2, p3, p1}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1;-><init>(ILscala/Function1;I)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1138
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$;->tabulate(ILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(ILscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1287
    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Stream$;->scala$collection$immutable$Stream$$loop$4(IILscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method
