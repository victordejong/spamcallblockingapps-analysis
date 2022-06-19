.class public abstract Lscala/collection/parallel/immutable/HashSetCombiner;
.super Lscala/collection/parallel/BucketCombiner;
.source "ParHashSet.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/immutable/HashSetCombiner$CreateTrie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/BucketCombiner<",
        "TT;",
        "Lscala/collection/parallel/immutable/ParHashSet<",
        "TT;>;",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/immutable/HashSetCombiner<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005-cAB\u0001\u0003\u0003\u0003\u0011!BA\u0008ICND7+\u001a;D_6\u0014\u0017N\\3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t\'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0016\u0005-\u00112C\u0001\u0001\r!\u0019ia\u0002E\u000f\u001bC5\tA!\u0003\u0002\u0010\t\tq!)^2lKR\u001cu.\u001c2j]\u0016\u0014\u0008CA\t\u0013\u0019\u0001!Qa\u0005\u0001C\u0002U\u0011\u0011\u0001V\u0002\u0001#\t1\"\u0004\u0005\u0002\u001815\t\u0001\"\u0003\u0002\u001a\u0011\t9aj\u001c;iS:<\u0007CA\u000c\u001c\u0013\ta\u0002BA\u0002B]f\u00042AH\u0010\u0011\u001b\u0005\u0011\u0011B\u0001\u0011\u0003\u0005)\u0001\u0016M\u001d%bg\"\u001cV\r\u001e\t\u0004=\u0001\u0001\u0002\"B\u0012\u0001\t\u0003!\u0013A\u0002\u001fj]&$h\u0008F\u0001\"\u0011\u001d1\u0003A1A\u0005\u0002\u001d\n\u0011\"Z7qif$&/[3\u0016\u0003!\u00022!K\u0016\u0011\u001b\u0005Q#BA\u0002\u0007\u0013\ta#FA\u0004ICND7+\u001a;\t\r9\u0002\u0001\u0015!\u0003)\u0003))W\u000e\u001d;z)JLW\r\t\u0005\u0006a\u0001!\t!M\u0001\tIAdWo\u001d\u0013fcR\u0011!gM\u0007\u0002\u0001!)Ag\u000ca\u0001!\u0005!Q\r\\3n\u0011\u00151\u0004\u0001\"\u00018\u0003\u0019\u0011Xm];miR\tQD\u0002\u0003:\u0001\u0001Q$AC\"sK\u0006$X\r\u0016:jKN\u0019\u0001h\u000f \u0011\u0005]a\u0014BA\u001f\t\u0005\u0019\te.\u001f*fMB!QbP!E\u0013\t\u0001EA\u0001\u0003UCN\\\u0007CA\u000cC\u0013\t\u0019\u0005B\u0001\u0003V]&$\u0008C\u0001\u001a9\u0011!1\u0005H!A!\u0002\u00139\u0015!\u00022vG.\u001c\u0008cA\u000cI\u0015&\u0011\u0011\n\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004\u0017fSbB\u0001\'W\u001d\tiEK\u0004\u0002O\':\u0011qJU\u0007\u0002!*\u0011\u0011\u000bF\u0001\u0007yI|w\u000e\u001e \n\u0003%I!a\u0002\u0005\n\u0005U3\u0011aB7vi\u0006\u0014G.Z\u0005\u0003/b\u000ba\"\u00168s_2dW\r\u001a\"vM\u001a,\'O\u0003\u0002V\r%\u0011!l\u0017\u0002\t+:\u0014x\u000e\u001c7fI*\u0011q\u000b\u0017\u0005\t;b\u0012\t\u0011)A\u0005=\u0006!!o\\8u!\r9\u0002\n\u000b\u0005\tAb\u0012\t\u0011)A\u0005C\u00061qN\u001a4tKR\u0004\"a\u00062\n\u0005\rD!aA%oi\"AQ\r\u000fB\u0001B\u0003%\u0011-A\u0004i_^l\u0017M\\=\t\u000b\rBD\u0011A4\u0015\u000b\u0011C\u0017N[6\t\u000b\u00193\u0007\u0019A$\t\u000bu3\u0007\u0019\u00010\t\u000b\u00014\u0007\u0019A1\t\u000b\u00154\u0007\u0019A1\t\u000fYB\u0004\u0019!C\u0001[V\t\u0011\tC\u0004pq\u0001\u0007I\u0011\u00019\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000f\u0006\u0002Bc\"9!O\\A\u0001\u0002\u0004\t\u0015a\u0001=%c!1A\u000f\u000fQ!\n\u0005\u000bqA]3tk2$\u0008\u0005C\u0003wq\u0011\u0005q/\u0001\u0003mK\u00064GCA!y\u0011\u0015IX\u000f1\u0001{\u0003\u0011\u0001(/\u001a<\u0011\u0007]Y\u0018)\u0003\u0002}\u0011\t1q\n\u001d;j_:DQA \u001d\u0005\n}\u000c!b\u0019:fCR,GK]5f)\rA\u0013\u0011\u0001\u0005\u0007\u0003\u0007i\u0008\u0019\u0001&\u0002\u000b\u0015dW-\\:\t\u000f\u0005\u001d\u0001\u0008\"\u0001\u0002\n\u0005)1\u000f\u001d7jiV\u0011\u00111\u0002\t\u0005S\u00055A)C\u0002\u0002\u0010)\u0012A\u0001T5ti\"9\u00111\u0003\u001d\u0005\u0002\u0005U\u0011AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!a\u0006\u0011\u0007]\tI\"C\u0002\u0002\u001c!\u0011qAQ8pY\u0016\u000cgnB\u0004\u0002 \tA\t!!\t\u0002\u001f!\u000b7\u000f[*fi\u000e{WNY5oKJ\u00042AHA\u0012\r\u0019\t!\u0001#\u0001\u0002&M\u0019\u00111E\u001e\t\u000f\r\n\u0019\u0003\"\u0001\u0002*Q\u0011\u0011\u0011\u0005\u0005\t\u0003[\t\u0019\u0003\"\u0001\u00020\u0005)\u0011\r\u001d9msV!\u0011\u0011GA\u001c+\t\t\u0019\u0004\u0005\u0003\u001f\u0001\u0005U\u0002cA\t\u00028\u001111#a\u000bC\u0002UA1\"a\u000f\u0002$\t\u0007I\u0011\u0001\u0002\u0002>\u0005A!o\\8uE&$8/F\u0001b\u0011!\t\t%a\t!\u0002\u0013\t\u0017!\u0003:p_R\u0014\u0017\u000e^:!\u0011-\t)%a\tC\u0002\u0013\u0005!!!\u0010\u0002\u0011I|w\u000e^:ju\u0016D\u0001\"!\u0013\u0002$\u0001\u0006I!Y\u0001\ne>|Go]5{K\u0002\u0002"
