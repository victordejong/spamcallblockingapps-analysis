.class public Lscala/runtime/NonLocalReturnControl$mcF$sp;
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
.field public final value$mcF$sp:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;F)V
    .locals 0

    .line 14
    iput p2, p0, Lscala/runtime/NonLocalReturnControl$mcF$sp;->value$mcF$sp:F

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

.method public value()F
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcF$sp;->value$mcF$sp()F

    move-result v0

    return v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcF$sp;->value()F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public value$mcF$sp()F
    .locals 1

    iget v0, p0, Lscala/runtime/NonLocalReturnControl$mcF$sp;->value$mcF$sp:F

    return v0
.end method
