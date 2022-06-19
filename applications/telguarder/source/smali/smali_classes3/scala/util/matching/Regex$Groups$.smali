.class public Lscala/util/matching/Regex$Groups$;
.super Ljava/lang/Object;
.source "Regex.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/matching/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Groups$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/util/matching/Regex$Groups$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/matching/Regex$Groups$;

    invoke-direct {v0}, Lscala/util/matching/Regex$Groups$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/matching/Regex$Groups$;->MODULE$:Lscala/util/matching/Regex$Groups$;

    return-void
.end method


# virtual methods
.method public unapplySeq(Lscala/util/matching/Regex$Match;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/matching/Regex$Match;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 726
    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->groupCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lscala/Some;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->groupCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->to$extension0(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object v1

    new-instance v2, Lscala/util/matching/Regex$Groups$$anonfun$unapplySeq$4;

    invoke-direct {v2, p1}, Lscala/util/matching/Regex$Groups$$anonfun$unapplySeq$4;-><init>(Lscala/util/matching/Regex$Match;)V

    sget-object p1, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p1}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lscala/collection/immutable/Range$Inclusive;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method
