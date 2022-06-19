.class public Lscala/collection/immutable/WrappedString;
.super Lscala/collection/AbstractSeq;
.source "WrappedString.scala"

# interfaces
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/collection/immutable/StringLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/IndexedSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/StringLike<",
        "Lscala/collection/immutable/WrappedString;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u001d4A!\u0001\u0002\u0001\u0013\tiqK]1qa\u0016$7\u000b\u001e:j]\u001eT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011\u0003\u0002\u0001\u000b%Y\u00012a\u0003\u0007\u000f\u001b\u0005!\u0011BA\u0007\u0005\u0005-\t%m\u001d;sC\u000e$8+Z9\u0011\u0005=\u0001R\"\u0001\u0004\n\u0005E1!\u0001B\"iCJ\u00042a\u0005\u000b\u000f\u001b\u0005\u0011\u0011BA\u000b\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0004\']I\u0012B\u0001\r\u0003\u0005)\u0019FO]5oO2K7.\u001a\t\u0003\'\u0001A\u0001b\u0007\u0001\u0003\u0006\u0004%\t\u0001H\u0001\u0005g\u0016dg-F\u0001\u001e!\tq\u0012E\u0004\u0002\u0010?%\u0011\u0001EB\u0001\u0007!J,G-\u001a4\n\u0005\t\u001a#AB*ue&twM\u0003\u0002!\r!AQ\u0005\u0001B\u0001B\u0003%Q$A\u0003tK24\u0007\u0005C\u0003(\u0001\u0011\u0005\u0001&\u0001\u0004=S:LGO\u0010\u000b\u00033%BQa\u0007\u0014A\u0002uAaa\u000b\u0001!\n#b\u0013A\u0004;iSN\u001cu\u000e\u001c7fGRLwN\\\u000b\u00023!1a\u0006\u0001Q\u0005R=\nA\u0002^8D_2dWm\u0019;j_:$\"!\u0007\u0019\t\u000bEj\u0003\u0019A\r\u0002\tI,\u0007O\u001d\u0005\u0007g\u0001\u0001K\u0011\u000b\u001b\u0002\u00159,wOQ;jY\u0012,\'/F\u00016!\u00111\u0014HD\r\u000e\u0003]R!\u0001\u000f\u0003\u0002\u000f5,H/\u00192mK&\u0011!h\u000e\u0002\u0008\u0005VLG\u000eZ3s\u0011\u0015a\u0004\u0001\"\u0011>\u0003\u0015\u0019H.[2f)\rIbh\u0011\u0005\u0006\u007fm\u0002\r\u0001Q\u0001\u0005MJ|W\u000e\u0005\u0002\u0010\u0003&\u0011!I\u0002\u0002\u0004\u0013:$\u0008\"\u0002#<\u0001\u0004\u0001\u0015!B;oi&d\u0007\"\u0002$\u0001\t\u0003:\u0015A\u00027f]\u001e$\u0008.F\u0001A\u0011\u0015I\u0005\u0001\"\u0011K\u0003!!xn\u0015;sS:<G#A\u000f)\t\u0001au*\u0015\t\u0003\u001f5K!A\u0014\u0004\u0003+\u0011,\u0007O]3dCR,G-\u00138iKJLG/\u00198dK\u0006\n\u0001+A\u0019J]\",\'/\u001b;!MJ|W\u000eI*ue&tw\rT5lK\u0002Jgn\u001d;fC\u0012\u0004sN\u001a\u0011Xe\u0006\u0004\u0008/\u001a3TiJLgn\u001a\u0018\"\u0003I\u000baA\r\u00182c9\u0002t!\u0002+\u0003\u0011\u0003)\u0016!D,sCB\u0004X\rZ*ue&tw\r\u0005\u0002\u0014-\u001a)\u0011A\u0001E\u0001/N\u0011a\u000b\u0017\t\u0003\u001feK!A\u0017\u0004\u0003\r\u0005s\u0017PU3g\u0011\u00159c\u000b\"\u0001])\u0005)\u0006\"\u00020W\t\u0007y\u0016\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW#\u00011\u0011\u000b\u0005$\u0017DD\r\u000e\u0003\tT!a\u0019\u0003\u0002\u000f\u001d,g.\u001a:jG&\u0011QM\u0019\u0002\r\u0007\u0006t\')^5mI\u001a\u0013x.\u001c\u0005\u0006gY#\t\u0001\u000e"
.end annotation


# instance fields
.field private final self:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lscala/collection/immutable/WrappedString;->self:Ljava/lang/String;

    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->$init$(Lscala/collection/immutable/StringLike;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/WrappedString;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $times(I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->$times(Lscala/collection/immutable/StringLike;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)C
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->apply(Lscala/collection/immutable/StringLike;I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public capitalize()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->capitalize(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->companion(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->compare(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldRight(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public format(Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->format(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->formatLocal(Lscala/collection/immutable/StringLike;Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->self()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public lines()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->lines(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesIterator(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linesWithSeparators()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->mkString(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public r()Lscala/util/matching/Regex;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->r(Lscala/collection/immutable/StringLike;)Lscala/util/matching/Regex;

    move-result-object v0

    return-object v0
.end method

.method public r(Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/util/matching/Regex;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->r(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Lscala/util/matching/Regex;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replaceAllLiterally(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->replaceAllLiterally(Lscala/collection/immutable/StringLike;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public self()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lscala/collection/immutable/WrappedString;->self:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/WrappedString;->slice(II)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/immutable/WrappedString;
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-le p2, p1, :cond_3

    .line 43
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/WrappedString;

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->length()I

    move-result v0

    if-le p2, v0, :cond_2

    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->length()I

    move-result p2

    .line 47
    :cond_2
    new-instance v0, Lscala/collection/immutable/WrappedString;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->repr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/WrappedString;

    invoke-virtual {v1, v2}, Lscala/Predef$;->unwrapString(Lscala/collection/immutable/WrappedString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_3
    :goto_0
    new-instance p1, Lscala/collection/immutable/WrappedString;

    const-string p2, ""

    invoke-direct {p1, p2}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->span(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split(C)[Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->split(Lscala/collection/immutable/StringLike;C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public split([C)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->split(Lscala/collection/immutable/StringLike;[C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->splitAt(Lscala/collection/IndexedSeqOptimized;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stripLineEnd()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->stripLineEnd(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stripMargin()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stripMargin(C)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stripPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripPrefix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stripSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripSuffix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/immutable/WrappedString;
    .locals 0

    return-object p0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->toArray(Lscala/collection/immutable/StringLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBoolean()Z
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toBoolean(Lscala/collection/immutable/StringLike;)Z

    move-result v0

    return v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toByte()B
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toByte(Lscala/collection/immutable/StringLike;)B

    move-result v0

    return v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/immutable/WrappedString;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/immutable/WrappedString;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/immutable/WrappedString;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/immutable/WrappedString;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;
    .locals 0

    return-object p1
.end method

.method public toDouble()D
    .locals 2

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toDouble(Lscala/collection/immutable/StringLike;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toFloat(Lscala/collection/immutable/StringLike;)F

    move-result v0

    return v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->toIndexedSeq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toInt()I
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toInt(Lscala/collection/immutable/StringLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toLong()J
    .locals 2

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toLong(Lscala/collection/immutable/StringLike;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toShort()S
    .locals 1

    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toShort(Lscala/collection/immutable/StringLike;)S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->self()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/WrappedString;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/WrappedString;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
