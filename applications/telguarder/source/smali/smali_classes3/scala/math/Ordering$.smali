.class public final Lscala/math/Ordering$;
.super Ljava/lang/Object;
.source "Ordering.scala"

# interfaces
.implements Lscala/math/LowPriorityOrderingImplicits;
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/Ordering$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/Ordering$;

    invoke-direct {v0}, Lscala/math/Ordering$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    invoke-static {p0}, Lscala/math/LowPriorityOrderingImplicits$class;->$init$(Lscala/math/LowPriorityOrderingImplicits;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 162
    sget-object v0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    return-object v0
.end method


# virtual methods
.method public Iterable(Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "Lscala/collection/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lscala/math/Ordering$$anon$10;

    invoke-direct {v0, p1}, Lscala/math/Ordering$$anon$10;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method

.method public Option(Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Option<",
            "TT;>;>;"
        }
    .end annotation

    .line 346
    new-instance v0, Lscala/math/Ordering$$anon$3;

    invoke-direct {v0, p1}, Lscala/math/Ordering$$anon$3;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method

.method public Tuple2(Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple2<",
            "TT1;TT2;>;>;"
        }
    .end annotation

    .line 364
    new-instance v0, Lscala/math/Ordering$$anon$11;

    invoke-direct {v0, p1, p2}, Lscala/math/Ordering$$anon$11;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public Tuple3(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;>;"
        }
    .end annotation

    .line 375
    new-instance v0, Lscala/math/Ordering$$anon$12;

    invoke-direct {v0, p1, p2, p3}, Lscala/math/Ordering$$anon$12;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public Tuple4(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lscala/math/Ordering$$anon$13;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/math/Ordering$$anon$13;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public Tuple5(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;",
            "Lscala/math/Ordering<",
            "TT5;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;>;"
        }
    .end annotation

    .line 403
    new-instance v6, Lscala/math/Ordering$$anon$14;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/math/Ordering$$anon$14;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v6
.end method

.method public Tuple6(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;",
            "Lscala/math/Ordering<",
            "TT5;>;",
            "Lscala/math/Ordering<",
            "TT6;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;>;"
        }
    .end annotation

    .line 420
    new-instance v7, Lscala/math/Ordering$$anon$15;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/math/Ordering$$anon$15;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v7
.end method

.method public Tuple7(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;",
            "Lscala/math/Ordering<",
            "TT5;>;",
            "Lscala/math/Ordering<",
            "TT6;>;",
            "Lscala/math/Ordering<",
            "TT7;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;>;"
        }
    .end annotation

    .line 439
    new-instance v8, Lscala/math/Ordering$$anon$16;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lscala/math/Ordering$$anon$16;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v8
.end method

.method public Tuple8(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;",
            "Lscala/math/Ordering<",
            "TT5;>;",
            "Lscala/math/Ordering<",
            "TT6;>;",
            "Lscala/math/Ordering<",
            "TT7;>;",
            "Lscala/math/Ordering<",
            "TT8;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;>;"
        }
    .end annotation

    .line 460
    new-instance v9, Lscala/math/Ordering$$anon$17;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lscala/math/Ordering$$anon$17;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v9
.end method

.method public Tuple9(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;",
            "Lscala/math/Ordering<",
            "TT2;>;",
            "Lscala/math/Ordering<",
            "TT3;>;",
            "Lscala/math/Ordering<",
            "TT4;>;",
            "Lscala/math/Ordering<",
            "TT5;>;",
            "Lscala/math/Ordering<",
            "TT6;>;",
            "Lscala/math/Ordering<",
            "TT7;>;",
            "Lscala/math/Ordering<",
            "TT8;>;",
            "Lscala/math/Ordering<",
            "TT9;>;)",
            "Lscala/math/Ordering<",
            "Lscala/Tuple9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;>;"
        }
    .end annotation

    .line 483
    new-instance v10, Lscala/math/Ordering$$anon$18;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lscala/math/Ordering$$anon$18;-><init>(Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;Lscala/math/Ordering;)V

    return-object v10
.end method

.method public apply(Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT;>;)",
            "Lscala/math/Ordering<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public by(Lscala/Function1;Lscala/math/Ordering;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/math/Ordering<",
            "TS;>;)",
            "Lscala/math/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lscala/math/Ordering$$anonfun$by$1;

    invoke-direct {v0, p1, p2}, Lscala/math/Ordering$$anonfun$by$1;-><init>(Lscala/Function1;Lscala/math/Ordering;)V

    new-instance p1, Lscala/math/Ordering$$anon$9;

    invoke-direct {p1, v0}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    return-object p1
.end method

.method public comparatorToOrdering(Ljava/util/Comparator;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation

    .line 162
    invoke-static {p0, p1}, Lscala/math/LowPriorityOrderingImplicits$class;->comparatorToOrdering(Lscala/math/LowPriorityOrderingImplicits;Ljava/util/Comparator;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method

.method public fromLessThan(Lscala/Function2;)Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/math/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Lscala/math/Ordering$$anon$9;

    invoke-direct {v0, p1}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    return-object v0
.end method

.method public ordered(Lscala/Function1;)Lscala/math/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Comparable<",
            "TA;>;>;)",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation

    .line 162
    invoke-static {p0, p1}, Lscala/math/LowPriorityOrderingImplicits$class;->ordered(Lscala/math/LowPriorityOrderingImplicits;Lscala/Function1;)Lscala/math/Ordering;

    move-result-object p1

    return-object p1
.end method
