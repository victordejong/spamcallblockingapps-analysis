.class public final Lscala/collection/GenTraversable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "GenTraversable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/GenTraversable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/GenTraversable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/GenTraversable$;

    invoke-direct {v0}, Lscala/collection/GenTraversable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/GenTraversable$;->MODULE$:Lscala/collection/GenTraversable$;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/GenTraversable;",
            ">.GenericCanBuildFrom<TA;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lscala/collection/GenTraversable$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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

    .line 32
    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v0}, Lscala/collection/Traversable$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
