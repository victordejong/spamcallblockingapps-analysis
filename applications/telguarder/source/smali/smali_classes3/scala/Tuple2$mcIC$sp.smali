.class public Lscala/Tuple2$mcIC$sp;
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
.field public final _1$mcI$sp:I

.field public final _2$mcC$sp:C


# direct methods
.method public constructor <init>(IC)V
    .locals 0

    .line 20
    iput p1, p0, Lscala/Tuple2$mcIC$sp;->_1$mcI$sp:I

    iput-char p2, p0, Lscala/Tuple2$mcIC$sp;->_2$mcC$sp:C

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _1()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_1()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcI$sp()I
    .locals 1

    iget v0, p0, Lscala/Tuple2$mcIC$sp;->_1$mcI$sp:I

    return v0
.end method

.method public _2()C
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_2$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic _2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_2()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public _2$mcC$sp()C
    .locals 1

    iget-char v0, p0, Lscala/Tuple2$mcIC$sp;->_2$mcC$sp:C

    return v0
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
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->copy$default$1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->copy$default$1()I

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
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_1()I

    move-result v0

    return v0
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
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->copy$default$2$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->copy$default$2()C

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
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_2()C

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
    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->swap$mcIC$sp()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public swap$mcIC$sp()Lscala/Tuple2;
    .locals 3
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
    new-instance v0, Lscala/Tuple2$mcCI$sp;

    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_2()C

    move-result v1

    invoke-virtual {p0}, Lscala/Tuple2$mcIC$sp;->_1()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2$mcCI$sp;-><init>(CI)V

    return-object v0
.end method
