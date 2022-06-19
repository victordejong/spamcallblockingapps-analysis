.class public final Lscala/collection/mutable/WrappedArray$$anon$1;
.super Ljava/lang/Object;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/WrappedArray$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/mutable/WrappedArray<",
        "*>;TT;",
        "Lscala/collection/mutable/WrappedArray<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final m$1:Lscala/reflect/ClassTag;


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lscala/collection/mutable/WrappedArray$$anon$1;->m$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 119
    sget-object v0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    iget-object v1, p0, Lscala/collection/mutable/WrappedArray$$anon$1;->m$1:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$2;

    invoke-direct {v1, p0}, Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$2;-><init>(Lscala/collection/mutable/WrappedArray$$anon$1;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 115
    check-cast p1, Lscala/collection/mutable/WrappedArray;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray$$anon$1;->apply(Lscala/collection/mutable/WrappedArray;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/mutable/WrappedArray;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/WrappedArray<",
            "*>;)",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 117
    sget-object p1, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    iget-object v0, p0, Lscala/collection/mutable/WrappedArray$$anon$1;->m$1:Lscala/reflect/ClassTag;

    invoke-virtual {p1, v0}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    new-instance v0, Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/WrappedArray$$anon$1$$anonfun$apply$1;-><init>(Lscala/collection/mutable/WrappedArray$$anon$1;)V

    invoke-virtual {p1, v0}, Lscala/collection/mutable/ArrayBuilder;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
