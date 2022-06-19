.class public final Lscala/Tuple18$;
.super Ljava/lang/Object;
.source "Tuple18.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple18$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple18$;

    invoke-direct {v0}, Lscala/Tuple18$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple18$;->MODULE$:Lscala/Tuple18$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lscala/Tuple18$;->MODULE$:Lscala/Tuple18$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple18;
    .locals 20
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
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            "T16:",
            "Ljava/lang/Object;",
            "T17:",
            "Ljava/lang/Object;",
            "T18:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TT18;)",
            "Lscala/Tuple18<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TT18;>;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    .line 36
    new-instance v19, Lscala/Tuple18;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lscala/Tuple18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple18"

    return-object v0
.end method

.method public unapply(Lscala/Tuple18;)Lscala/Option;
    .locals 21
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
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            "T16:",
            "Ljava/lang/Object;",
            "T17:",
            "Ljava/lang/Object;",
            "T18:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple18<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TT18;>;)",
            "Lscala/Option<",
            "Lscala/Tuple18<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TT18;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 36
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v15, Lscala/Tuple18;

    move-object v1, v15

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_8()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_9()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_10()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_11()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_12()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_13()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_14()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v20, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_15()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_16()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_17()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lscala/Tuple18;->_18()Ljava/lang/Object;

    move-result-object v19

    invoke-direct/range {v1 .. v19}, Lscala/Tuple18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v20

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
