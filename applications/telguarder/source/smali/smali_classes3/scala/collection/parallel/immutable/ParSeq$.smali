.class public final Lscala/collection/parallel/immutable/ParSeq$;
.super Lscala/collection/generic/ParFactory;
.source "ParSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParFactory<",
        "Lscala/collection/parallel/immutable/ParSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/ParSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/ParSeq$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lscala/collection/generic/ParFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/ParSeq$;->MODULE$:Lscala/collection/parallel/immutable/ParSeq$;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "*>;TT;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParFactory;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParSeq$;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lscala/collection/parallel/immutable/ParVector$;->MODULE$:Lscala/collection/parallel/immutable/ParVector$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParVector$;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lscala/collection/parallel/immutable/ParVector$;->MODULE$:Lscala/collection/parallel/immutable/ParVector$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParVector$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method
