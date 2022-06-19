.class public final Lscala/collection/generic/GenSetFactory$$anon$1;
.super Ljava/lang/Object;
.source "GenSetFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/GenSetFactory;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TCC;TA;TCC;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/generic/GenSetFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenSetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenSetFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenSetFactory$$anon$1;->$outer:Lscala/collection/generic/GenSetFactory;

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
            "TA;TCC;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lscala/collection/generic/GenSetFactory$$anon$1;->$outer:Lscala/collection/generic/GenSetFactory;

    invoke-virtual {v0}, Lscala/collection/generic/GenSetFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 42
    check-cast p1, Lscala/collection/GenSet;

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenSetFactory$$anon$1;->apply(Lscala/collection/GenSet;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/GenSet;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lscala/collection/generic/GenSetFactory$$anon$1;->$outer:Lscala/collection/generic/GenSetFactory;

    invoke-virtual {p1}, Lscala/collection/generic/GenSetFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
