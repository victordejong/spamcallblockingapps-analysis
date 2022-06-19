.class public Lscala/Tuple2$mcIJ$sp;
.super Lscala/Tuple2;
.source "Tuple2.scala"

# interfaces
.implements Lscala/Product2$mcIJ$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Product2$mcIJ$sp;"
    }
.end annotation


# instance fields
.field public final _1$mcI$sp:I

.field public final _2$mcJ$sp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 20
    iput p1, p0, Lscala/Tuple2$mcIJ$sp;->_1$mcI$sp:I

    iput-wide p2, p0, Lscala/Tuple2$mcIJ$sp;->_2$mcJ$sp:J

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lscala/Product2$mcIJ$sp$class;->$init$(Lscala/Product2$mcIJ$sp;)V

    return-void
.end method


# virtual methods
.method public _1()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_1()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcI$sp()I
    .locals 1

    iget v0, p0, Lscala/Tuple2$mcIJ$sp;->_1$mcI$sp:I

    return v0
.end method

.method public _2()J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_2$mcJ$sp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic _2()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_2()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public _2$mcJ$sp()J
    .locals 2

    iget-wide v0, p0, Lscala/Tuple2$mcIJ$sp;->_2$mcJ$sp:J

    return-wide v0
.end method

.method public copy$default$1()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->copy$default$1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->copy$default$1()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$1$mcI$sp()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_1()I

    move-result v0

    return v0
.end method

.method public copy$default$2()J
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
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->copy$default$2$mcJ$sp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic copy$default$2()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->copy$default$2()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2$mcJ$sp()J
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
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_2()J

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
    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->swap$mcIJ$sp()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public swap$mcIJ$sp()Lscala/Tuple2;
    .locals 4
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
    new-instance v0, Lscala/Tuple2$mcJI$sp;

    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_2()J

    move-result-wide v1

    invoke-virtual {p0}, Lscala/Tuple2$mcIJ$sp;->_1()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/Tuple2$mcJI$sp;-><init>(JI)V

    return-object v0
.end method
