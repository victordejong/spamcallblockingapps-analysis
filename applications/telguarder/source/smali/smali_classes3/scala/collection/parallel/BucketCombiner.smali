.class public abstract Lscala/collection/parallel/BucketCombiner;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/parallel/Combiner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        "Buck:",
        "Ljava/lang/Object;",
        "CombinerType:",
        "Lscala/collection/parallel/BucketCombiner<",
        "TElem;TTo;TBuck;TCombinerType;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Combiner<",
        "TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005-aAB\u0001\u0003\u0003\u0003\u0011\u0001B\u0001\u0008Ck\u000e\\W\r^\"p[\nLg.\u001a:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-F\u0003\n)}q\u0013gE\u0002\u0001\u00159\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011y\u0001C\u0005\u0010\u000e\u0003\tI!!\u0005\u0002\u0003\u0011\r{WNY5oKJ\u0004\"a\u0005\u000b\r\u0001\u00111Q\u0003\u0001EC\u0002]\u0011A!\u00127f[\u000e\u0001\u0011C\u0001\r\u001c!\tY\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007CA\u0006\u001d\u0013\tibAA\u0002B]f\u0004\"aE\u0010\u0005\r\u0001\u0002AQ1\u0001\u0018\u0005\t!v\u000e\u0003\u0005#\u0001\t\u0015\r\u0011\"\u0003$\u00031\u0011WoY6fi:,XNY3s+\u0005!\u0003CA\u0006&\u0013\t1cAA\u0002J]RD\u0001\u0002\u000b\u0001\u0003\u0002\u0003\u0006I\u0001J\u0001\u000eEV\u001c7.\u001a;ok6\u0014WM\u001d\u0011\t\u000b)\u0002A\u0011A\u0016\u0002\rqJg.\u001b;?)\taC\u0007\u0005\u0004\u0010\u0001IqR\u0006\r\t\u0003\'9\"Qa\u000c\u0001C\u0002]\u0011AAQ;dWB\u00111#\r\u0003\u0007e\u0001!)\u0019A\u001a\u0003\u0019\r{WNY5oKJ$\u0016\u0010]3\u0012\u0005aa\u0003\"\u0002\u0012*\u0001\u0004!\u0003b\u0002\u001c\u0001\u0001\u0004%\tbN\u0001\u0008EV\u001c7.\u001a;t+\u0005A$FA\u001dC!\rY!\u0008P\u0005\u0003w\u0019\u0011Q!\u0011:sCf\u00042!\u0010!.\u001b\u0005q$BA \u0005\u0003\u001diW\u000f^1cY\u0016L!!\u0011 \u0003\u001dUs\'o\u001c7mK\u0012\u0014UO\u001a4fe.\n1\t\u0005\u0002E\u00136\tQI\u0003\u0002G\u000f\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0003\u0011\u001a\t!\"\u00198o_R\u000cG/[8o\u0013\tQUIA\tv]\u000eDWmY6fIZ\u000b\'/[1oG\u0016Dq\u0001\u0014\u0001A\u0002\u0013EQ*A\u0006ck\u000e\\W\r^:`I\u0015\u000cHC\u0001(R!\tYq*\u0003\u0002Q\r\t!QK\\5u\u0011\u001d\u00116*!AA\u0002a\n1\u0001\u001f\u00132\u0011\u0019!\u0006\u0001)Q\u0005q\u0005A!-^2lKR\u001c\u0008\u0005C\u0004W\u0001\u0001\u0007I\u0011C\u0012\u0002\u0005MT\u0008b\u0002-\u0001\u0001\u0004%\t\"W\u0001\u0007gj|F%Z9\u0015\u00059S\u0006b\u0002*X\u0003\u0003\u0005\r\u0001\n\u0005\u00079\u0002\u0001\u000b\u0015\u0002\u0013\u0002\u0007MT\u0008\u0005C\u0003_\u0001\u0011\u00051%\u0001\u0003tSj,\u0007\"\u00021\u0001\t\u0003\t\u0017!B2mK\u0006\u0014H#\u0001(\t\u000b\r\u0004A\u0011\u00013\u0002\u001b\t,gm\u001c:f\u0007>l\'-\u001b8f+\r)\'N\u001c\u000b\u0003\u001d\u001aDQa\u001a2A\u0002!\u000cQa\u001c;iKJ\u0004Ba\u0004\tj[B\u00111C\u001b\u0003\u0006W\n\u0014\r\u0001\u001c\u0002\u0002\u001dF\u0011\u0001D\u0005\t\u0003\'9$Qa\u001c2C\u0002A\u0014QAT3x)>\u000c\"AH\u000e\t\u000bI\u0004A\u0011A:\u0002\u0019\u00054G/\u001a:D_6\u0014\u0017N\\3\u0016\u0007QD(\u0010\u0006\u0002Ok\")q-\u001da\u0001mB!q\u0002E<z!\t\u0019\u0002\u0010B\u0003lc\n\u0007A\u000e\u0005\u0002\u0014u\u0012)q.\u001db\u0001a\")A\u0010\u0001C\u0001{\u000691m\\7cS:,W#\u0002@\u0002\u0004\u0005\u001dAcA@\u0002\nA1q\u0002EA\u0001\u0003\u000b\u00012aEA\u0002\t\u0015Y7P1\u0001m!\r\u0019\u0012q\u0001\u0003\u0006_n\u0014\r\u0001\u001d\u0005\u0006On\u0004\ra "
