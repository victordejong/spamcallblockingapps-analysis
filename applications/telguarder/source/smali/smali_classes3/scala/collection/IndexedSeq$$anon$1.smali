.class public final Lscala/collection/IndexedSeq$$anon$1;
.super Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
.source "IndexedSeq.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IndexedSeq$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/IndexedSeq;",
        ">.GenericCanBuildFrom<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    invoke-direct {p0, v0}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/runtime/Nothing$;",
            "Lscala/collection/IndexedSeq<",
            "Lscala/runtime/Nothing$;",
            ">;>;"
        }
    .end annotation

    .line 34
    sget-object v0, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/IndexedSeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
