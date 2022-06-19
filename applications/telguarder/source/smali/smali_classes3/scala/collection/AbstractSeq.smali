.class public abstract Lscala/collection/AbstractSeq;
.super Lscala/collection/AbstractIterable;
.source "Seq.scala"

# interfaces
.implements Lscala/collection/Seq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable<",
        "TA;>;",
        "Lscala/collection/Seq<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\u000c7\r^*fc*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bD\n\u0004\u0001%I\u0002c\u0001\u0006\u000c\u001b5\t!!\u0003\u0002\r\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003\u001d=a\u0001\u0001\u0002\u0004\u0011\u0001\u0011\u0015\r!\u0005\u0002\u0002\u0003F\u0011!C\u0006\t\u0003\'Qi\u0011\u0001B\u0005\u0003+\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u0014/%\u0011\u0001\u0004\u0002\u0002\u0004\u0003:L\u0008c\u0001\u0006\u001b\u001b%\u00111D\u0001\u0002\u0004\'\u0016\u000c\u0008\"B\u000f\u0001\t\u0003q\u0012A\u0002\u001fj]&$h\u0008F\u0001 !\rQ\u0001!\u0004"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->$init$(Lscala/collection/GenSeqLike;)V

    invoke-static {p0}, Lscala/collection/GenSeq$class;->$init$(Lscala/collection/GenSeq;)V

    invoke-static {p0}, Lscala/collection/SeqLike$class;->$init$(Lscala/collection/SeqLike;)V

    invoke-static {p0}, Lscala/collection/Seq$class;->$init$(Lscala/collection/Seq;)V

    return-void
.end method


# virtual methods
.method public $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSeq;->andThen(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TC;>;)",
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "TC;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public combinations(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->combinations(Lscala/collection/SeqLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/Seq;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/Seq$class;->companion(Lscala/collection/Seq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Function1<",
            "TA;TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSlice(Lscala/collection/GenSeq;)Z
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

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->containsSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public diff(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->diff(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSeq;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->hashCode(Lscala/collection/GenSeqLike;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->indexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->indexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public indices()Lscala/collection/immutable/Range;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->indices(Lscala/collection/SeqLike;)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->intersect(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->isDefinedAt(Lscala/collection/GenSeqLike;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/AbstractSeq;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->isEmpty(Lscala/collection/SeqLike;)Z

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/GenSeqLike$class;->lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->lastIndexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->lastIndexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->lengthCompare(Lscala/collection/SeqLike;I)I

    move-result p1

    return p1
.end method

.method public lift()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/Option<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/PartialFunction$class;->lift(Lscala/PartialFunction;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public orElse(Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;)",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->padTo(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->parCombiner(Lscala/collection/SeqLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/GenSeq<",
            "TB;>;I",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/SeqLike$class;->patch(Lscala/collection/SeqLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public permutations()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->permutations(Lscala/collection/SeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->prefixLength(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->reverse(Lscala/collection/SeqLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->reverseIterator(Lscala/collection/SeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->reverseMap(Lscala/collection/SeqLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->segmentLength(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/Seq$class;->seq(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->size(Lscala/collection/SeqLike;)I

    move-result v0

    return v0
.end method

.method public sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->sortBy(Lscala/collection/SeqLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;)Z
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

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->startsWith(Lscala/collection/GenSeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
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

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->startsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->thisCollection(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->toCollection(Lscala/collection/SeqLike;Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toString(Lscala/collection/SeqLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public union(Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->union(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Seq<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->updated(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/AbstractSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/SeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->view(Lscala/collection/SeqLike;)Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/SeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/SeqView<",
            "TA;",
            "Lscala/collection/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->view(Lscala/collection/SeqLike;II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/AbstractSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
