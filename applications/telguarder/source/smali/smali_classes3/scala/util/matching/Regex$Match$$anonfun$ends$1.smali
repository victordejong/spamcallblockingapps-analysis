.class public final Lscala/util/matching/Regex$Match$$anonfun$ends$1;
.super Lscala/runtime/AbstractFunction1$mcII$sp;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex$Match;->ends()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/util/matching/Regex$Match;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex$Match;)V
    .locals 0

    .line 685
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/matching/Regex$Match$$anonfun$ends$1;->$outer:Lscala/util/matching/Regex$Match;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcII$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1

    .line 685
    iget-object v0, p0, Lscala/util/matching/Regex$Match$$anonfun$ends$1;->$outer:Lscala/util/matching/Regex$Match;

    invoke-virtual {v0}, Lscala/util/matching/Regex$Match;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 685
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex$Match$$anonfun$ends$1;->apply(I)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcII$sp(I)I
    .locals 1

    .line 685
    iget-object v0, p0, Lscala/util/matching/Regex$Match$$anonfun$ends$1;->$outer:Lscala/util/matching/Regex$Match;

    invoke-virtual {v0}, Lscala/util/matching/Regex$Match;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result p1

    return p1
.end method
