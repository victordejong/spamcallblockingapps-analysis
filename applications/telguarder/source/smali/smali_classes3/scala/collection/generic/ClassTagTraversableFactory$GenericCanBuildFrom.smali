.class public Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;
.super Ljava/lang/Object;
.source "ClassTagTraversableFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/ClassTagTraversableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TCC;TA;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/ClassTagTraversableFactory;

.field private final tag:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/ClassTagTraversableFactory;Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/ClassTagTraversableFactory<",
            "TCC;>;",
            "Lscala/reflect/ClassTag<",
            "TA;>;)V"
        }
    .end annotation

    .line 29
    iput-object p2, p0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->tag:Lscala/reflect/ClassTag;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/ClassTagTraversableFactory;

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
            "TA;TCC;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->scala$collection$generic$ClassTagTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/ClassTagTraversableFactory;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->tag:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1}, Lscala/collection/generic/ClassTagTraversableFactory;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 29
    check-cast p1, Lscala/collection/Traversable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->apply(Lscala/collection/Traversable;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Traversable;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 30
    check-cast p1, Lscala/collection/generic/GenericClassTagTraversableTemplate;

    iget-object v0, p0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->tag:Lscala/reflect/ClassTag;

    invoke-interface {p1, v0}, Lscala/collection/generic/GenericClassTagTraversableTemplate;->genericClassTagBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$ClassTagTraversableFactory$GenericCanBuildFrom$$$outer()Lscala/collection/generic/ClassTagTraversableFactory;
    .locals 1

    .line 29
    iget-object v0, p0, Lscala/collection/generic/ClassTagTraversableFactory$GenericCanBuildFrom;->$outer:Lscala/collection/generic/ClassTagTraversableFactory;

    return-object v0
.end method
