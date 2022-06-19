.class public Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;
.super Lscala/collection/mutable/UnrolledBuffer;
.source "UnrolledParArrayCombiner.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)3Q!\u0001\u0002\u0001\u0005)\u0011a\u0003R8vE2LgnZ+oe>dG.\u001a3Ck\u001a4WM\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0008\u0011\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003%\tQa]2bY\u0006,\"aC\n\u0014\u0005\u0001a\u0001cA\u0007\u0010#5\taB\u0003\u0002\u0004\r%\u0011\u0001C\u0004\u0002\u000f+:\u0014x\u000e\u001c7fI\n+hMZ3s!\t\u00112\u0003\u0004\u0001\u0005\u000bQ\u0001!\u0019\u0001\u000c\u0003\u0003Q\u001b\u0001!\u0005\u0002\u00187A\u0011\u0001$G\u0007\u0002\u0011%\u0011!\u0004\u0003\u0002\u0008\u001d>$\u0008.\u001b8h!\tAB$\u0003\u0002\u001e\u0011\t\u0019\u0011I\\=\t\u0013}\u0001!\u0011!Q\u0001\u000c\u00012\u0013!\u0001;\u0011\u0007\u0005\"\u0013#D\u0001#\u0015\t\u0019\u0003\"A\u0004sK\u001adWm\u0019;\n\u0005\u0015\u0012#\u0001C\"mCN\u001cH+Y4\n\u0005\u001dz\u0011a\u0001;bO\")\u0011\u0006\u0001C\u0001U\u00051A(\u001b8jiz\"\u0012a\u000b\u000b\u0003Y9\u00022!\u000c\u0001\u0012\u001b\u0005\u0011\u0001\"B\u0010)\u0001\u0008\u0001\u0003\"\u0002\u0019\u0001\t\u0003\n\u0014AD2bY\u000etU\r\u001f;MK:<G\u000f\u001b\u000b\u0003eU\u0002\"\u0001G\u001a\n\u0005QB!aA%oi\")ag\u000ca\u0001e\u0005\u00111O\u001f\u0005\u0006q\u0001!\t&O\u0001\u000c]\u0016<XK\u001c:pY2,G-F\u0001;!\rYt)\u0005\u0008\u0003y\u0015s!!\u0010#\u000f\u0005y\u001aeBA C\u001b\u0005\u0001%BA!\u0016\u0003\u0019a$o\\8u}%\t\u0011\"\u0003\u0002\u0008\u0011%\u00111AB\u0005\u0003\r:\ta\"\u00168s_2dW\r\u001a\"vM\u001a,\'/\u0003\u0002I\u0013\nAQK\u001c:pY2,GM\u0003\u0002G\u001d\u0001"
.end annotation


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    return-void
.end method


# virtual methods
.method public calcNextLength(I)I
    .locals 1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public newUnrolled()Lscala/collection/mutable/UnrolledBuffer$Unrolled;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/UnrolledBuffer$Unrolled<",
            "TT;>;"
        }
    .end annotation

    .line 26
    new-instance v6, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-super {p0}, Lscala/collection/mutable/UnrolledBuffer;->tag()Lscala/reflect/ClassTag;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    invoke-super {p0}, Lscala/collection/mutable/UnrolledBuffer;->tag()Lscala/reflect/ClassTag;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;-><init>(ILjava/lang/Object;Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/mutable/UnrolledBuffer;Lscala/reflect/ClassTag;)V

    return-object v6
.end method
