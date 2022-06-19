.class public Lscala/ref/WeakReference;
.super Ljava/lang/Object;
.source "WeakReference.scala"

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
    bytes = "\u0006\u0001i3A!\u0001\u0002\u0001\u000f\tiq+Z1l%\u00164WM]3oG\u0016T!a\u0001\u0003\u0002\u0007I,gMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\u0008\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005A\u0011VMZ3sK:\u001cWm\u0016:baB,\'\u000f\u0005\u0002\u0013\'1\u0001AA\u0002\u000b\u0001\t\u000b\u0007QCA\u0001U#\t1\u0012\u0002\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\u0008\u001d>$\u0008.\u001b8h\u0011!Q\u0002A!A!\u0002\u0013\t\u0012!\u0002<bYV,\u0007\u0002\u0003\u000f\u0001\u0005\u0003\u0005\u000b\u0011B\u000f\u0002\u000bE,X-^3\u0011\u00079q\u0012#\u0003\u0002 \u0005\tq!+\u001a4fe\u0016t7-Z)vKV,\u0007\"B\u0011\u0001\t\u0003\u0011\u0013A\u0002\u001fj]&$h\u0008F\u0002$I\u0015\u00022A\u0004\u0001\u0012\u0011\u0015Q\u0002\u00051\u0001\u0012\u0011\u0015a\u0002\u00051\u0001\u001e\u0011\u0015\t\u0003\u0001\"\u0001()\t\u0019\u0003\u0006C\u0003\u001bM\u0001\u0007\u0011\u0003C\u0004+\u0001\t\u0007I\u0011A\u0016\u0002\u0015UtG-\u001a:ms&tw-F\u0001-a\tic\u0007E\u0002/iUj\u0011a\u000c\u0006\u0003\u0007AR!!\r\u001a\u0002\t1\u000cgn\u001a\u0006\u0002g\u0005!!.\u0019<b\u0013\t\tq\u0006\u0005\u0002\u0013m\u0011Iq\u0007OA\u0001\u0002\u0003\u0015\tA\u0010\u0002\u0004?\u0012\n\u0004BB\u001d\u0001A\u0003%!(A\u0006v]\u0012,\'\u000f\\=j]\u001e\u0004\u0003GA\u001e>!\rqC\u0007\u0010\t\u0003%u\"\u0011b\u000e\u001d\u0002\u0002\u0003\u0005)\u0011\u0001 \u0012\u0005Y\tr!\u0002!\u0003\u0011\u0003\t\u0015!D,fC.\u0014VMZ3sK:\u001cW\r\u0005\u0002\u000f\u0005\u001a)\u0011A\u0001E\u0001\u0007N\u0011!)\u0003\u0005\u0006C\t#\t!\u0012\u000b\u0002\u0003\")qI\u0011C\u0001\u0011\u0006)\u0011\r\u001d9msV\u0011\u0011\n\u0014\u000b\u0003\u00156\u00032A\u0004\u0001L!\t\u0011B\nB\u0003\u0015\r\n\u0007Q\u0003C\u0003\u001b\r\u0002\u00071\nC\u0003P\u0005\u0012\u0005\u0001+A\u0004v]\u0006\u0004\u0008\u000f\\=\u0016\u0005E3FC\u0001*X!\rQ1+V\u0005\u0003)\u0012\u0011aa\u00149uS>t\u0007C\u0001\nW\t\u0015!bJ1\u0001\u0016\u0011\u0015Af\n1\u0001Z\u0003\t9(\u000fE\u0002\u000f\u0001U\u0003"
.end annotation


# instance fields
.field private final underlying:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lscala/ref/WeakReference;-><init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lscala/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function0$class;->$init$(Lscala/Function0;)V

    invoke-static {p0}, Lscala/ref/Reference$class;->$init$(Lscala/ref/Reference;)V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->$init$(Lscala/ref/ReferenceWrapper;)V

    .line 21
    new-instance v0, Lscala/ref/WeakReferenceWithWrapper;

    invoke-direct {v0, p1, p2, p0}, Lscala/ref/WeakReferenceWithWrapper;-><init>(Ljava/lang/Object;Lscala/ref/ReferenceQueue;Lscala/ref/WeakReference;)V

    .line 20
    iput-object v0, p0, Lscala/ref/WeakReference;->underlying:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static unapply(Lscala/ref/WeakReference;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/ref/WeakReference<",
            "TT;>;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/ref/WeakReference$;->MODULE$:Lscala/ref/WeakReference$;

    invoke-virtual {v0, p0}, Lscala/ref/WeakReference$;->unapply(Lscala/ref/WeakReference;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->apply(Lscala/ref/ReferenceWrapper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcB$sp()B
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcB$sp(Lscala/Function0;)B

    move-result v0

    return v0
.end method

.method public apply$mcC$sp()C
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcC$sp(Lscala/Function0;)C

    move-result v0

    return v0
.end method

.method public apply$mcD$sp()D
    .locals 2

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcD$sp(Lscala/Function0;)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcF$sp()F
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcF$sp(Lscala/Function0;)F

    move-result v0

    return v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcI$sp(Lscala/Function0;)I

    move-result v0

    return v0
.end method

.method public apply$mcJ$sp()J
    .locals 2

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcJ$sp(Lscala/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcS$sp()S
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcS$sp(Lscala/Function0;)S

    move-result v0

    return v0
.end method

.method public apply$mcV$sp()V
    .locals 0

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcV$sp(Lscala/Function0;)V

    return-void
.end method

.method public apply$mcZ$sp()Z
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Function0$class;->apply$mcZ$sp(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->clear(Lscala/ref/ReferenceWrapper;)V

    return-void
.end method

.method public enqueue()Z
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->enqueue(Lscala/ref/ReferenceWrapper;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 18
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

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->get(Lscala/ref/ReferenceWrapper;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
.end method

.method public isEnqueued()Z
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->isEnqueued(Lscala/ref/ReferenceWrapper;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lscala/ref/WeakReference;->self()Ljava/lang/ref/Reference;

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

    .line 18
    invoke-static {p0}, Lscala/ref/ReferenceWrapper$class;->self(Lscala/ref/ReferenceWrapper;)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Ljava/lang/ref/Reference;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lscala/ref/WeakReference;->underlying()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "+TT;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lscala/ref/WeakReference;->underlying:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
