.class public final Lscala/util/matching/Regex$$anon$2;
.super Lscala/util/matching/Regex;
.source "Regex.scala"

# interfaces
.implements Lscala/util/matching/UnanchoredRegex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex;->unanchored()Lscala/util/matching/UnanchoredRegex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/util/matching/Regex;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex;)V
    .locals 1

    .line 553
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/matching/Regex$$anon$2;->$outer:Lscala/util/matching/Regex;

    invoke-virtual {p1}, Lscala/util/matching/Regex;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object p1, p1, Lscala/util/matching/Regex;->scala$util$matching$Regex$$groupNames:Lscala/collection/Seq;

    invoke-direct {p0, v0, p1}, Lscala/util/matching/Regex;-><init>(Ljava/util/regex/Pattern;Lscala/collection/Seq;)V

    invoke-static {p0}, Lscala/util/matching/UnanchoredRegex$class;->$init$(Lscala/util/matching/UnanchoredRegex;)V

    return-void
.end method


# virtual methods
.method public anchored()Lscala/util/matching/Regex;
    .locals 1

    .line 553
    iget-object v0, p0, Lscala/util/matching/Regex$$anon$2;->$outer:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public runMatcher(Ljava/util/regex/Matcher;)Z
    .locals 0

    .line 553
    invoke-static {p0, p1}, Lscala/util/matching/UnanchoredRegex$class;->runMatcher(Lscala/util/matching/UnanchoredRegex;Ljava/util/regex/Matcher;)Z

    move-result p1

    return p1
.end method

.method public unanchored()Lscala/util/matching/UnanchoredRegex;
    .locals 1

    .line 553
    invoke-static {p0}, Lscala/util/matching/UnanchoredRegex$class;->unanchored(Lscala/util/matching/UnanchoredRegex;)Lscala/util/matching/UnanchoredRegex;

    move-result-object v0

    return-object v0
.end method
