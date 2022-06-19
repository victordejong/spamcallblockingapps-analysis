.class public Lscala/collection/immutable/VectorIterator;
.super Lscala/collection/AbstractIterator;
.source "Vector.scala"

# interfaces
.implements Lscala/collection/immutable/VectorPointer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator<",
        "TA;>;",
        "Lscala/collection/immutable/VectorPointer<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001=4A!\u0001\u0002\u0001\u0013\tqa+Z2u_JLE/\u001a:bi>\u0014(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M!\u0001aC\u000e\u001f!\raQbD\u0007\u0002\t%\u0011a\u0002\u0002\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004\"\u0001E\t\r\u0001\u00111!\u0003\u0001CC\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\raAdD\u0005\u0003;\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\t\u0004?\u0001\u0012S\"\u0001\u0002\n\u0005\u0005\u0012!!\u0004,fGR|\'\u000fU8j]R,\'O\u000b\u0002\u0010G-\nA\u0005\u0005\u0002&U5\taE\u0003\u0002(Q\u0005IQO\\2iK\u000e\\W\r\u001a\u0006\u0003S\u0019\t!\"\u00198o_R\u000cG/[8o\u0013\tYcEA\tv]\u000eDWmY6fIZ\u000b\'/[1oG\u0016D\u0001\"\u000c\u0001\u0003\u0002\u0003\u0006IAL\u0001\u000c?N$\u0018M\u001d;J]\u0012,\u0007\u0010\u0005\u0002\u0016_%\u0011\u0001G\u0002\u0002\u0004\u0013:$\u0008\u0002\u0003\u001a\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0018\u0002\u0011\u0015tG-\u00138eKbDQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtDc\u0001\u001c8qA\u0019q\u0004A\u0008\t\u000b5\u001a\u0004\u0019\u0001\u0018\t\u000bI\u001a\u0004\u0019\u0001\u0018\t\u000fi\u0002\u0001\u0019!C\u0005w\u0005Q!\r\\8dW&sG-\u001a=\u0016\u00039Bq!\u0010\u0001A\u0002\u0013%a(\u0001\u0008cY>\u001c7.\u00138eKb|F%Z9\u0015\u0005}\u0012\u0005CA\u000bA\u0013\t\teA\u0001\u0003V]&$\u0008bB\"=\u0003\u0003\u0005\rAL\u0001\u0004q\u0012\n\u0004BB#\u0001A\u0003&a&A\u0006cY>\u001c7.\u00138eKb\u0004\u0003bB$\u0001\u0001\u0004%IaO\u0001\u0003Y>Dq!\u0013\u0001A\u0002\u0013%!*\u0001\u0004m_~#S-\u001d\u000b\u0003\u007f-Cqa\u0011%\u0002\u0002\u0003\u0007a\u0006\u0003\u0004N\u0001\u0001\u0006KAL\u0001\u0004Y>\u0004\u0003bB(\u0001\u0001\u0004%IaO\u0001\u0006K:$Gj\u001c\u0005\u0008#\u0002\u0001\r\u0011\"\u0003S\u0003%)g\u000e\u001a\'p?\u0012*\u0017\u000f\u0006\u0002@\'\"91\tUA\u0001\u0002\u0004q\u0003BB+\u0001A\u0003&a&\u0001\u0004f]\u0012du\u000e\t\u0005\u0006/\u0002!\t\u0001W\u0001\u0008Q\u0006\u001ch*\u001a=u+\u0005I\u0006CA\u000b[\u0013\tYfAA\u0004C_>dW-\u00198\t\u000fu\u0003\u0001\u0019!C\u00051\u0006Aq\u000c[1t\u001d\u0016DH\u000fC\u0004`\u0001\u0001\u0007I\u0011\u00021\u0002\u0019}C\u0017m\u001d(fqR|F%Z9\u0015\u0005}\n\u0007bB\"_\u0003\u0003\u0005\r!\u0017\u0005\u0007G\u0002\u0001\u000b\u0015B-\u0002\u0013}C\u0017m\u001d(fqR\u0004\u0003\"B3\u0001\t\u00031\u0017\u0001\u00028fqR$\u0012a\u0004\u0005\u0007Q\u0002!\t\u0001B\u001e\u0002+I,W.Y5oS:<W\t\\3nK:$8i\\;oi\"1!\u000e\u0001C\u0001\t-\u000cqB]3nC&t\u0017N\\4WK\u000e$xN]\u000b\u0002YB\u0019q$\\\u0008\n\u00059\u0014!A\u0002,fGR|\'\u000f"
