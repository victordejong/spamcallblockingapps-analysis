.class public final Lscala/collection/mutable/Traversable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "Traversable.scala"

# interfaces
.implements Lscala/collection/generic/TraversableFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/mutable/Traversable;",
        ">;",
        "Lscala/collection/generic/TraversableFactory<",
        "Lscala/collection/mutable/Traversable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Traversable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Traversable$;

    invoke-direct {v0}, Lscala/collection/mutable/Traversable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Traversable$;->MODULE$:Lscala/collection/mutable/Traversable$;

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
            "Lscala/collection/mutable/Traversable<",
            "*>;TA;",
            "Lscala/collection/mutable/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lscala/collection/mutable/Traversable$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/Traversable<",
            "TA;>;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-object v0
.end method
