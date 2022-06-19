.class public Lscala/ref/PhantomReference;
.super Ljava/lang/Object;
.source "PhantomReference.scala"

# interfaces
.implements Lscala/ref/ReferenceWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/ref/ReferenceWrapper<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q2A!\u0001\u0002\u0001\u000f\t\u0001\u0002\u000b[1oi>l\'+\u001a4fe\u0016t7-\u001a\u0006\u0003\u0007\u0011\t1A]3g\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0011M\u00192\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u001d=\tR\"\u0001\u0002\n\u0005A\u0011!\u0001\u0005*fM\u0016\u0014XM\\2f/J\u000c\u0007\u000f]3s!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005!\u0016C\u0001\u000c\n!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007\u0002\u0003\u000e\u0001\u0005\u0003\u0005\u000b\u0011B\t\u0002\u000bY\u000cG.^3\t\u0011q\u0001!\u0011!Q\u0001\nu\tQ!];fk\u0016\u00042A\u0004\u0010\u0012\u0013\ty\"A\u0001\u0008SK\u001a,\'/\u001a8dKF+X-^3\t\u000b\u0005\u0002A\u0011\u0001\u0012\u0002\rqJg.\u001b;?)\r\u0019C%\n\t\u0004\u001d\u0001\t\u0002\"\u0002\u000e!\u0001\u0004\t\u0002\"\u0002\u000f!\u0001\u0004i\u0002bB\u0014\u0001\u0005\u0004%\t\u0001K\u0001\u000bk:$WM\u001d7zS:<W#A\u00151\u0005)\u001a\u0004cA\u00162e5\tAF\u0003\u0002\u0004[)\u0011afL\u0001\u0005Y\u0006twMC\u00011\u0003\u0011Q\u0017M^1\n\u0005\u0005a\u0003C\u0001\n4\t%!T\'!A\u0001\u0002\u000b\u00051HA\u0002`IEBaA\u000e\u0001!\u0002\u00139\u0014aC;oI\u0016\u0014H._5oO\u0002\u0002$\u0001\u000f\u001e\u0011\u0007-\n\u0014\u0008\u0005\u0002\u0013u\u0011IA\'NA\u0001\u0002\u0003\u0015\taO\t\u0003-E\u0001"
.end annotation


# instance fields
.field private final underlying:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lscala/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function0$class;->$init$(Lscala/Function0;)V

    invoke-static {p0}, Lscala/ref/Reference$class;->$init$(Lscala/ref/Reference;)V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->$init$(Lscala/ref/ReferenceWrapper;)V

    .line 17
    new-instance v0, Lscala/ref/PhantomReferenceWithWrapper;

    invoke-direct {v0, p1, p2, p0}, Lscala/ref/PhantomReferenceWithWrapper;-><init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;Lscala/ref/PhantomReference;)V

    .line 16
    iput-object v0, p0, Lscala/ref/PhantomReference;->underlying:Ljava/lang/ref/PhantomReference;

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->apply(Lscala/ref/ReferenceWrapper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcB$sp()B
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcB$sp(Lscala/Function0;)B

    move-result v0

    return v0
.end method

.method public apply$mcC$sp()C
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcC$sp(Lscala/Function0;)C

    move-result v0

    return v0
.end method

.method public apply$mcD$sp()D
    .locals 2

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcD$sp(Lscala/Function0;)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcF$sp()F
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcF$sp(Lscala/Function0;)F

    move-result v0

    return v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcI$sp(Lscala/Function0;)I

    move-result v0

    return v0
.end method

.method public apply$mcJ$sp()J
    .locals 2

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcJ$sp(Lscala/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcS$sp()S
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcS$sp(Lscala/Function0;)S

    move-result v0

    return v0
.end method

.method public apply$mcV$sp()V
    .locals 0

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcV$sp(Lscala/Function0;)V

    return-void
.end method

.method public apply$mcZ$sp()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Function0$class;->apply$mcZ$sp(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->clear(Lscala/ref/ReferenceWrapper;)V

    return-void
.end method

.method public enqueue()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->enqueue(Lscala/ref/ReferenceWrapper;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->get(Lscala/ref/ReferenceWrapper;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public isEnqueued()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->isEnqueued(Lscala/ref/ReferenceWrapper;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lscala/ref/PhantomReference;->self()Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public self()Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference<",
            "+TT;>;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->self(Lscala/ref/ReferenceWrapper;)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/lang/ref/PhantomReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/PhantomReference<",
            "+TT;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lscala/ref/PhantomReference;->underlying:Ljava/lang/ref/PhantomReference;

    return-object v0
.end method

.method public bridge synthetic underlying()Ljava/lang/ref/Reference;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lscala/ref/PhantomReference;->underlying()Ljava/lang/ref/PhantomReference;

    move-result-object v0

    return-object v0
.end method
