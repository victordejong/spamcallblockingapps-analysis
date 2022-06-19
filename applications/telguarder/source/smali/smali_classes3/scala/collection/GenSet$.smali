.class public final Lscala/collection/GenSet$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "GenSet.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/GenSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/GenSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/GenSet$;

    invoke-direct {v0}, Lscala/collection/GenSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/GenSet$;->MODULE$:Lscala/collection/GenSet$;

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
            "Lscala/collection/GenSet;",
            ">.GenericCanBuildFrom<TA;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lscala/collection/GenSet$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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

    .line 36
    sget-object v0, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

    invoke-virtual {v0}, Lscala/collection/Set$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
