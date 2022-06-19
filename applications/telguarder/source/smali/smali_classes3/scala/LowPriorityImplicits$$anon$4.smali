.class public final Lscala/LowPriorityImplicits$$anon$4;
.super Ljava/lang/Object;
.source "Predef.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/LowPriorityImplicits;->fallbackStringCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Ljava/lang/String;",
        "TT;",
        "Lscala/collection/immutable/IndexedSeq<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/LowPriorityImplicits;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 508
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 506
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/LowPriorityImplicits$$anon$4;->apply(Ljava/lang/String;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 507
    sget-object p1, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {p1}, Lscala/collection/immutable/IndexedSeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
