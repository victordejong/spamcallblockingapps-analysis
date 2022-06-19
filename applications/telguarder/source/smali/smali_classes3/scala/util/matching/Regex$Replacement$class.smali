.class public abstract Lscala/util/matching/Regex$Replacement$class;
.super Ljava/lang/Object;
.source "Regex.scala"


# direct methods
.method public static $init$(Lscala/util/matching/Regex$Replacement;)V
    .locals 1

    .line 796
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0, v0}, Lscala/util/matching/Regex$Replacement;->scala$util$matching$Regex$Replacement$_setter_$scala$util$matching$Regex$Replacement$$sb_$eq(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public static replace(Lscala/util/matching/Regex$Replacement;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1

    .line 804
    invoke-interface {p0}, Lscala/util/matching/Regex$Replacement;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/matching/Regex$Replacement;->scala$util$matching$Regex$Replacement$$sb()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method public static replaced(Lscala/util/matching/Regex$Replacement;)Ljava/lang/String;
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lscala/util/matching/Regex$Replacement;->scala$util$matching$Regex$Replacement$$sb()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 800
    invoke-interface {p0}, Lscala/util/matching/Regex$Replacement;->matcher()Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
