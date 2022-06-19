.class public Lscala/collection/mutable/BitSet;
.super Lscala/collection/mutable/AbstractSet;
.source "BitSet.scala"

# interfaces
.implements Lscala/collection/mutable/SortedSet;
.implements Lscala/collection/BitSet;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractSet<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/mutable/SortedSet<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/BitSet;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055f\u0001B\u0001\u0003\u0001%\u0011aAQ5u\'\u0016$(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019r\u0001\u0001\u0006\u0013+aar\u0004E\u0002\u000c\u00199i\u0011AA\u0005\u0003\u001b\t\u00111\"\u00112tiJ\u000c7\r^*fiB\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0004\u0013:$\u0008cA\u0006\u0014\u001d%\u0011AC\u0001\u0002\n\'>\u0014H/\u001a3TKR\u0004\"AF\u000c\u000e\u0003\u0011I!!\u0001\u0003\u0011\u0007YI2$\u0003\u0002\u001b\t\tQ!)\u001b;TKRd\u0015n[3\u0011\u0005-\u0001\u0001\u0003B\u0006\u001e\u001dmI!A\u0008\u0002\u0003\u000fM+G\u000fT5lKB\u0011q\u0002I\u0005\u0003C\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001b\t\u0001\u0003\u0002\u0004%)\u0002J\u0001\u0006K2,Wn]\u000b\u0002KA\u0019qB\n\u0015\n\u0005\u001d2!!B!se\u0006L\u0008CA\u0008*\u0013\tQcA\u0001\u0003M_:<\u0007\u0002\u0003\u0017\u0001\u0005\u0003\u0007IQC\u0017\u0002\u0013\u0015dW-\\:`I\u0015\u000cHC\u0001\u00182!\tyq&\u0003\u00021\r\t!QK\\5u\u0011\u001d\u00114&!AA\u0002\u0015\n1\u0001\u001f\u00132\u0011!!\u0004A!A!B\u001b)\u0013AB3mK6\u001c\u0008\u0005C\u00037\u0001\u0011\u0005q\'\u0001\u0004=S:LGO\u0010\u000b\u00037aBQaI\u001bA\u0002\u0015BQA\u000f\u0001\u0005Bm\nQ!Z7qif,\u0012a\u0007\u0005\u0006m\u0001!\t!\u0010\u000b\u00037yBQa\u0010\u001fA\u00029\t\u0001\"\u001b8jiNK\'0\u001a\u0005\u0006m\u0001!\t!\u0011\u000b\u00027!)1\t\u0001C\t\t\u00061an^8sIN,\u0012A\u0004\u0015\u0005\u0005\u001aK5\n\u0005\u0002\u0010\u000f&\u0011\u0001J\u0002\u0002\u0015I\u0016\u0004(/Z2bi\u0016$wJ^3se&$\u0017N\\4\"\u0003)\u000b!*\u00138uKJt\u0017\r\u001c\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I>,7\u000f\t8pi\u0002\nG-\\5uAM,gn]5cY\u0016\u0004sN^3se&$\u0017N\\4!_\u001a\u0004C\u000f[5tA5,G\u000f[8e]\u0005\nA*\u0001\u00043]E\nd\u0006\r\u0005\u0006\u001d\u0002!\tbT\u0001\u0005o>\u0014H\r\u0006\u0002)!\")\u0011+\u0014a\u0001\u001d\u0005\u0019\u0011\u000e\u001a=)\t53\u0015j\u0013\u0005\u0006)\u0002!)\"V\u0001\u000bkB$\u0017\r^3X_J$Gc\u0001\u0018W/\")\u0011k\u0015a\u0001\u001d!)\u0001l\u0015a\u0001Q\u0005\tq\u000fC\u0003[\u0001\u0011U1,\u0001\u0008f]N,(/Z\"ba\u0006\u001c\u0017\u000e^=\u0015\u00059b\u0006\"B)Z\u0001\u0004q\u0001\"\u00020\u0001\t#y\u0016!\u00054s_6\u0014\u0015\u000e^\'bg.tunQ8qsR\u00111\u0004\u0019\u0005\u0006Cv\u0003\r!J\u0001\u0006o>\u0014Hm\u001d\u0005\u0006G\u0002!\t\u0005Z\u0001\u0004C\u0012$GCA3i!\tya-\u0003\u0002h\r\t9!i\\8mK\u0006t\u0007\"B5c\u0001\u0004q\u0011\u0001B3mK6DQa\u001b\u0001\u0005B1\u000caA]3n_Z,GCA3n\u0011\u0015I\'\u000e1\u0001\u000f\u0011\u0015y\u0007\u0001\"\u0001q\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA9s\u001b\u0005\u0001\u0001\"B5o\u0001\u0004q\u0001\u0006\u00028Gi.\u000b\u0013!^\u0001G\u001fZ,\'O]5eK\u0002\nG\r\u001a\u0011u_\u0002\u0002(/\u001a<f]R\u00043&\u0010\u0011b]\u0012\u0004\u0013\r\u001a3!MJ|W\u000eI3yQ&\u0014\u0017\u000e^5oO\u0002\"\u0017N\u001a4fe\u0016tG\u000f\t2fQ\u00064\u0018n\u001c:/\u0011\u00159\u0008\u0001\"\u0001y\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002rs\")\u0011N\u001ea\u0001\u001d!\"aO\u0012;L\u0011\u0015a\u0008\u0001\"\u0001~\u0003\u001d!#-\u0019:%KF$\"!\u001d@\t\u000b}\\\u0008\u0019A\u000e\u0002\u000b=$\u0008.\u001a:\t\u000f\u0005\r\u0001\u0001\"\u0001\u0002\u0006\u00059A%Y7qI\u0015\u000cHcA9\u0002\u0008!1q0!\u0001A\u0002mAq!a\u0003\u0001\t\u0003\ti!\u0001\u0004%kB$S-\u001d\u000b\u0004c\u0006=\u0001BB@\u0002\n\u0001\u00071\u0004C\u0004\u0002\u0014\u0001!\t!!\u0006\u0002\u001b\u0011\nW\u000e\u001d\u0013uS2$W\rJ3r)\r\t\u0018q\u0003\u0005\u0007\u007f\u0006E\u0001\u0019A\u000e\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005)1\r\\3beR\ta\u0006C\u0004\u0002\"\u0001!\t!a\t\u0002\u0017Q|\u0017*\\7vi\u0006\u0014G.Z\u000b\u0003\u0003K\u0001B!a\n\u0002.5\u0011\u0011\u0011\u0006\u0006\u0004\u0003W!\u0011!C5n[V$\u0018M\u00197f\u0013\r\t\u0011\u0011\u0006\u0015\t\u0003?\t\t$a\u000e\u0002<A\u0019q\"a\r\n\u0007\u0005UbA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c#!!\u000f\u0002\u0003?Le\r\t;iSN\u0004#)\u001b;TKR\u00043m\u001c8uC&t7\u000fI1!m\u0006dW/\u001a\u0011uQ\u0006$\u0008%[:!cIB\u0004e\u001c:!OJ,\u0017\r^3sY\u0001\"\u0008.\u001a\u0011sKN,H\u000e\u001e\u0011pM\u0002\"\u0008.[:![\u0016$\u0008n\u001c3!SN\u0004\u0013M\u001c\u0011(S6lW\u000f^1cY\u0016<\u0003EQ5u\'\u0016$\u0008\u0005\u001e5bi\u0002\u001a\u0008.\u0019:fg\u0002\u001aH/\u0019;fA]LG\u000f\u001b\u0011uQ&\u001c\u0008%\\;uC\ndW\r\t\"jiN+GO\u000c\u0011UQV\u001cH\u0006I5gAQDW\rI7vi\u0006\u0014G.\u001a\u0011CSR\u001cV\r\u001e\u0011jg\u0002jw\u000eZ5gS\u0016$G\u0006I5uA]LG\u000e\u001c\u0011wS>d\u0017\r^3!i\",\u0007%[7nkR\u000c\'-\u001b7jif\u0004sN\u001a\u0011uQ\u0016\u0004#/Z:vYRt\u0013EAA\u001f\u0003\u0019\u0011d&M\u0019/m!1\u0011\u0011\t\u0001\u0005B\u0005\u000bQa\u00197p]\u0016Ds\u0001AA#\u0003\u0017\ni\u0005E\u0002\u0010\u0003\u000fJ1!!\u0013\u0007\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XM\u0008\u0005vuCY_\u0006R\u000e4\u0010\u001d\t\tF\u0001E\u0001\u0003\'\naAQ5u\'\u0016$\u0008cA\u0006\u0002V\u00191\u0011A\u0001E\u0001\u0003/\u001ar!!\u0016\u0002Z\u0005}s\u0004E\u0002\u0010\u00037J1!!\u0018\u0007\u0005\u0019\te.\u001f*fMB)\u0011\u0011MA475\u0011\u00111\r\u0006\u0004\u0003K\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0003S\n\u0019GA\u0007CSR\u001cV\r\u001e$bGR|\'/\u001f\u0005\u0008m\u0005UC\u0011AA7)\t\t\u0019\u0006\u0003\u0004;\u0003+\"\ta\u000f\u0005\t\u0003g\n)\u0006\"\u0001\u0002v\u0005Qa.Z<Ck&dG-\u001a:\u0016\u0005\u0005]\u0004#B\u0006\u0002z9Y\u0012bAA>\u0005\t9!)^5mI\u0016\u0014\u0008\u0002CA@\u0003+\"\u0019!!!\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\u0005\u0005\r\u0005cBA1\u0003\u000b[bbG\u0005\u0005\u0003\u000f\u000b\u0019G\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0003\u0005\u0002\u000c\u0006UC\u0011AAG\u0003-1\'o\\7CSRl\u0015m]6\u0015\u0007m\ty\t\u0003\u0004$\u0003\u0013\u0003\r!\n\u0005\u0008=\u0006UC\u0011AAJ)\rY\u0012Q\u0013\u0005\u0007G\u0005E\u0005\u0019A\u0013\t\u0015\u0005e\u0015QKA\u0001\n\u0013\tY*A\u0006sK\u0006$\'+Z:pYZ,GCAAO!\u0011\ty*!+\u000e\u0005\u0005\u0005&\u0002BAR\u0003K\u000bA\u0001\\1oO*\u0011\u0011qU\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002,\u0006\u0005&AB(cU\u0016\u001cG\u000f"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x75ba10eb2d441bb3L


