.class public final Lscala/Tuple7$;
.super Ljava/lang/Object;
.source "Tuple7.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple7$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple7$;

    invoke-direct {v0}, Lscala/Tuple7$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple7$;->MODULE$:Lscala/Tuple7$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lscala/Tuple7$;->MODULE$:Lscala/Tuple7$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple7;
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
            ">(TT1;TT2;TT3;TT4;TT5;TT6;TT7;)",
            "Lscala/Tuple7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
        }
    .end annotation

    .line 25
    new-instance v8, Lscala/Tuple7;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lscala/Tuple7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple7"

    return-object v0
.end method

.method public unapply(Lscala/Tuple7;)Lscala/Option;
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
            ">(",
            "Lscala/Tuple7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lscala/Option<",
            "Lscala/Tuple7<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 25
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v9, Lscala/Tuple7;

    invoke-virtual {p1}, Lscala/Tuple7;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple7;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple7;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple7;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple7;->_5()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lscala/Tuple7;->_6()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lscala/Tuple7;->_7()Ljava/lang/Object;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lscala/Tuple7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v9}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