.end annotation


# instance fields
.field private _hasNext:Z

.field private blockIndex:I

.field private depth:I

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private final endIndex:I

.field private endLo:I

.field private lo:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 659
    iput p2, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    .line 660
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    and-int/lit8 v0, p1, -0x20

    .line 664
    iput v0, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    and-int/lit8 p1, p1, 0x1f

    .line 665
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    .line 667
    sget-object p1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v0

    sub-int v0, p2, v0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lscala/math/package$;->min(II)I

    move-result p1

    iput p1, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    .line 671
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result p1

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v0

    add-int/2addr p1, v0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return-void
.end method

.method private _hasNext()Z
    .locals 1

    .line 671
    iget-boolean v0, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return v0
.end method

.method private _hasNext_$eq(Z)V
    .locals 0

    .line 671
    iput-boolean p1, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return-void
.end method

.method private blockIndex()I
    .locals 1

    .line 664
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    return v0
.end method

.method private blockIndex_$eq(I)V
    .locals 0

    .line 664
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    return-void
.end method

.method private endLo()I
    .locals 1

    .line 667
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    return v0
.end method

.method private endLo_$eq(I)V
    .locals 0

    .line 667
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    return-void
.end method

.method private lo()I
    .locals 1

    .line 665
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    return v0
.end method

.method private lo_$eq(I)V
    .locals 0

    .line 665
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    return-void
.end method


# virtual methods
.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 659
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 0

    .line 659
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public debug()V
    .locals 0

    .line 659
    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->debug(Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public depth()I
    .locals 1

    .line 659
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0

    .line 659
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->depth:I

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public final getElem(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TA;"
        }
    .end annotation

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoFreshPosWritable1(III)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoNextBlockStart(II)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoNextBlockStartWritable(II)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPos(II)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPos(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable0(II)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable1(III)V
    .locals 0

    .line 659
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 669
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->_hasNext()Z

    move-result v0

    return v0
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

    .line 659
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

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 674
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->_hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p0}, Lscala/collection/immutable/VectorIterator;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v1

    aget-object v0, v0, v1

    .line 677
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/immutable/VectorIterator;->lo_$eq(I)V

    .line 679
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v1

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->endLo()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 680
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v1

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 681
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v1

    const/16 v2, 0x20

    add-int/2addr v1, v2

    .line 682
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {p0, v1, v4}, Lscala/collection/immutable/VectorIterator;->gotoNextBlockStart(II)V

    .line 684
    invoke-direct {p0, v1}, Lscala/collection/immutable/VectorIterator;->blockIndex_$eq(I)V

    .line 685
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    iget v4, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4, v2}, Lscala/math/package$;->min(II)I

    move-result v1

    invoke-direct {p0, v1}, Lscala/collection/immutable/VectorIterator;->endLo_$eq(I)V

    .line 686
    invoke-direct {p0, v3}, Lscala/collection/immutable/VectorIterator;->lo_$eq(I)V

    goto :goto_0

    .line 688
    :cond_0
    invoke-direct {p0, v3}, Lscala/collection/immutable/VectorIterator;->_hasNext_$eq(Z)V

    :cond_1
    :goto_0
    return-object v0

    .line 674
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "reached iterator end"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0

    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remainingElementCount()I
    .locals 4

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 695
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v1, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v2

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    return v0
.end method

.method public remainingVector()Lscala/collection/immutable/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 701
    new-instance v0, Lscala/collection/immutable/Vector;

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v1

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v3

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 702
    invoke-virtual {v0, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    return-object v0
.end method

.method public final stabilize(I)V
    .locals 0

    .line 659
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method
