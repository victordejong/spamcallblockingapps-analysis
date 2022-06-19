.class public final Lscala/collection/Set$;
.super Lscala/collection/generic/SetFactory;
.source "Set.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SetFactory<",
        "Lscala/collection/Set;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/Set$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Set$;

    invoke-direct {v0}, Lscala/collection/Set$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lscala/collection/generic/SetFactory;-><init>()V

    sput-object p0, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

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
            "Lscala/collection/Set<",
            "*>;TA;",
            "Lscala/collection/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lscala/collection/Set$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/Set$;->empty()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->empty()Lscala/collection/immutable/Set;

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
            "Lscala/collection/immutable/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
