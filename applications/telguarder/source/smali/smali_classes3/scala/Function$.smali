.class public final Lscala/Function$;
.super Ljava/lang/Object;
.source "Function.scala"


# static fields
.field public static final MODULE$:Lscala/Function$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Function$;

    invoke-direct {v0}, Lscala/Function$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Function$;->MODULE$:Lscala/Function$;

    return-void
.end method


# virtual methods
.method public chain(Lscala/collection/Seq;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/Function1<",
            "Ta;Ta;>;>;)",
            "Lscala/Function1<",
            "Ta;Ta;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lscala/Function$$anonfun$chain$1;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$chain$1;-><init>(Lscala/collection/Seq;)V

    return-object v0
.end method

.method public const(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TT;TU;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public tupled(Lscala/Function2;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ta1;Ta2;Tb;>;)",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ta1;Ta2;>;Tb;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lscala/Function$$anonfun$tupled$1;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$tupled$1;-><init>(Lscala/Function2;)V

    return-object v0
.end method

.method public tupled(Lscala/Function3;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function3<",
            "Ta1;Ta2;Ta3;Tb;>;)",
            "Lscala/Function1<",
            "Lscala/Tuple3<",
            "Ta1;Ta2;Ta3;>;Tb;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lscala/Function$$anonfun$tupled$2;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$tupled$2;-><init>(Lscala/Function3;)V

    return-object v0
.end method

.method public tupled(Lscala/Function4;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function4<",
            "Ta1;Ta2;Ta3;Ta4;Tb;>;)",
            "Lscala/Function1<",
            "Lscala/Tuple4<",
            "Ta1;Ta2;Ta3;Ta4;>;Tb;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lscala/Function$$anonfun$tupled$3;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$tupled$3;-><init>(Lscala/Function4;)V

    return-object v0
.end method

.method public tupled(Lscala/Function5;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "a5:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function5<",
            "Ta1;Ta2;Ta3;Ta4;Ta5;Tb;>;)",
            "Lscala/Function1<",
            "Lscala/Tuple5<",
            "Ta1;Ta2;Ta3;Ta4;Ta5;>;Tb;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lscala/Function$$anonfun$tupled$4;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$tupled$4;-><init>(Lscala/Function5;)V

    return-object v0
.end method

.method public uncurried(Lscala/Function1;)Lscala/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ta1;",
            "Lscala/Function1<",
            "Ta2;Tb;>;>;)",
            "Lscala/Function2<",
            "Ta1;Ta2;Tb;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lscala/Function$$anonfun$uncurried$1;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$uncurried$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public uncurried(Lscala/Function1;)Lscala/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ta1;",
            "Lscala/Function1<",
            "Ta2;",
            "Lscala/Function1<",
            "Ta3;Tb;>;>;>;)",
            "Lscala/Function3<",
            "Ta1;Ta2;Ta3;Tb;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscala/Function$$anonfun$uncurried$2;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$uncurried$2;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public uncurried(Lscala/Function1;)Lscala/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ta1;",
            "Lscala/Function1<",
            "Ta2;",
            "Lscala/Function1<",
            "Ta3;",
            "Lscala/Function1<",
            "Ta4;Tb;>;>;>;>;)",
            "Lscala/Function4<",
            "Ta1;Ta2;Ta3;Ta4;Tb;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lscala/Function$$anonfun$uncurried$3;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$uncurried$3;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public uncurried(Lscala/Function1;)Lscala/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "a5:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ta1;",
            "Lscala/Function1<",
            "Ta2;",
            "Lscala/Function1<",
            "Ta3;",
            "Lscala/Function1<",
            "Ta4;",
            "Lscala/Function1<",
            "Ta5;Tb;>;>;>;>;>;)",
            "Lscala/Function5<",
            "Ta1;Ta2;Ta3;Ta4;Ta5;Tb;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lscala/Function$$anonfun$uncurried$4;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$uncurried$4;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public unlift(Lscala/Function1;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/Option<",
            "TR;>;>;)",
            "Lscala/PartialFunction<",
            "TT;TR;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v0, p1}, Lscala/PartialFunction$;->unlifted(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public untupled(Lscala/Function1;)Lscala/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "Ta1;Ta2;>;Tb;>;)",
            "Lscala/Function2<",
            "Ta1;Ta2;Tb;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/Function$$anonfun$untupled$1;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$untupled$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public untupled(Lscala/Function1;)Lscala/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple3<",
            "Ta1;Ta2;Ta3;>;Tb;>;)",
            "Lscala/Function3<",
            "Ta1;Ta2;Ta3;Tb;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lscala/Function$$anonfun$untupled$2;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$untupled$2;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public untupled(Lscala/Function1;)Lscala/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple4<",
            "Ta1;Ta2;Ta3;Ta4;>;Tb;>;)",
            "Lscala/Function4<",
            "Ta1;Ta2;Ta3;Ta4;Tb;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lscala/Function$$anonfun$untupled$3;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$untupled$3;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public untupled(Lscala/Function1;)Lscala/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<a1:",
            "Ljava/lang/Object;",
            "a2:",
            "Ljava/lang/Object;",
            "a3:",
            "Ljava/lang/Object;",
            "a4:",
            "Ljava/lang/Object;",
            "a5:",
            "Ljava/lang/Object;",
            "b:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple5<",
            "Ta1;Ta2;Ta3;Ta4;Ta5;>;Tb;>;)",
            "Lscala/Function5<",
            "Ta1;Ta2;Ta3;Ta4;Ta5;Tb;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lscala/Function$$anonfun$untupled$4;

    invoke-direct {v0, p1}, Lscala/Function$$anonfun$untupled$4;-><init>(Lscala/Function1;)V

    return-object v0
.end method
