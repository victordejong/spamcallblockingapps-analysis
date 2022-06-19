.class public final Lscala/Tuple9$;
.super Ljava/lang/Object;
.source "Tuple9.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple9$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple9$;

    invoke-direct {v0}, Lscala/Tuple9$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple9$;->MODULE$:Lscala/Tuple9$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lscala/Tuple9$;->MODULE$:Lscala/Tuple9$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple9;
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
            ">(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;)",
            "Lscala/Tuple9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation

    .line 27
    new-instance v10, Lscala/Tuple9;

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

    invoke-direct/range {v0 .. v9}, Lscala/Tuple9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple9"

    return-object v0
.end method

.method public unapply(Lscala/Tuple9;)Lscala/Option;
    .locals 12
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
            "Lscala/Tuple9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lscala/Option<",
            "Lscala/Tuple9<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 27
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v11, Lscala/Tuple9;

    invoke-virtual {p1}, Lscala/Tuple9;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple9;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple9;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple9;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple9;->_5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple9;->_6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/Tuple9;->_7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/Tuple9;->_8()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1}, Lscala/Tuple9;->_9()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lscala/Tuple9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v11}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
