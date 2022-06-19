.class public final Lscala/collection/immutable/Traversable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Traversable.scala"

# interfaces
.implements Lscala/collection/generic/TraversableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/immutable/Traversable;",
        ">;",
        "Lscala/collection/generic/TraversableFactory<",
        "Lscala/collection/immutable/Traversable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Traversable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Traversable$;

    invoke-direct {v0}, Lscala/collection/immutable/Traversable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Traversable$;->MODULE$:Lscala/collection/immutable/Traversable$;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Traversable<",
            "*>;TA;",
            "Lscala/collection/immutable/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/Traversable$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    return-object v0
.end method
