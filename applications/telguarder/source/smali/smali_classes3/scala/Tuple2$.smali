.class public final Lscala/Tuple2$;
.super Ljava/lang/Object;
.source "Tuple2.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Tuple2$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Tuple2$;

    invoke-direct {v0}, Lscala/Tuple2$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/Tuple2$;->MODULE$:Lscala/Tuple2$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lscala/Tuple2$;->MODULE$:Lscala/Tuple2$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(TT1;TT2;)",
            "Lscala/Tuple2<",
            "TT1;TT2;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public apply$mCCc$sp(CC)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcCC$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcCC$sp;-><init>(CC)V

    return-object v0
.end method

.method public apply$mCDc$sp(CD)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CD)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcCD$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcCD$sp;-><init>(CD)V

    return-object v0
.end method

.method public apply$mCIc$sp(CI)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CI)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcCI$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcCI$sp;-><init>(CI)V

    return-object v0
.end method

.method public apply$mCJc$sp(CJ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CJ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcCJ$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcCJ$sp;-><init>(CJ)V

    return-object v0
.end method

.method public apply$mCZc$sp(CZ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CZ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcCZ$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcCZ$sp;-><init>(CZ)V

    return-object v0
.end method

.method public apply$mDCc$sp(DC)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DC)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcDC$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcDC$sp;-><init>(DC)V

    return-object v0
.end method

.method public apply$mDDc$sp(DD)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcDD$sp;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/Tuple2$mcDD$sp;-><init>(DD)V

    return-object v0
.end method

.method public apply$mDIc$sp(DI)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcDI$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcDI$sp;-><init>(DI)V

    return-object v0
.end method

.method public apply$mDJc$sp(DJ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcDJ$sp;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/Tuple2$mcDJ$sp;-><init>(DJ)V

    return-object v0
.end method

.method public apply$mDZc$sp(DZ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DZ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcDZ$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcDZ$sp;-><init>(DZ)V

    return-object v0
.end method

.method public apply$mICc$sp(IC)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IC)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcIC$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcIC$sp;-><init>(IC)V

    return-object v0
.end method

.method public apply$mIDc$sp(ID)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcID$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcID$sp;-><init>(ID)V

    return-object v0
.end method

.method public apply$mIIc$sp(II)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcII$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcII$sp;-><init>(II)V

    return-object v0
.end method

.method public apply$mIJc$sp(IJ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcIJ$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcIJ$sp;-><init>(IJ)V

    return-object v0
.end method

.method public apply$mIZc$sp(IZ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcIZ$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcIZ$sp;-><init>(IZ)V

    return-object v0
.end method

.method public apply$mJCc$sp(JC)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JC)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcJC$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcJC$sp;-><init>(JC)V

    return-object v0
.end method

.method public apply$mJDc$sp(JD)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcJD$sp;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/Tuple2$mcJD$sp;-><init>(JD)V

    return-object v0
.end method

.method public apply$mJIc$sp(JI)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcJI$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcJI$sp;-><init>(JI)V

    return-object v0
.end method

.method public apply$mJJc$sp(JJ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcJJ$sp;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/Tuple2$mcJJ$sp;-><init>(JJ)V

    return-object v0
.end method

.method public apply$mJZc$sp(JZ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcJZ$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcJZ$sp;-><init>(JZ)V

    return-object v0
.end method

.method public apply$mZCc$sp(ZC)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZC)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcZC$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcZC$sp;-><init>(ZC)V

    return-object v0
.end method

.method public apply$mZDc$sp(ZD)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZD)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcZD$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcZD$sp;-><init>(ZD)V

    return-object v0
.end method

.method public apply$mZIc$sp(ZI)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcZI$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcZI$sp;-><init>(ZI)V

    return-object v0
.end method

.method public apply$mZJc$sp(ZJ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcZJ$sp;

    invoke-direct {v0, p1, p2, p3}, Lscala/Tuple2$mcZJ$sp;-><init>(ZJ)V

    return-object v0
.end method

.method public apply$mZZc$sp(ZZ)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lscala/Tuple2$mcZZ$sp;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2$mcZZ$sp;-><init>(ZZ)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tuple2"

    return-object v0
.end method

.method public unapply(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TT1;TT2;>;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TT1;TT2;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mCCc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcCC$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcC$sp()C

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcC$sp()C

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcCC$sp;-><init>(CC)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mCDc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcCD$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcC$sp()C

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcD$sp()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcCD$sp;-><init>(CD)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mCIc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcCI$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcC$sp()C

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcCI$sp;-><init>(CI)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mCJc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcCJ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcC$sp()C

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcJ$sp()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcCJ$sp;-><init>(CJ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mCZc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcCZ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcC$sp()C

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcCZ$sp;-><init>(CZ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDCc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcDC$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcD$sp()D

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcC$sp()C

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcDC$sp;-><init>(DC)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDDc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcDD$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcD$sp()D

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcD$sp()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lscala/Tuple2$mcDD$sp;-><init>(DD)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDIc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcDI$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcD$sp()D

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcDI$sp;-><init>(DI)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDJc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcDJ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcD$sp()D

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcJ$sp()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lscala/Tuple2$mcDJ$sp;-><init>(DJ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mDZc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcDZ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcD$sp()D

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcDZ$sp;-><init>(DZ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mICc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcIC$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcC$sp()C

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcIC$sp;-><init>(IC)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mIDc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcID$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcD$sp()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcID$sp;-><init>(ID)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mIIc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcII$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcII$sp;-><init>(II)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mIJc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcIJ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcJ$sp()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcIJ$sp;-><init>(IJ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mIZc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcIZ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcIZ$sp;-><init>(IZ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJCc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcJC$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcC$sp()C

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcJC$sp;-><init>(JC)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJDc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcJD$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcD$sp()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lscala/Tuple2$mcJD$sp;-><init>(JD)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJIc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcJI$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcJI$sp;-><init>(JI)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJJc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcJJ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcJ$sp()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lscala/Tuple2$mcJJ$sp;-><init>(JJ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mJZc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcJZ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple2$mcJZ$sp;-><init>(JZ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mZCc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcZC$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcC$sp()C

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcZC$sp;-><init>(ZC)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mZDc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcZD$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcD$sp()D

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcZD$sp;-><init>(ZD)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mZIc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcZI$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcI$sp()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcZI$sp;-><init>(ZI)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mZJc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcZJ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcJ$sp()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple2$mcZJ$sp;-><init>(ZJ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public unapply$mZZc$sp(Lscala/Tuple2;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2$mcZZ$sp;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcZ$sp()Z

    move-result v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2$mcZ$sp()Z

    move-result p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2$mcZZ$sp;-><init>(ZZ)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
