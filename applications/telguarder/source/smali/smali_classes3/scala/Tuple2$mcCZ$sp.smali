.class public Lscala/Tuple2$mcCZ$sp;
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
.field public final _1$mcC$sp:C

.field public final _2$mcZ$sp:Z


# direct methods
.method public constructor <init>(CZ)V
    .locals 0

    .line 20
    iput-char p1, p0, Lscala/Tuple2$mcCZ$sp;->_1$mcC$sp:C

    iput-boolean p2, p0, Lscala/Tuple2$mcCZ$sp;->_2$mcZ$sp:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _1()C
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_1$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_1()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcC$sp()C
    .locals 1

    iget-char v0, p0, Lscala/Tuple2$mcCZ$sp;->_1$mcC$sp:C

    return v0
.end method

.method public bridge synthetic _2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_2()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public _2()Z
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_2$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public _2$mcZ$sp()Z
    .locals 1

    iget-boolean v0, p0, Lscala/Tuple2$mcCZ$sp;->_2$mcZ$sp:Z

    return v0
.end method

.method public copy$default$1()C
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
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->copy$default$1$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->copy$default$1()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$1$mcC$sp()C
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
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_1()C

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$2()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->copy$default$2()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->copy$default$2$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public copy$default$2$mcZ$sp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_2()Z

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
    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->swap$mcCZ$sp()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public swap$mcCZ$sp()Lscala/Tuple2;
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
    new-instance v0, Lscala/Tuple2$mcZC$sp;

    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_2()Z

    move-result v1

    invoke-virtual {p0}, Lscala/Tuple2$mcCZ$sp;->_1()C

    move-result v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2$mcZC$sp;-><init>(ZC)V

    return-object v0
.end method
