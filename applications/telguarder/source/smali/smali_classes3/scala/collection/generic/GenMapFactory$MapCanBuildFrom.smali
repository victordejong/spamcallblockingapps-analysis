.class public Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;
.super Ljava/lang/Object;
.source "GenMapFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/GenMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TCC;",
        "Lscala/Tuple2<",
        "TA;TB;>;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/GenMapFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/GenMapFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/GenMapFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->$outer:Lscala/collection/generic/GenMapFactory;

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
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenMapFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 58
    check-cast p1, Lscala/collection/GenMap;

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->apply(Lscala/collection/GenMap;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/GenMap;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/generic/GenMapFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$GenMapFactory$MapCanBuildFrom$$$outer()Lscala/collection/generic/GenMapFactory;
    .locals 1

    .line 58
    iget-object v0, p0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;->$outer:Lscala/collection/generic/GenMapFactory;

    return-object v0
.end method
