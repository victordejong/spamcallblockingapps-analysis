.class public final Lscala/Tuple11$;
.super Ljava/lang/Object;
.source "Tuple11.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple11$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple11$;

    invoke-direct {v0}, Lscala/Tuple11$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple11$;->MODULE$:Lscala/Tuple11$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object v0, Lscala/Tuple11$;->MODULE$:Lscala/Tuple11$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple11;
    .locals 13
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
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;)",
            "Lscala/Tuple11<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;"
        }
    .end annotation

    .line 29
    new-instance v12, Lscala/Tuple11;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lscala/Tuple11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple11"

    return-object v0
.end method

.method public unapply(Lscala/Tuple11;)Lscala/Option;
    .locals 14
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
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple11<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;)",
            "Lscala/Option<",
            "Lscala/Tuple11<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v13, Lscala/Tuple11;

    invoke-virtual {p1}, Lscala/Tuple11;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple11;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple11;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple11;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple11;->_5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple11;->_6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/Tuple11;->_7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/Tuple11;->_8()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1}, Lscala/Tuple11;->_9()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1}, Lscala/Tuple11;->_10()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p1}, Lscala/Tuple11;->_11()Ljava/lang/Object;

    move-result-object v12

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lscala/Tuple11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v13}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
