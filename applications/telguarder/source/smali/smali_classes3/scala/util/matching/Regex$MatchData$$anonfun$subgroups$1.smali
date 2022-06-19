.class public final Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;
.super Lscala/runtime/AbstractFunction1;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex$MatchData;->subgroups()Lscala/collection/immutable/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/util/matching/Regex$MatchData;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex$MatchData;)V
    .locals 0

    .line 621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;->$outer:Lscala/util/matching/Regex$MatchData;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lscala/util/matching/Regex$MatchData$$anonfun$subgroups$1;->$outer:Lscala/util/matching/Regex$MatchData;

    invoke-interface {v0, p1}, Lscala/util/matching/Regex$MatchData;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
