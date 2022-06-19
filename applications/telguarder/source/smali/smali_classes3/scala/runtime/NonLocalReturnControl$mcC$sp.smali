.class public Lscala/runtime/NonLocalReturnControl$mcC$sp;
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
.field public final value$mcC$sp:C


# direct methods
.method public constructor <init>(Ljava/lang/Object;C)V
    .locals 0

    .line 14
    iput-char p2, p0, Lscala/runtime/NonLocalReturnControl$mcC$sp;->value$mcC$sp:C

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

.method public value()C
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcC$sp;->value$mcC$sp()C

    move-result v0

    return v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl$mcC$sp;->value()C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public value$mcC$sp()C
    .locals 1

    iget-char v0, p0, Lscala/runtime/NonLocalReturnControl$mcC$sp;->value$mcC$sp:C

    return v0
.end method
