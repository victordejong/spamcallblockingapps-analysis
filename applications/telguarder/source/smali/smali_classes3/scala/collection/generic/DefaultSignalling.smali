.class public Lscala/collection/generic/DefaultSignalling;
.super Ljava/lang/Object;
.source "Signalling.scala"

# interfaces
.implements Lscala/collection/generic/VolatileAbort;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001E2A!\u0001\u0002\u0001\u0013\t\tB)\u001a4bk2$8+[4oC2d\u0017N\\4\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\n\u0005\u0001)q!\u0003\u0005\u0002\u000c\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u0004\"a\u0004\t\u000e\u0003\tI!!\u0005\u0002\u0003\u0015MKwM\\1mY&tw\r\u0005\u0002\u0010\'%\u0011AC\u0001\u0002\u000e->d\u0017\r^5mK\u0006\u0013wN\u001d;\t\u000bY\u0001A\u0011A\u000c\u0002\rqJg.\u001b;?)\u0005A\u0002CA\u0008\u0001\u0011\u0015Q\u0002\u0001\"\u0001\u001c\u0003%Ig\u000eZ3y\r2\u000cw-F\u0001\u001d!\tYQ$\u0003\u0002\u001f\r\t\u0019\u0011J\u001c;\t\u000b\u0001\u0002A\u0011A\u0011\u0002\u0019M,G/\u00138eKb4E.Y4\u0015\u0005\t*\u0003CA\u0006$\u0013\t!cA\u0001\u0003V]&$\u0008\"\u0002\u0014 \u0001\u0004a\u0012!\u00014\t\u000b!\u0002A\u0011A\u0015\u0002+M,G/\u00138eKb4E.Y4JM\u001e\u0013X-\u0019;feR\u0011!E\u000b\u0005\u0006M\u001d\u0002\r\u0001\u0008\u0005\u0006Y\u0001!\t!L\u0001\u0015g\u0016$\u0018J\u001c3fq\u001ac\u0017mZ%g\u0019\u0016\u001c8/\u001a:\u0015\u0005\tr\u0003\"\u0002\u0014,\u0001\u0004a\u0002\"\u0002\u0019\u0001\t\u0003Y\u0012a\u0001;bO\u0002"
.end annotation


# instance fields
.field private volatile scala$collection$generic$VolatileAbort$$abortflag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/VolatileAbort$class;->$init$(Lscala/collection/generic/VolatileAbort;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 98
    invoke-static {p0}, Lscala/collection/generic/VolatileAbort$class;->abort(Lscala/collection/generic/VolatileAbort;)V

    return-void
.end method

.method public indexFlag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .line 98
    invoke-static {p0}, Lscala/collection/generic/VolatileAbort$class;->isAborted(Lscala/collection/generic/VolatileAbort;)Z

    move-result v0

    return v0
.end method

.method public scala$collection$generic$VolatileAbort$$abortflag()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lscala/collection/generic/DefaultSignalling;->scala$collection$generic$VolatileAbort$$abortflag:Z

    return v0
.end method

.method public scala$collection$generic$VolatileAbort$$abortflag_$eq(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lscala/collection/generic/DefaultSignalling;->scala$collection$generic$VolatileAbort$$abortflag:Z

    return-void
.end method

.method public setIndexFlag(I)V
    .locals 0

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    return-void
.end method

.method public tag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
