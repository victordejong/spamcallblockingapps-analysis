.class public final Lscala/Array$$anon$2;
.super Ljava/lang/Object;
.source "Array.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final t$1:Lscala/reflect/ClassTag;


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lscala/Array$$anon$2;->t$1:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    iget-object v1, p0, Lscala/Array$$anon$2;->t$1:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 63
    sget-object p1, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    iget-object v0, p0, Lscala/Array$$anon$2;->t$1:Lscala/reflect/ClassTag;

    invoke-virtual {p1, v0}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/Array$$anon$2;->apply()Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/Array$$anon$2;->apply(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object p1

    return-object p1
.end method