.end annotation


# instance fields
.field private final emptyTrie:Lscala/collection/immutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    sget-object v0, Lscala/collection/parallel/immutable/HashSetCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootsize()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/BucketCombiner;-><init>(I)V

    .line 139
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    iput-object v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner;->emptyTrie:Lscala/collection/immutable/HashSet;

    return-void
.end method

.method public static apply()Lscala/collection/parallel/immutable/HashSetCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/HashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/HashSetCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashSetCombiner$;->apply()Lscala/collection/parallel/immutable/HashSetCombiner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashSetCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/HashSetCombiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashSetCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/HashSetCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/HashSetCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/immutable/HashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->sz()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/HashSetCombiner;->sz_$eq(I)V

    .line 143
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->emptyTrie()Lscala/collection/immutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 145
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v3}, Lscala/reflect/ClassTag$;->Any()Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    aput-object v2, v1, v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    return-object p0
.end method

.method public emptyTrie()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner;->emptyTrie:Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->result()Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/immutable/ParHashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 155
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$1;-><init>(Lscala/collection/parallel/immutable/HashSetCombiner;)V

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$2;-><init>(Lscala/collection/parallel/immutable/HashSetCombiner;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 156
    array-length v0, v3

    new-array v0, v0, [Lscala/collection/immutable/HashSet;

    .line 158
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v7

    new-instance v8, Lscala/collection/parallel/immutable/HashSetCombiner$CreateTrie;

    array-length v6, v3

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/immutable/HashSetCombiner$CreateTrie;-><init>(Lscala/collection/parallel/immutable/HashSetCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashSet;II)V

    invoke-interface {v7, v8}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 162
    :goto_0
    sget-object v4, Lscala/collection/parallel/immutable/HashSetCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;

    invoke-virtual {v4}, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootsize()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 163
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v4

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    shl-int v4, v5, v2

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$3;

    invoke-direct {v6, p0}, Lscala/collection/parallel/immutable/HashSetCombiner$$anonfun$3;-><init>(Lscala/collection/parallel/immutable/HashSetCombiner;)V

    invoke-interface {v2, v4, v6}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 168
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashSet;-><init>()V

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_3

    .line 169
    new-instance v2, Lscala/collection/parallel/immutable/ParHashSet;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Lscala/collection/parallel/immutable/ParHashSet;-><init>(Lscala/collection/immutable/HashSet;)V

    move-object v0, v2

    goto :goto_1

    .line 171
    :cond_3
    new-instance v1, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-direct {v1, v3, v0, v2}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    .line 172
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet;

    invoke-direct {v0, v1}, Lscala/collection/parallel/immutable/ParHashSet;-><init>(Lscala/collection/immutable/HashSet;)V

    :goto_1
    return-object v0
.end method
