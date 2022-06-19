.class public final Lscala/collection/immutable/Set$;
.super Lscala/collection/generic/ImmutableSetFactory;
.source "Set.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSetFactory<",
        "Lscala/collection/immutable/Set;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Set$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Set$;

    invoke-direct {v0}, Lscala/collection/immutable/Set$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

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
            "Lscala/collection/immutable/Set<",
            "*>;TA;",
            "Lscala/collection/immutable/Set<",
            "TA;>;>;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Set$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public emptyInstance()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lscala/collection/immutable/Set$EmptySet$;->MODULE$:Lscala/collection/immutable/Set$EmptySet$;

    return-object v0
.end method
