.class public final Lscala/collection/BitSet$;
.super Ljava/lang/Object;
.source "BitSet.scala"

# interfaces
.implements Lscala/collection/generic/BitSetFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/BitSetFactory<",
        "Lscala/collection/BitSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/BitSet$;


# instance fields
.field private final empty:Lscala/collection/BitSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/BitSet$;

    invoke-direct {v0}, Lscala/collection/BitSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/BitSet$;->MODULE$:Lscala/collection/BitSet$;

    invoke-static {p0}, Lscala/collection/generic/BitSetFactory$class;->$init$(Lscala/collection/generic/BitSetFactory;)V

    .line 29
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/BitSet$;->empty:Lscala/collection/BitSet;

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/BitSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/BitSet;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lscala/collection/generic/BitSetFactory$class;->apply(Lscala/collection/generic/BitSetFactory;Lscala/collection/Seq;)Lscala/collection/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/generic/BitSetFactory$class;->bitsetCanBuildFrom(Lscala/collection/generic/BitSetFactory;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/BitSet;",
            "Ljava/lang/Object;",
            "Lscala/collection/BitSet;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lscala/collection/BitSet$;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/BitSet;
    .locals 1

    .line 29
    iget-object v0, p0, Lscala/collection/BitSet$;->empty:Lscala/collection/BitSet;

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/BitSet;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
