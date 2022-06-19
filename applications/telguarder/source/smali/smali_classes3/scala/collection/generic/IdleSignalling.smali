.class public final Lscala/collection/generic/IdleSignalling;
.super Ljava/lang/Object;
.source "Signalling.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001Q9Q!\u0001\u0002\t\u0002%\ta\"\u00133mKNKwM\\1mY&twM\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\u000c\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!AD%eY\u0016\u001c\u0016n\u001a8bY2LgnZ\n\u0003\u00179\u0001\"AC\u0008\n\u0005A\u0011!!\u0005#fM\u0006,H\u000e^*jO:\u000cG\u000e\\5oO\")!c\u0003C\u0001\'\u00051A(\u001b8jiz\"\u0012!\u0003"
.end annotation


# direct methods
.method public static abort()V
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0}, Lscala/collection/generic/IdleSignalling$;->abort()V

    return-void
.end method

.method public static indexFlag()I
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0}, Lscala/collection/generic/IdleSignalling$;->indexFlag()I

    move-result v0

    return v0
.end method

.method public static isAborted()Z
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0}, Lscala/collection/generic/IdleSignalling$;->isAborted()Z

    move-result v0

    return v0
.end method

.method public static setIndexFlag(I)V
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0, p0}, Lscala/collection/generic/IdleSignalling$;->setIndexFlag(I)V

    return-void
.end method

.method public static setIndexFlagIfGreater(I)V
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0, p0}, Lscala/collection/generic/IdleSignalling$;->setIndexFlagIfGreater(I)V

    return-void
.end method

.method public static setIndexFlagIfLesser(I)V
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0, p0}, Lscala/collection/generic/IdleSignalling$;->setIndexFlagIfLesser(I)V

    return-void
.end method

.method public static tag()I
    .locals 1

    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-virtual {v0}, Lscala/collection/generic/IdleSignalling$;->tag()I

    move-result v0

    return v0
.end method
