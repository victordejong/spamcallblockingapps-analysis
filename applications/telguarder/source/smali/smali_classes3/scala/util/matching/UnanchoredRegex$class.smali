.class public abstract Lscala/util/matching/UnanchoredRegex$class;
.super Ljava/lang/Object;
.source "Regex.scala"


# direct methods
.method public static $init$(Lscala/util/matching/UnanchoredRegex;)V
    .locals 0

    return-void
.end method

.method public static runMatcher(Lscala/util/matching/UnanchoredRegex;Ljava/util/regex/Matcher;)Z
    .locals 0

    .line 567
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static unanchored(Lscala/util/matching/UnanchoredRegex;)Lscala/util/matching/UnanchoredRegex;
    .locals 0

    return-object p0
.end method
