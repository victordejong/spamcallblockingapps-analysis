.class public final Lscala/Tuple1$;
.super Ljava/lang/Object;
.source "Tuple1.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple1$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple1$;

    invoke-direct {v0}, Lscala/Tuple1$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple1$;->MODULE$:Lscala/Tuple1$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object v0, Lscala/Tuple1$;->MODULE$:Lscala/Tuple1$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lscala/Tuple1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(TT1;)",
            "Lscala/Tuple1<",
            "TT1;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lscala/Tuple1;

    invoke-direct {v0, p1}, Lscala/Tuple1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public apply$mDc$sp(D)Lscala/Tuple1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lscala/Tuple1$mcD$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple1$mcD$sp;-><init>(D)V

    return-object v0
.end method

.method public apply$mIc$sp(I)Lscala/Tuple1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lscala/Tuple1$mcI$sp;

    invoke-direct {v0, p1}, Lscala/Tuple1$mcI$sp;-><init>(I)V

    return-object v0
.end method

.method public apply$mJc$sp(J)Lscala/Tuple1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lscala/Tuple1$mcJ$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple1$mcJ$sp;-><init>(J)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple1"

    return-object v0
.end method

.method public unapply(Lscala/Tuple1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple1<",
            "TT1;>;)",
            "Lscala/Option<",
            "TT1;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple1;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDc$sp(Lscala/Tuple1;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple1;->_1$mcD$sp()D

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mIc$sp(Lscala/Tuple1;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple1;->_1$mcI$sp()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJc$sp(Lscala/Tuple1;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple1<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple1;->_1$mcJ$sp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
