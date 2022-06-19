.class public final Lscala/Tuple5$;
.super Ljava/lang/Object;
.source "Tuple5.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple5$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple5$;

    invoke-direct {v0}, Lscala/Tuple5$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple5$;->MODULE$:Lscala/Tuple5$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Lscala/Tuple5$;->MODULE$:Lscala/Tuple5$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple5;
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
            ">(TT1;TT2;TT3;TT4;TT5;)",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;"
        }
    .end annotation

    .line 23
    new-instance v6, Lscala/Tuple5;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple5"

    return-object v0
.end method

.method public unapply(Lscala/Tuple5;)Lscala/Option;
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
            ">(",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;)",
            "Lscala/Option<",
            "Lscala/Tuple5<",
            "TT1;TT2;TT3;TT4;TT5;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 23
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v7, Lscala/Tuple5;

    invoke-virtual {p1}, Lscala/Tuple5;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple5;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple5;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple5;->_4()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lscala/Tuple5;->_5()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lscala/Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v7}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
