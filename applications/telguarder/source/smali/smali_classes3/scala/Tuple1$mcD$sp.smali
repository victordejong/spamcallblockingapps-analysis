.class public Lscala/Tuple1$mcD$sp;
.super Lscala/Tuple1;
.source "Tuple1.scala"

# interfaces
.implements Lscala/Product1$mcD$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/Tuple1<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Product1$mcD$sp;"
    }
.end annotation


# instance fields
.field public final _1$mcD$sp:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lscala/Tuple1$mcD$sp;->_1$mcD$sp:D

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lscala/Tuple1;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lscala/Product1$mcD$sp$class;->$init$(Lscala/Product1$mcD$sp;)V

    return-void
.end method


# virtual methods
.method public _1()D
    .locals 2

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcD$sp;->_1$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic _1()Ljava/lang/Object;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcD$sp;->_1()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public _1$mcD$sp()D
    .locals 2

    iget-wide v0, p0, Lscala/Tuple1$mcD$sp;->_1$mcD$sp:D

    return-wide v0
.end method

.method public copy$default$1()D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">()D"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcD$sp;->copy$default$1$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic copy$default$1()Ljava/lang/Object;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcD$sp;->copy$default$1()D

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
            ">()D"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lscala/Tuple1$mcD$sp;->_1()D

    move-result-wide v0

    return-wide v0
.end method

.method public specInstance$()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
