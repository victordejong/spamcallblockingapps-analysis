.class public final Lscala/Tuple8$;
.super Ljava/lang/Object;
.source "Tuple8.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple8$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple8$;

    invoke-direct {v0}, Lscala/Tuple8$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple8$;->MODULE$:Lscala/Tuple8$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lscala/Tuple8$;->MODULE$:Lscala/Tuple8$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple8;
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
            ">(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)",
            "Lscala/Tuple8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .line 26
    new-instance v9, Lscala/Tuple8;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lscala/Tuple8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple8"

    return-object v0
.end method

.method public unapply(Lscala/Tuple8;)Lscala/Option;
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
            ">(",
            "Lscala/Tuple8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lscala/Option<",
            "Lscala/Tuple8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 26
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v10, Lscala/Tuple8;

    invoke-virtual {p1}, Lscala/Tuple8;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple8;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple8;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple8;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple8;->_5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple8;->_6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/Tuple8;->_7()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1}, Lscala/Tuple8;->_8()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lscala/Tuple8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v10}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
