.class public final Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;
.super Lscala/runtime/AbstractFunction1;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex;->replaceSomeIn(Ljava/lang/CharSequence;Lscala/Function1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/util/matching/Regex$Match;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final it$2:Lscala/collection/AbstractIterator;

.field private final replacer$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex;Lscala/Function1;Lscala/collection/AbstractIterator;)V
    .locals 0

    .line 500
    iput-object p2, p0, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;->replacer$2:Lscala/Function1;

    iput-object p3, p0, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;->it$2:Lscala/collection/AbstractIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 500
    check-cast p1, Lscala/util/matching/Regex$Match;

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;->apply(Lscala/util/matching/Regex$Match;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/util/matching/Regex$Match;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;->replacer$2:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Option;

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lscala/util/matching/Regex$$anonfun$replaceSomeIn$1;->it$2:Lscala/collection/AbstractIterator;

    check-cast v0, Lscala/util/matching/Regex$Replacement;

    invoke-interface {v0, p1}, Lscala/util/matching/Regex$Replacement;->replace(Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method
