.class public Lscala/Tuple1$mcI$sp;
.super Lscala/Tuple1;
.source "Tuple1.scala"

# interfaces
.implements Lscala/Product1$mcI$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Tuple1<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Product1$mcI$sp;"
    }
.end annotation


# instance fields
.field public final _1$mcI$sp:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    iput p1, p0, Lscala/Tuple1$mcI$sp;->_1$mcI$sp:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lscala/Tuple1;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lscala/Product1$mcI$sp$class;->$init$(Lscala/Product1$mcI$sp;)V

    return-void
.end method


# virtual methods
.method public _1()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcI$sp;->_1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcI$sp;->_1()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcI$sp()I
    .locals 1

    iget v0, p0, Lscala/Tuple1$mcI$sp;->_1$mcI$sp:I

    return v0
.end method

.method public copy$default$1()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcI$sp;->copy$default$1$mcI$sp()I

    move-result v0

    return v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcI$sp;->copy$default$1()I

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
            ">()I"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcI$sp;->_1()I

    move-result v0

    return v0
.end method

.method public specInstance$()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
