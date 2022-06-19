.class public interface abstract Lscala/util/matching/Regex$MatchData;
.super Ljava/lang/Object;
.source "Regex.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatchData"
.end annotation


# virtual methods
.method public abstract after()Ljava/lang/CharSequence;
.end method

.method public abstract after(I)Ljava/lang/CharSequence;
.end method

.method public abstract before()Ljava/lang/CharSequence;
.end method

.method public abstract before(I)Ljava/lang/CharSequence;
.end method

.method public abstract end()I
.end method

.method public abstract end(I)I
.end method

.method public abstract group(I)Ljava/lang/String;
.end method

.method public abstract group(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract groupCount()I
.end method

.method public abstract groupNames()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract matched()Ljava/lang/String;
.end method

.method public abstract scala$util$matching$Regex$MatchData$$nameToIndex()Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract source()Ljava/lang/CharSequence;
.end method

.method public abstract start()I
.end method

.method public abstract start(I)I
.end method

.method public abstract subgroups()Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
