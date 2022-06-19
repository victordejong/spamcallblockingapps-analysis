.class public Lscala/util/matching/Regex$Match;
.super Ljava/lang/Object;
.source "Regex.scala"

# interfaces
.implements Lscala/util/matching/Regex$MatchData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Match"
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private final end:I

.field private ends:[I

.field private final groupNames:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final matcher:Ljava/util/regex/Matcher;

.field private final scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/CharSequence;

.field private final start:I

.field private starts:[I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/regex/Matcher;",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lscala/util/matching/Regex$Match;->source:Ljava/lang/CharSequence;

    .line 670
    iput-object p2, p0, Lscala/util/matching/Regex$Match;->matcher:Ljava/util/regex/Matcher;

    .line 671
    iput-object p3, p0, Lscala/util/matching/Regex$Match;->groupNames:Lscala/collection/Seq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->$init$(Lscala/util/matching/Regex$MatchData;)V

    .line 674
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lscala/util/matching/Regex$Match;->start:I

    .line 677
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    iput p1, p0, Lscala/util/matching/Regex$Match;->end:I

    return-void
.end method

.method private ends()[I
    .locals 1

    .line 684
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->ends$lzycompute()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->ends:[I

    :goto_0
    return-object v0
.end method

.method private ends$lzycompute()[I
    .locals 3

    .line 684
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 685
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lscala/util/matching/Regex$Match;->groupCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v0

    new-instance v1, Lscala/util/matching/Regex$Match$$anonfun$ends$1;

    invoke-direct {v1, p0}, Lscala/util/matching/Regex$Match$$anonfun$ends$1;-><init>(Lscala/util/matching/Regex$Match;)V

    sget-object v2, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v2}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Range$Inclusive;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 684
    iput-object v0, p0, Lscala/util/matching/Regex$Match;->ends:[I

    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/matching/Regex$Match;->ends:[I

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute()Lscala/collection/immutable/Map;
    .locals 1

    .line 669
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->scala$util$matching$Regex$MatchData$$nameToIndex(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/Map;

    move-result-object v0

    iput-object v0, p0, Lscala/util/matching/Regex$Match;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/matching/Regex$Match;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private starts()[I
    .locals 1

    .line 682
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->starts$lzycompute()[I

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->starts:[I

    :goto_0
    return-object v0
.end method

.method private starts$lzycompute()[I
    .locals 3

    .line 682
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 683
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lscala/util/matching/Regex$Match;->groupCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v0

    new-instance v1, Lscala/util/matching/Regex$Match$$anonfun$starts$1;

    invoke-direct {v1, p0}, Lscala/util/matching/Regex$Match$$anonfun$starts$1;-><init>(Lscala/util/matching/Regex$Match;)V

    sget-object v2, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v2}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Range$Inclusive;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 682
    iput-object v0, p0, Lscala/util/matching/Regex$Match;->starts:[I

    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/matching/Regex$Match;->starts:[I

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public after()Ljava/lang/CharSequence;
    .locals 1

    .line 669
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->after(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public after(I)Ljava/lang/CharSequence;
    .locals 0

    .line 669
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->after(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public before()Ljava/lang/CharSequence;
    .locals 1

    .line 669
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->before(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public before(I)Ljava/lang/CharSequence;
    .locals 0

    .line 669
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->before(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public end()I
    .locals 1

    .line 677
    iget v0, p0, Lscala/util/matching/Regex$Match;->end:I

    return v0
.end method

.method public end(I)I
    .locals 1

    .line 691
    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->ends()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method public force()Lscala/util/matching/Regex$Match;
    .locals 0

    .line 696
    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->starts()[I

    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->ends()[I

    return-object p0
.end method

.method public group(I)Ljava/lang/String;
    .locals 0

    .line 669
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->group(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 669
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->group(Lscala/util/matching/Regex$MatchData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public groupCount()I
    .locals 1

    .line 680
    invoke-virtual {p0}, Lscala/util/matching/Regex$Match;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    return v0
.end method

.method public groupNames()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->groupNames:Lscala/collection/Seq;

    return-object v0
.end method

.method public matched()Ljava/lang/String;
    .locals 1

    .line 669
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->matched(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matcher()Ljava/util/regex/Matcher;
    .locals 1

    .line 670
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->matcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public scala$util$matching$Regex$MatchData$$nameToIndex()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 669
    iget-byte v0, p0, Lscala/util/matching/Regex$Match;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute()Lscala/collection/immutable/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    :goto_0
    return-object v0
.end method

.method public source()Ljava/lang/CharSequence;
    .locals 1

    .line 669
    iget-object v0, p0, Lscala/util/matching/Regex$Match;->source:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 674
    iget v0, p0, Lscala/util/matching/Regex$Match;->start:I

    return v0
.end method

.method public start(I)I
    .locals 1

    .line 688
    invoke-direct {p0}, Lscala/util/matching/Regex$Match;->starts()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method public subgroups()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 669
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->subgroups(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 669
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->toString(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
