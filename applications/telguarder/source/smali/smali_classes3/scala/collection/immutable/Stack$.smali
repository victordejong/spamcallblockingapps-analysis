.class public final Lscala/collection/immutable/Stack$;
.super Lscala/collection/generic/SeqFactory;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/immutable/Stack;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Stack$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Stack$;

    invoke-direct {v0}, Lscala/collection/immutable/Stack$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

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
            "Lscala/collection/immutable/Stack<",
            "*>;TA;",
            "Lscala/collection/immutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lscala/collection/immutable/Stack$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    new-instance v1, Lscala/collection/immutable/Stack$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/immutable/Stack$$anonfun$newBuilder$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
