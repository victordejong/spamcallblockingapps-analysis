.class public final Lscala/collection/parallel/mutable/ParIterable$;
.super Lscala/collection/generic/ParFactory;
.source "ParIterable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParFactory<",
        "Lscala/collection/parallel/mutable/ParIterable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/mutable/ParIterable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/mutable/ParIterable$;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParIterable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lscala/collection/generic/ParFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/mutable/ParIterable$;->MODULE$:Lscala/collection/parallel/mutable/ParIterable$;

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
            "Lscala/collection/parallel/mutable/ParIterable<",
            "*>;TT;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;-><init>(Lscala/collection/generic/ParFactory;)V

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParIterable$;->newBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

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
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v0

    return-object v0
.end method
