.class public final Lscala/collection/mutable/HashSet$;
.super Lscala/collection/generic/MutableSetFactory;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableSetFactory<",
        "Lscala/collection/mutable/HashSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/HashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/HashSet$;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lscala/collection/generic/MutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 105
    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    return-object v0
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
            "Lscala/collection/mutable/HashSet<",
            "*>;TA;",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet$;->empty()Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lscala/collection/mutable/HashSet;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet;-><init>()V

    return-object v0
.end method
