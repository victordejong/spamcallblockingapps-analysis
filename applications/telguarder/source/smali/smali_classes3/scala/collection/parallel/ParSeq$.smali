.class public final Lscala/collection/parallel/ParSeq$;
.super Lscala/collection/generic/ParFactory;
.source "ParSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ParFactory<",
        "Lscala/collection/parallel/ParSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ParSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ParSeq$;

    invoke-direct {v0}, Lscala/collection/parallel/ParSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lscala/collection/generic/ParFactory;-><init>()V

    sput-object p0, Lscala/collection/parallel/ParSeq$;->MODULE$:Lscala/collection/parallel/ParSeq$;

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
            "Lscala/collection/parallel/ParSeq<",
            "*>;TT;",
            "Lscala/collection/parallel/ParSeq<",
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
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeq$;->newBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/ParSeq<",
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
            "Lscala/collection/parallel/ParSeq<",
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
