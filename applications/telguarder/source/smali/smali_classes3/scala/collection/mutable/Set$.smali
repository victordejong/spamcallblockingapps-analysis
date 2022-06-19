.class public final Lscala/collection/mutable/Set$;
.super Lscala/collection/generic/MutableSetFactory;
.source "Set.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableSetFactory<",
        "Lscala/collection/mutable/Set;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Set$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Set$;

    invoke-direct {v0}, Lscala/collection/mutable/Set$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lscala/collection/generic/MutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Set$;->MODULE$:Lscala/collection/mutable/Set$;

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
            "Lscala/collection/mutable/Set<",
            "*>;TA;",
            "Lscala/collection/mutable/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/Set$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/Set$;->empty()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashSet$;->empty()Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method
