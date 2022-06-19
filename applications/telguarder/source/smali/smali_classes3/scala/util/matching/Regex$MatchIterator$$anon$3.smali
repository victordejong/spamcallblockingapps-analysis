.class public final Lscala/util/matching/Regex$MatchIterator$$anon$3;
.super Lscala/collection/AbstractIterator;
.source "Regex.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex$MatchIterator;->matchData()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/util/matching/Regex$Match;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/util/matching/Regex$MatchIterator;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex$MatchIterator;)V
    .locals 0

    .line 776
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lscala/util/matching/Regex$MatchIterator$$anon$3;->next()Lscala/util/matching/Regex$Match;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/util/matching/Regex$Match;
    .locals 4

    .line 778
    iget-object v0, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v0}, Lscala/util/matching/Regex$MatchIterator;->next()Ljava/lang/String;

    new-instance v0, Lscala/util/matching/Regex$Match;

    iget-object v1, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v1}, Lscala/util/matching/Regex$MatchIterator;->source()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v2}, Lscala/util/matching/Regex$MatchIterator;->matcher()Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v3, p0, Lscala/util/matching/Regex$MatchIterator$$anon$3;->$outer:Lscala/util/matching/Regex$MatchIterator;

    invoke-virtual {v3}, Lscala/util/matching/Regex$MatchIterator;->groupNames()Lscala/collection/Seq;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lscala/util/matching/Regex$Match;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Lscala/collection/Seq;)V

    invoke-virtual {v0}, Lscala/util/matching/Regex$Match;->force()Lscala/util/matching/Regex$Match;

    move-result-object v0

    return-object v0
.end method
