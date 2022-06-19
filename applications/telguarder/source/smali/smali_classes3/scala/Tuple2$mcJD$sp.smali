.class public Lscala/Tuple2$mcJD$sp;
.super Lscala/Tuple2;
.source "Tuple2.scala"

# interfaces
.implements Lscala/Product2$mcJD$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Product2$mcJD$sp;"
    }
.end annotation


# instance fields
.field public final _1$mcJ$sp:J

.field public final _2$mcD$sp:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lscala/Tuple2$mcJD$sp;->_1$mcJ$sp:J

    iput-wide p3, p0, Lscala/Tuple2$mcJD$sp;->_2$mcD$sp:D

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lscala/Product2$mcJD$sp$class;->$init$(Lscala/Product2$mcJD$sp;)V

    return-void
.end method


# virtual methods
.method public _1()J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_1$mcJ$sp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcJ$sp()J
    .locals 2

    iget-wide v0, p0, Lscala/Tuple2$mcJD$sp;->_1$mcJ$sp:J

    return-wide v0
.end method

.method public _2()D
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_2$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic _2()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_2()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public _2$mcD$sp()D
    .locals 2

    iget-wide v0, p0, Lscala/Tuple2$mcJD$sp;->_2$mcD$sp:D

    return-wide v0
.end method

.method public copy$default$1()J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()J"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->copy$default$1$mcJ$sp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->copy$default$1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$1$mcJ$sp()J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()J"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_1()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy$default$2()D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()D"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->copy$default$2$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic copy$default$2()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->copy$default$2()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2$mcD$sp()D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()D"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_2()D

    move-result-wide v0

    return-wide v0
.end method

.method public specInstance$()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public swap()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->swap$mcJD$sp()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public swap$mcJD$sp()Lscala/Tuple2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lscala/Tuple2$mcDJ$sp;

    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_2()D

    move-result-wide v1

    invoke-virtual {p0}, Lscala/Tuple2$mcJD$sp;->_1()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/Tuple2$mcDJ$sp;-><init>(DJ)V

    return-object v0
.end method
