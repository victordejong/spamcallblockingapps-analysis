.class public final Lscala/collection/mutable/UnrolledBuffer$;
.super Lscala/collection/generic/ClassTagTraversableFactory;
.source "UnrolledBuffer.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ClassTagTraversableFactory<",
        "Lscala/collection/mutable/UnrolledBuffer;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/UnrolledBuffer$;


# instance fields
.field private final unrolledlength:I

.field private final waterline:I

.field private final waterlineDelim:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/UnrolledBuffer$;

    invoke-direct {v0}, Lscala/collection/mutable/UnrolledBuffer$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lscala/collection/generic/ClassTagTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    const/16 v0, 0x32

    .line 210
    iput v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->waterline:I

    const/16 v0, 0x64

    .line 211
    iput v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->waterlineDelim:I

    const/16 v0, 0x20

    .line 212
    iput v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->unrolledlength:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 204
    sget-object v0, Lscala/collection/mutable/UnrolledBuffer$;->MODULE$:Lscala/collection/mutable/UnrolledBuffer$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "*>;TT;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;

    invoke-direct {v0, p0, p1}, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/ClassTagTraversableFactory;Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "TT;>;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lscala/collection/mutable/UnrolledBuffer;

    invoke-direct {v0, p1}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public unrolledlength()I
    .locals 1

    .line 212
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->unrolledlength:I

    return v0
.end method

.method public waterline()I
    .locals 1

    .line 210
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->waterline:I

    return v0
.end method

.method public waterlineDelim()I
    .locals 1

    .line 211
    iget v0, p0, Lscala/collection/mutable/UnrolledBuffer$;->waterlineDelim:I

    return v0
.end method
