.class public final Lscala/collection/generic/BitSetFactory$$anon$1;
.super Ljava/lang/Object;
.source "BitSetFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/BitSetFactory;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TColl;",
        "Ljava/lang/Object;",
        "TColl;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/BitSetFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/BitSetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/BitSetFactory<",
            "TColl;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/BitSetFactory$$anon$1;->$outer:Lscala/collection/generic/BitSetFactory;

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
            "Ljava/lang/Object;",
            "TColl;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lscala/collection/generic/BitSetFactory$$anon$1;->$outer:Lscala/collection/generic/BitSetFactory;

    invoke-interface {v0}, Lscala/collection/generic/BitSetFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 34
    check-cast p1, Lscala/collection/BitSet;

    invoke-virtual {p0, p1}, Lscala/collection/generic/BitSetFactory$$anon$1;->apply(Lscala/collection/BitSet;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/BitSet;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "TColl;>;"
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lscala/collection/generic/BitSetFactory$$anon$1;->$outer:Lscala/collection/generic/BitSetFactory;

    invoke-interface {p1}, Lscala/collection/generic/BitSetFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
