.class public final Lscala/FallbackArrayBuilding$$anon$1;
.super Ljava/lang/Object;
.source "Array.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/FallbackArrayBuilding;->fallbackCanBuildFrom(Lscala/Predef$DummyImplicit;)Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Ljava/lang/Object;",
        "TT;",
        "Lscala/collection/mutable/ArraySeq<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/FallbackArrayBuilding;)V
    .locals 0

    .line 31
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
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 33
    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 32
    sget-object p1, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {p1}, Lscala/collection/mutable/ArraySeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
