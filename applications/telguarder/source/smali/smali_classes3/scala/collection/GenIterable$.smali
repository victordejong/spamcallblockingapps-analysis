.class public final Lscala/collection/GenIterable$;
.super Lscala/collection/generic/GenTraversableFactory;
.source "GenIterable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/GenTraversableFactory<",
        "Lscala/collection/GenIterable;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/GenIterable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/GenIterable$;

    invoke-direct {v0}, Lscala/collection/GenIterable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    sput-object p0, Lscala/collection/GenIterable$;->MODULE$:Lscala/collection/GenIterable$;

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
            "Lscala/collection/GenIterable;",
            ">.GenericCanBuildFrom<TA;>;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lscala/collection/GenIterable$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/Iterable<",
            "TA;>;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lscala/collection/Iterable$;->MODULE$:Lscala/collection/Iterable$;

    invoke-virtual {v0}, Lscala/collection/Iterable$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
