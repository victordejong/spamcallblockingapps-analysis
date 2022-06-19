.class public abstract Lscala/collection/AbstractSet;
.super Lscala/collection/AbstractIterable;
.source "Set.scala"

# interfaces
.implements Lscala/collection/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable<",
        "TA;>;",
        "Lscala/collection/Set<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\u000c7\r^*fi*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bD\n\u0004\u0001%I\u0002c\u0001\u0006\u000c\u001b5\t!!\u0003\u0002\r\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003\u001d=a\u0001\u0001B\u0003\u0011\u0001\t\u0007\u0011CA\u0001B#\t\u0011b\u0003\u0005\u0002\u0014)5\tA!\u0003\u0002\u0016\t\t9aj\u001c;iS:<\u0007CA\n\u0018\u0013\tABAA\u0002B]f\u00042A\u0003\u000e\u000e\u0013\tY\"AA\u0002TKRDQ!\u0008\u0001\u0005\u0002y\ta\u0001P5oSRtD#A\u0010\u0011\u0007)\u0001Q\u0002"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/GenSetLike$class;->$init$(Lscala/collection/GenSetLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->$init$(Lscala/collection/generic/GenericSetTemplate;)V

    invoke-static {p0}, Lscala/collection/GenSet$class;->$init$(Lscala/collection/GenSet;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/SetLike$class;->$init$(Lscala/collection/SetLike;)V

    invoke-static {p0}, Lscala/collection/Set$class;->$init$(Lscala/collection/Set;)V

    return-void
.end method


# virtual methods
.method public $amp(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp$tilde(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $bar(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$bar(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Subtractable$class;->$minus(Lscala/collection/generic/Subtractable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/generic/Subtractable$class;->$minus$minus(Lscala/collection/generic/Subtractable;Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SetLike$class;->$plus(Lscala/collection/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->$plus$plus(Lscala/collection/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)",
            "Lscala/Function1<",
            "TA;TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->andThen(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/Set;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/Set$class;->companion(Lscala/collection/Set;)Lscala/collection/generic/GenericCompanion;

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
            "TA;TA;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->diff(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public empty()Lscala/collection/GenSet;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->empty(Lscala/collection/generic/GenericSetTemplate;)Lscala/collection/GenSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->equals(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/GenSetLike$class;->hashCode(Lscala/collection/GenSetLike;)I

    move-result v0

    return v0
.end method

.method public intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->intersect(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->isEmpty(Lscala/collection/SetLike;)Z

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
            "Lscala/collection/Set<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/SetLike$class;->map(Lscala/collection/SetLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->newBuilder(Lscala/collection/SetLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/ParSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->parCombiner(Lscala/collection/SetLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/Set$class;->seq(Lscala/collection/Set;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->stringPrefix(Lscala/collection/SetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public subsets()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->subsets(Lscala/collection/SetLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public subsets(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->subsets(Lscala/collection/SetLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
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

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toBuffer(Lscala/collection/SetLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->toSeq()Lscala/collection/Seq;

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

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toSeq(Lscala/collection/SetLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toString(Lscala/collection/SetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->union(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/AbstractSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
