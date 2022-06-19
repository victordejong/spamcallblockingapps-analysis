.class public final Lscala/collection/Traversable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Traversable.scala"

# interfaces
.implements Lscala/collection/generic/TraversableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/Traversable;",
        ">;",
        "Lscala/collection/generic/TraversableFactory<",
        "Lscala/collection/Traversable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/Traversable$;


# instance fields
.field private final breaks:Lscala/util/control/Breaks;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Traversable$;

    invoke-direct {v0}, Lscala/collection/Traversable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    .line 95
    new-instance v0, Lscala/util/control/Breaks;

    invoke-direct {v0}, Lscala/util/control/Breaks;-><init>()V

    iput-object v0, p0, Lscala/collection/Traversable$;->breaks:Lscala/util/control/Breaks;

    return-void
.end method


# virtual methods
.method public breaks()Lscala/util/control/Breaks;
    .locals 1

    .line 95
    iget-object v0, p0, Lscala/collection/Traversable$;->breaks:Lscala/util/control/Breaks;

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/Traversable<",
            "*>;TA;",
            "Lscala/collection/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lscala/collection/Traversable$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 100
    sget-object v0, Lscala/collection/immutable/Traversable$;->MODULE$:Lscala/collection/immutable/Traversable$;

    invoke-virtual {v0}, Lscala/collection/immutable/Traversable$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
