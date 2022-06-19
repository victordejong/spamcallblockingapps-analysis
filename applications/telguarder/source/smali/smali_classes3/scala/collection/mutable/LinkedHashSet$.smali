.class public final Lscala/collection/mutable/LinkedHashSet$;
.super Lscala/collection/generic/MutableSetFactory;
.source "LinkedHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableSetFactory<",
        "Lscala/collection/mutable/LinkedHashSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/LinkedHashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/LinkedHashSet$;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedHashSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lscala/collection/generic/MutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 133
    sget-object v0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

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
            "Lscala/collection/mutable/LinkedHashSet<",
            "*>;TA;",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet$;->empty()Lscala/collection/mutable/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lscala/collection/mutable/LinkedHashSet;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedHashSet;-><init>()V

    return-object v0
.end method
