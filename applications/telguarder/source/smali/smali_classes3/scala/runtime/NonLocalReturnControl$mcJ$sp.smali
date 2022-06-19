.class public Lscala/runtime/NonLocalReturnControl$mcJ$sp;
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
.field public final value$mcJ$sp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 14
    iput-wide p2, p0, Lscala/runtime/NonLocalReturnControl$mcJ$sp;->value$mcJ$sp:J

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

.method public value()J
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcJ$sp;->value$mcJ$sp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcJ$sp;->value()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public value$mcJ$sp()J
    .locals 2

    iget-wide v0, p0, Lscala/runtime/NonLocalReturnControl$mcJ$sp;->value$mcJ$sp:J

    return-wide v0
.end method
