.class public Lscala/runtime/NonLocalReturnControl$mcD$sp;
.super Lscala/runtime/NonLocalReturnControl;
.source "NonLocalReturnControl.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/NonLocalReturnControl<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final value$mcD$sp:D


# direct methods
.method public constructor <init>(Ljava/lang/Object;D)V
    .locals 0

    .line 14
    iput-wide p2, p0, Lscala/runtime/NonLocalReturnControl$mcD$sp;->value$mcD$sp:D

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public specInstance$()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public value()D
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcD$sp;->value$mcD$sp()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcD$sp;->value()D

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public value$mcD$sp()D
    .locals 2

    iget-wide v0, p0, Lscala/runtime/NonLocalReturnControl$mcD$sp;->value$mcD$sp:D

    return-wide v0
.end method
