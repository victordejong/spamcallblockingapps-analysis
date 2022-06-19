.class public Lscala/collection/mutable/WeakHashMap;
.super Lscala/collection/convert/Wrappers$JMapWrapper;
.source "WeakHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/convert/Wrappers$JMapWrapper<",
        "TA;TB;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001-4A!\u0001\u0002\u0001\u0013\tYq+Z1l\u0011\u0006\u001c\u0008.T1q\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007)QReE\u0002\u0001\u0017\u001d\u0002B\u0001\u0004\u000b\u0019I9\u0011Q\"\u0005\u0008\u0003\u001d=i\u0011\u0001B\u0005\u0003!\u0011\tqaY8om\u0016\u0014H/\u0003\u0002\u0013\'\u0005AqK]1qa\u0016\u00148O\u0003\u0002\u0011\t%\u0011QC\u0006\u0002\u000c\u00156\u000b\u0007o\u0016:baB,\'/\u0003\u0002\u0018\'\tAqK]1qa\u0016\u00148\u000f\u0005\u0002\u001a51\u0001A!B\u000e\u0001\u0005\u0004a\"!A!\u0012\u0005u\t\u0003C\u0001\u0010 \u001b\u00051\u0011B\u0001\u0011\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0008\u0012\n\u0005\r2!aA!osB\u0011\u0011$\n\u0003\u0006M\u0001\u0011\r\u0001\u0008\u0002\u0002\u0005B)A\u0002\u000b\r%U%\u0011\u0011F\u0006\u0002\u0010\u00156\u000b\u0007o\u0016:baB,\'\u000fT5lKB!1\u0006\u0001\r%\u001b\u0005\u0011\u0001\"B\u0017\u0001\t\u0003q\u0013A\u0002\u001fj]&$h\u0008F\u0001+\u0011\u0015\u0001\u0004\u0001\"\u00112\u0003\u0015)W\u000e\u001d;z+\u0005Qs!B\u001a\u0003\u0011\u0003!\u0014aC,fC.D\u0015m\u001d5NCB\u0004\"aK\u001b\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001c\u0014\u0007U:d\u0008E\u00029wuj\u0011!\u000f\u0006\u0003u\u0011\tqaZ3oKJL7-\u0003\u0002=s\t\tR*\u001e;bE2,W*\u00199GC\u000e$xN]=\u0011\u0005-\u0002\u0001C\u0001\u0010@\u0013\t\u0001eA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003.k\u0011\u0005!\tF\u00015\u0011\u0015!U\u0007b\u0001F\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\r1EKV\u000b\u0002\u000fB)\u0001\u0008\u0013&Q/&\u0011\u0011*\u000f\u0002\r\u0007\u0006t\')^5mI\u001a\u0013x.\u001c\t\u0003\u00172k\u0011!N\u0005\u0003\u001b:\u0013AaQ8mY&\u0011q*\u000f\u0002\u000e\u000f\u0016tW*\u00199GC\u000e$xN]=\u0011\ty\t6+V\u0005\u0003%\u001a\u0011a\u0001V;qY\u0016\u0014\u0004CA\rU\t\u0015Y2I1\u0001\u001d!\tIb\u000bB\u0003\'\u0007\n\u0007A\u0004\u0005\u0003,\u0001M+\u0006\"\u0002\u00196\t\u0003IVc\u0001.^?V\t1\u000c\u0005\u0003,\u0001qs\u0006CA\r^\t\u0015Y\u0002L1\u0001\u001d!\tIr\u000cB\u0003\'1\n\u0007A\u0004C\u0004bk\u0005\u0005I\u0011\u00022\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0002GB\u0011A-[\u0007\u0002K*\u0011amZ\u0001\u0005Y\u0006twMC\u0001i\u0003\u0011Q\u0017M^1\n\u0005),\'AB(cU\u0016\u001cG\u000f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lscala/collection/convert/Wrappers$JMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Map;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/WeakHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/WeakHashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/WeakHashMap$;->MODULE$:Lscala/collection/mutable/WeakHashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/WeakHashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/WeakHashMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/WeakHashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 41
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 41
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JMapWrapperLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->empty()Lscala/collection/mutable/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/convert/Wrappers$JMapWrapper;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->empty()Lscala/collection/mutable/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->empty()Lscala/collection/mutable/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WeakHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lscala/collection/mutable/WeakHashMap;

    invoke-direct {v0}, Lscala/collection/mutable/WeakHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WeakHashMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WeakHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WeakHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/WeakHashMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
