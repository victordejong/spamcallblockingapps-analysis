.class public final Lscala/Tuple3$;
.super Ljava/lang/Object;
.source "Tuple3.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple3$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple3$;

    invoke-direct {v0}, Lscala/Tuple3$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple3$;->MODULE$:Lscala/Tuple3$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lscala/Tuple3$;->MODULE$:Lscala/Tuple3$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;TT3;)",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lscala/Tuple3;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple3"

    return-object v0
.end method

.method public unapply(Lscala/Tuple3;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 21
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
