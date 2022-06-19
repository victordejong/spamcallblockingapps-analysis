.class public Lscala/Tuple2$mcDC$sp;
.super Lscala/Tuple2;
.source "Tuple2.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final _1$mcD$sp:D

.field public final _2$mcC$sp:C


# direct methods
.method public constructor <init>(DC)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lscala/Tuple2$mcDC$sp;->_1$mcD$sp:D

    iput-char p3, p0, Lscala/Tuple2$mcDC$sp;->_2$mcC$sp:C

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _1()D
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_1$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_1()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcD$sp()D
    .locals 2

    iget-wide v0, p0, Lscala/Tuple2$mcDC$sp;->_1$mcD$sp:D

    return-wide v0
.end method

.method public _2()C
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_2$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic _2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_2()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public _2$mcC$sp()C
    .locals 1

    iget-char v0, p0, Lscala/Tuple2$mcDC$sp;->_2$mcC$sp:C

    return v0
.end method

.method public copy$default$1()D
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
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->copy$default$1$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->copy$default$1()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$1$mcD$sp()D
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
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_1()D

    move-result-wide v0

    return-wide v0
.end method

.method public copy$default$2()C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()C"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->copy$default$2$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->copy$default$2()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2$mcC$sp()C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()C"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_2()C

    move-result v0

    return v0
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
    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->swap$mcDC$sp()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public swap$mcDC$sp()Lscala/Tuple2;
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
    new-instance v0, Lscala/Tuple2$mcCD$sp;

    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_2()C

    move-result v1

    invoke-virtual {p0}, Lscala/Tuple2$mcDC$sp;->_1()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lscala/Tuple2$mcCD$sp;-><init>(CD)V

    return-object v0
.end method