# instance fields
.field private elems:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lscala/collection/mutable/BitSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 53
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 p1, p1, 0x3f

    shr-int/lit8 p1, p1, 0x6

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    new-array p1, p1, [J

    invoke-direct {p0, p1}, Lscala/collection/mutable/BitSet;-><init>([J)V

    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/BitSet;->elems:[J

    invoke-direct {p0}, Lscala/collection/mutable/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->$init$(Lscala/collection/SortedSetLike;)V

    invoke-static {p0}, Lscala/collection/SortedSet$class;->$init$(Lscala/collection/SortedSet;)V

    invoke-static {p0}, Lscala/collection/mutable/SortedSet$class;->$init$(Lscala/collection/mutable/SortedSet;)V

    invoke-static {p0}, Lscala/collection/BitSetLike$class;->$init$(Lscala/collection/BitSetLike;)V

    invoke-static {p0}, Lscala/collection/BitSet$class;->$init$(Lscala/collection/BitSet;)V

    return-void
.end method

.method public static bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/BitSet$;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/BitSet;",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/BitSet;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/BitSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static fromBitMask([J)Lscala/collection/mutable/BitSet;
    .locals 1

    sget-object v0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/BitSet$;->fromBitMask([J)Lscala/collection/mutable/BitSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $amp(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$amp(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $amp$eq(Lscala/collection/mutable/BitSet;)Lscala/collection/mutable/BitSet;
    .locals 14

    .line 127
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v8

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v9

    aget-wide v10, v9, v4

    invoke-virtual {p1, v4}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v12

    and-long v9, v10, v12

    aput-wide v9, v8, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public $amp$tilde(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$amp$tilde(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde$eq(Lscala/collection/mutable/BitSet;)Lscala/collection/mutable/BitSet;
    .locals 14

    .line 148
    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->ensureCapacity(I)V

    .line 149
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v8

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v9

    aget-wide v10, v9, v4

    invoke-virtual {p1, v4}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v12

    not-long v12, v12

    and-long v9, v10, v12

    aput-wide v9, v8, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public $bar(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$bar(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $bar$eq(Lscala/collection/mutable/BitSet;)Lscala/collection/mutable/BitSet;
    .locals 14

    .line 113
    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->ensureCapacity(I)V

    .line 114
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v8

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v9

    aget-wide v10, v9, v4

    invoke-virtual {p1, v4}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v12

    or-long v9, v10, v12

    aput-wide v9, v8, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/BitSet;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus$eq(I)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(I)Lscala/collection/mutable/BitSet;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->remove(I)Z

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus$eq(I)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/BitSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus$eq(I)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(I)Lscala/collection/mutable/BitSet;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->add(I)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus$eq(I)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus$eq(I)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $up(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$up(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $up$eq(Lscala/collection/mutable/BitSet;)Lscala/collection/mutable/BitSet;
    .locals 14

    .line 137
    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->ensureCapacity(I)V

    .line 138
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v5

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-eqz v0, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v8

    if-ge v7, v8, :cond_3

    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v8

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v9

    aget-wide v10, v9, v4

    invoke-virtual {p1, v4}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v12

    xor-long v9, v10, v12

    aput-wide v9, v8, v4

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v6

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public add(I)Z
    .locals 6

    .line 83
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lscala/Predef$;->require(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    shr-int/lit8 v0, p1, 0x6

    .line 87
    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lscala/collection/mutable/BitSet;->updateWord(IJ)V

    :goto_1
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->add(I)Z

    move-result p1

    return p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/BitSetLike$class;->addString(Lscala/collection/BitSetLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->elems_$eq([J)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->clone()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/BitSet;
    .locals 7

    .line 171
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    .line 172
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v3

    array-length v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v1, Lscala/collection/mutable/BitSet;

    invoke-direct {v1, v0}, Lscala/collection/mutable/BitSet;-><init>([J)V

    return-object v1
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->clone()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public contains(I)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->contains(Lscala/collection/BitSetLike;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public final elems()[J
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/BitSet;->elems:[J

    return-object v0
.end method

.method public final elems_$eq([J)V
    .locals 0

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/BitSet;->elems:[J

    return-void
.end method

.method public bridge synthetic empty()Lscala/collection/BitSet;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/BitSetLike;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedSet;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/BitSet;
    .locals 1

    .line 47
    sget-object v0, Lscala/collection/mutable/BitSet$;->MODULE$:Lscala/collection/mutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/BitSet$;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/SortedSet;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->empty()Lscala/collection/mutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public final ensureCapacity(I)V
    .locals 8

    .line 70
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/high16 v1, 0x2000000

    if-ge p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lscala/Predef$;->require(Z)V

    .line 71
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 72
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    :goto_1
    if-lt p1, v0, :cond_1

    .line 73
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    goto :goto_1

    .line 74
    :cond_1
    new-array p1, v0, [J

    .line 75
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v7

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->elems_$eq([J)V

    :cond_2
    return-void
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TB;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->foreach(Lscala/collection/BitSetLike;Lscala/Function1;)V

    return-void
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->fromBitMaskNoCopy([J)Lscala/collection/mutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public fromBitMaskNoCopy([J)Lscala/collection/mutable/BitSet;
    .locals 1

    .line 80
    new-instance v0, Lscala/collection/mutable/BitSet;

    invoke-direct {v0, p1}, Lscala/collection/mutable/BitSet;-><init>([J)V

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasAll(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->isEmpty(Lscala/collection/BitSetLike;)Z

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

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->iterator(Lscala/collection/BitSetLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Lscala/collection/SortedSet;
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keysIteratorFrom(I)Lscala/collection/AbstractIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/AbstractIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->keysIteratorFrom(Lscala/collection/BitSetLike;I)Lscala/collection/AbstractIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->keysIteratorFrom(I)Lscala/collection/AbstractIterator;

    move-result-object p1

    return-object p1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nwords()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public ordering()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->ordering(Lscala/collection/BitSetLike;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/SortedSetLike$class;->range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/BitSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/BitSetLike$class;->rangeImpl(Lscala/collection/BitSetLike;Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/BitSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedSet;

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/BitSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Z
    .locals 6

    .line 93
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lscala/Predef$;->require(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    .line 96
    invoke-virtual {p0, v0}, Lscala/collection/mutable/BitSet;->word(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lscala/collection/mutable/BitSet;->updateWord(IJ)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->remove(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->size(Lscala/collection/BitSetLike;)I

    move-result v0

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->stringPrefix(Lscala/collection/BitSetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/BitSet;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->subsetOf(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Z

    move-result p1

    return p1
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public toBitMask()[J
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->toBitMask(Lscala/collection/BitSetLike;)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public toImmutable()Lscala/collection/immutable/BitSet;
    .locals 2

    .line 168
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/BitSet$;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public final updateWord(IJ)V
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/mutable/BitSet;->ensureCapacity(I)V

    .line 66
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/BitSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public word(I)J
    .locals 3

    .line 62
    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->nwords()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/BitSet;->elems()[J

    move-result-object v0

    aget-wide v1, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
