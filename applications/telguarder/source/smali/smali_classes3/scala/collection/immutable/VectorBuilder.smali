.class public final Lscala/collection/immutable/VectorBuilder;
.super Ljava/lang/Object;
.source "Vector.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/immutable/VectorPointer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/immutable/Vector<",
        "TA;>;>;",
        "Lscala/collection/immutable/VectorPointer<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t4A!\u0001\u0002\u0003\u0013\tia+Z2u_J\u0014U/\u001b7eKJT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0018\'\u0011\u00011b\u0004\u0013\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011\'U\u0001S\"A\t\u000b\u0005I!\u0011aB7vi\u0006\u0014G.Z\u0005\u0003)E\u0011qAQ;jY\u0012,\'\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!A!\u0012\u0005ii\u0002C\u0001\u0007\u001c\u0013\tabAA\u0004O_RD\u0017N\\4\u0011\u00051q\u0012BA\u0010\u0007\u0005\r\te.\u001f\t\u0004C\t*R\"\u0001\u0002\n\u0005\r\u0012!A\u0002,fGR|\'\u000fE\u0002\"K\u001dJ!A\n\u0002\u0003\u001bY+7\r^8s!>Lg\u000e^3sU\t)\u0002fK\u0001*!\tQs&D\u0001,\u0015\taS&A\u0005v]\u000eDWmY6fI*\u0011aFB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001\u0019,\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\u0006e\u0001!\taM\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003Q\u00022!\t\u0001\u0016\u0011\u001d1\u0004\u00011A\u0005\n]\n!B\u00197pG.Le\u000eZ3y+\u0005A\u0004C\u0001\u0007:\u0013\tQdAA\u0002J]RDq\u0001\u0010\u0001A\u0002\u0013%Q(\u0001\u0008cY>\u001c7.\u00138eKb|F%Z9\u0015\u0005y\n\u0005C\u0001\u0007@\u0013\t\u0001eA\u0001\u0003V]&$\u0008b\u0002\"<\u0003\u0003\u0005\r\u0001O\u0001\u0004q\u0012\n\u0004B\u0002#\u0001A\u0003&\u0001(A\u0006cY>\u001c7.\u00138eKb\u0004\u0003b\u0002$\u0001\u0001\u0004%IaN\u0001\u0003Y>Dq\u0001\u0013\u0001A\u0002\u0013%\u0011*\u0001\u0004m_~#S-\u001d\u000b\u0003})CqAQ$\u0002\u0002\u0003\u0007\u0001\u0008\u0003\u0004M\u0001\u0001\u0006K\u0001O\u0001\u0004Y>\u0004\u0003\"\u0002(\u0001\t\u0003y\u0015\u0001\u0003\u0013qYV\u001cH%Z9\u0015\u0005A\u000bV\"\u0001\u0001\t\u000bIk\u0005\u0019A\u000b\u0002\t\u0015dW-\u001c\u0005\u0006)\u0002!\t%V\u0001\u000eIAdWo\u001d\u0013qYV\u001cH%Z9\u0015\u0005A3\u0006\"B,T\u0001\u0004A\u0016A\u0001=t!\rI&,F\u0007\u0002\t%\u00111\u000c\u0002\u0002\u0010)J\u000cg/\u001a:tC\ndWm\u00148dK\")Q\u000c\u0001C\u0001=\u00061!/Z:vYR$\u0012\u0001\t\u0005\u0006A\u0002!\t!Y\u0001\u0006G2,\u0017M\u001d\u000b\u0002}\u0001"
.end annotation


# instance fields
.field private blockIndex:I

.field private depth:I

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private lo:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    .line 713
    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->display0_$eq([Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 714
    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->depth_$eq(I)V

    const/4 v0, 0x0

    .line 716
    iput v0, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    .line 717
    iput v0, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return-void
.end method

.method private blockIndex()I
    .locals 1

    .line 716
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    return v0
.end method

.method private blockIndex_$eq(I)V
    .locals 0

    .line 716
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    return-void
.end method

.method private lo()I
    .locals 1

    .line 717
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return v0
.end method

.method private lo_$eq(I)V
    .locals 0

    .line 717
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/VectorBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 720
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->display0()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 721
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    .line 722
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/VectorBuilder;->gotoNextBlockStartWritable(II)V

    .line 723
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorBuilder;->blockIndex_$eq(I)V

    const/4 v0, 0x0

    .line 724
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorBuilder;->lo_$eq(I)V

    .line 726
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v1

    aput-object p1, v0, v1

    .line 727
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/immutable/VectorBuilder;->lo_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/VectorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/VectorBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/immutable/VectorBuilder<",
            "TA;>;"
        }
    .end annotation

    .line 732
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/VectorBuilder;

    return-object p1
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    .line 745
    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->display0_$eq([Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 746
    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->depth_$eq(I)V

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorBuilder;->blockIndex_$eq(I)V

    .line 748
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorBuilder;->lo_$eq(I)V

    return-void
.end method

.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 708
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 0

    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public debug()V
    .locals 0

    .line 708
    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->debug(Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public depth()I
    .locals 1

    .line 708
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0

    .line 708
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->depth:I

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public final getElem(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TA;"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoFreshPosWritable1(III)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoNextBlockStart(II)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoNextBlockStartWritable(II)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPos(II)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPos(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable0(II)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable1(III)V
    .locals 0

    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;)V"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer<",
            "TU;>;I)V"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/immutable/Vector<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->result()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 735
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 737
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    new-instance v1, Lscala/collection/immutable/Vector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 739
    invoke-virtual {v1, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 740
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->depth()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sub-int/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Lscala/collection/immutable/Vector;->gotoPos(II)V

    :cond_1
    return-object v1
.end method

.method public sizeHint(I)V
    .locals 0

    .line 708
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public final stabilize(I)V
    .locals 0

    .line 708
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method
