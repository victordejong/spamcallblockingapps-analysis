.class public Lscala/runtime/NonLocalReturnControl$mcV$sp;
.super Lscala/runtime/NonLocalReturnControl;
.source "NonLocalReturnControl.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/NonLocalReturnControl<",
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation


# instance fields
.field public final value$mcV$sp:Lscala/runtime/BoxedUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 14
    iput-object p2, p0, Lscala/runtime/NonLocalReturnControl$mcV$sp;->value$mcV$sp:Lscala/runtime/BoxedUnit;

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

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public value()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcV$sp;->value$mcV$sp()V

    return-void
.end method

.method public value$mcV$sp()V
    .locals 0

    return-void
.end method
