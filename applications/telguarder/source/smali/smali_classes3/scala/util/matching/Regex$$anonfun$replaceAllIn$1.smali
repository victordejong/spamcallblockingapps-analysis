.class public final Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;
.super Lscala/runtime/AbstractFunction1;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex;->replaceAllIn(Ljava/lang/CharSequence;Lscala/Function1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/util/matching/Regex$Match;",
        "Ljava/util/regex/Matcher;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final it$1:Lscala/collection/AbstractIterator;

.field private final replacer$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex;Lscala/Function1;Lscala/collection/AbstractIterator;)V
    .locals 0

    .line 473
    iput-object p2, p0, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;->replacer$1:Lscala/Function1;

    iput-object p3, p0, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;->it$1:Lscala/collection/AbstractIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 473
    check-cast p1, Lscala/util/matching/Regex$Match;

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;->apply(Lscala/util/matching/Regex$Match;)Ljava/util/regex/Matcher;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/matching/Regex$Match;)Ljava/util/regex/Matcher;
    .locals 2

    .line 473
    iget-object v0, p0, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;->it$1:Lscala/collection/AbstractIterator;

    check-cast v0, Lscala/util/matching/Regex$Replacement;

    iget-object v1, p0, Lscala/util/matching/Regex$$anonfun$replaceAllIn$1;->replacer$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lscala/util/matching/Regex$Replacement;->replace(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p1

    return-object p1
.end method
