.class public Lscala/util/matching/Regex$MatchIterator;
.super Lscala/collection/AbstractIterator;
.source "Regex.scala"

# interfaces
.implements Lscala/util/matching/Regex$MatchData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/util/matching/Regex$MatchData;"
    }
.end annotation


# instance fields
.field private volatile bitmap$0:Z

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

.field private nextSeen:Z

.field private final regex:Lscala/util/matching/Regex;

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


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lscala/util/matching/Regex;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lscala/util/matching/Regex;",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 739
    iput-object p1, p0, Lscala/util/matching/Regex$MatchIterator;->source:Ljava/lang/CharSequence;

    iput-object p2, p0, Lscala/util/matching/Regex$MatchIterator;->regex:Lscala/util/matching/Regex;

    iput-object p3, p0, Lscala/util/matching/Regex$MatchIterator;->groupNames:Lscala/collection/Seq;

    .line 740
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->$init$(Lscala/util/matching/Regex$MatchData;)V

    .line 742
    invoke-virtual {p2}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lscala/util/matching/Regex$MatchIterator;->matcher:Ljava/util/regex/Matcher;

    const/4 p1, 0x0

    .line 743
    iput-boolean p1, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return-void
.end method

.method private nextSeen()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return v0
.end method

.method private nextSeen_$eq(Z)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Lscala/util/matching/Regex$MatchIterator;->nextSeen:Z

    return-void
.end method

.method private scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute()Lscala/collection/immutable/Map;
    .locals 1

    .line 739
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->scala$util$matching$Regex$MatchData$$nameToIndex(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/Map;

    move-result-object v0

    iput-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public after()Ljava/lang/CharSequence;
    .locals 1

    .line 739
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->after(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public after(I)Ljava/lang/CharSequence;
    .locals 0

    .line 739
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->after(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public before()Ljava/lang/CharSequence;
    .locals 1

    .line 739
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->before(Lscala/util/matching/Regex$MatchData;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public before(I)Ljava/lang/CharSequence;
    .locals 0

    .line 739
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->before(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public end()I
    .locals 1

    .line 767
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 1

    .line 770
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result p1

    return p1
.end method

.method public group(I)Ljava/lang/String;
    .locals 0

    .line 739
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->group(Lscala/util/matching/Regex$MatchData;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 739
    invoke-static {p0, p1}, Lscala/util/matching/Regex$MatchData$class;->group(Lscala/util/matching/Regex$MatchData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public groupCount()I
    .locals 1

    .line 773
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

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

    .line 739
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->groupNames:Lscala/collection/Seq;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 747
    invoke-direct {p0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    invoke-direct {p0, v0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen_$eq(Z)V

    .line 748
    :cond_0
    invoke-direct {p0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen()Z

    move-result v0

    return v0
.end method

.method public matchData()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .line 776
    new-instance v0, Lscala/util/matching/Regex$MatchIterator$$anon$3;

    invoke-direct {v0, p0}, Lscala/util/matching/Regex$MatchIterator$$anon$3;-><init>(Lscala/util/matching/Regex$MatchIterator;)V

    return-object v0
.end method

.method public matched()Ljava/lang/String;
    .locals 1

    .line 739
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->matched(Lscala/util/matching/Regex$MatchData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matcher()Ljava/util/regex/Matcher;
    .locals 1

    .line 742
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->matcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 754
    invoke-direct {p0, v0}, Lscala/util/matching/Regex$MatchIterator;->nextSeen_$eq(Z)V

    .line 755
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 753
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public regex()Lscala/util/matching/Regex;
    .locals 1

    .line 739
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->regex:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public replacementData()Lscala/collection/AbstractIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/AbstractIterator<",
            "Lscala/util/matching/Regex$Match;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Lscala/util/matching/Regex$MatchIterator$$anon$1;

    invoke-direct {v0, p0}, Lscala/util/matching/Regex$MatchIterator$$anon$1;-><init>(Lscala/util/matching/Regex$MatchIterator;)V

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

    .line 739
    iget-boolean v0, p0, Lscala/util/matching/Regex$MatchIterator;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->scala$util$matching$Regex$MatchData$$nameToIndex:Lscala/collection/immutable/Map;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/util/matching/Regex$MatchIterator;->scala$util$matching$Regex$MatchData$$nameToIndex$lzycompute()Lscala/collection/immutable/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public source()Ljava/lang/CharSequence;
    .locals 1

    .line 739
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator;->source:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 761
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 1

    .line 764
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result p1

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

    .line 739
    invoke-static {p0}, Lscala/util/matching/Regex$MatchData$class;->subgroups(Lscala/util/matching/Regex$MatchData;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 758
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