.end annotation


# instance fields
.field private volatile transient _combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

.field private final bucketnumber:I

.field private buckets:[Lscala/collection/mutable/UnrolledBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TBuck;>;"
        }
    .end annotation
.end field

.field private sz:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 213
    iput p1, p0, Lscala/collection/parallel/BucketCombiner;->bucketnumber:I

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->$init$(Lscala/collection/parallel/Combiner;)V

    .line 216
    new-array p1, p1, [Lscala/collection/mutable/UnrolledBuffer;

    iput-object p1, p0, Lscala/collection/parallel/BucketCombiner;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lscala/collection/parallel/BucketCombiner;->sz:I

    return-void
.end method

.method private bucketnumber()I
    .locals 1

    .line 213
    iget v0, p0, Lscala/collection/parallel/BucketCombiner;->bucketnumber:I

    return v0
.end method


# virtual methods
.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;TElem;",
            "Lscala/collection/Seq<",
            "TElem;>;)",
            "Lscala/collection/generic/Growable<",
            "TElem;>;"
        }
    .end annotation

    .line 212
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;)",
            "Lscala/collection/generic/Growable<",
            "TElem;>;"
        }
    .end annotation

    .line 212
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public _combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 212
    iget-object v0, p0, Lscala/collection/parallel/BucketCombiner;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public _combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 212
    iput-object p1, p0, Lscala/collection/parallel/BucketCombiner;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public afterCombine(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TElem;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)V"
        }
    .end annotation

    return-void
.end method

.method public beforeCombine(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TElem;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)V"
        }
    .end annotation

    return-void
.end method

.method public buckets()[Lscala/collection/mutable/UnrolledBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TBuck;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/collection/parallel/BucketCombiner;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    return-object v0
.end method

.method public buckets_$eq([Lscala/collection/mutable/UnrolledBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TBuck;>;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lscala/collection/parallel/BucketCombiner;->buckets:[Lscala/collection/mutable/UnrolledBuffer;

    return-void
.end method

.method public canBeShared()Z
    .locals 1

    .line 212
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->canBeShared(Lscala/collection/parallel/Combiner;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lscala/collection/parallel/BucketCombiner;->bucketnumber()I

    move-result v0

    new-array v0, v0, [Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0, v0}, Lscala/collection/parallel/BucketCombiner;->buckets_$eq([Lscala/collection/mutable/UnrolledBuffer;)V

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lscala/collection/parallel/BucketCombiner;->sz_$eq(I)V

    return-void
.end method

.method public combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TElem;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    goto :goto_2

    .line 232
    :cond_0
    instance-of v0, p1, Lscala/collection/parallel/BucketCombiner;

    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {p0, p1}, Lscala/collection/parallel/BucketCombiner;->beforeCombine(Lscala/collection/parallel/Combiner;)V

    .line 235
    move-object v0, p1

    check-cast v0, Lscala/collection/parallel/BucketCombiner;

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-direct {p0}, Lscala/collection/parallel/BucketCombiner;->bucketnumber()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    invoke-virtual {p0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 240
    invoke-virtual {p0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {p0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0}, Lscala/collection/parallel/BucketCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;->concat(Lscala/collection/mutable/UnrolledBuffer;)Lscala/collection/mutable/UnrolledBuffer;

    goto :goto_1

    .line 241
    :cond_2
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p0}, Lscala/collection/parallel/BucketCombiner;->sz()I

    move-result v1

    invoke-virtual {v0}, Lscala/collection/parallel/BucketCombiner;->size()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lscala/collection/parallel/BucketCombiner;->sz_$eq(I)V

    .line 247
    invoke-virtual {p0, p1}, Lscala/collection/parallel/BucketCombiner;->afterCombine(Lscala/collection/parallel/Combiner;)V

    :goto_2
    return-object p0

    .line 250
    :cond_4
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "Unexpected combiner type."

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 212
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 212
    invoke-static {p0, p1}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport_$eq(Lscala/collection/parallel/Combiner;Lscala/collection/parallel/TaskSupport;)V

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
            "TTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TElem;TNewTo;>;"
        }
    .end annotation

    .line 212
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public resultWithTaskSupport()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .line 212
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->resultWithTaskSupport(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 219
    invoke-virtual {p0}, Lscala/collection/parallel/BucketCombiner;->sz()I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 212
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

    .line 212
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

    .line 212
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

    .line 212
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public sz()I
    .locals 1

    .line 217
    iget v0, p0, Lscala/collection/parallel/BucketCombiner;->sz:I

    return v0
.end method

.method public sz_$eq(I)V
    .locals 0

    .line 217
    iput p1, p0, Lscala/collection/parallel/BucketCombiner;->sz:I

    return-void
.end method
