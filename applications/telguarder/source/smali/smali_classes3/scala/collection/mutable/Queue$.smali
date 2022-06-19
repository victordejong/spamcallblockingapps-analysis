.class public final Lscala/collection/mutable/Queue$;
.super Lscala/collection/generic/SeqFactory;
.source "Queue.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/Queue;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Queue$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Queue$;

    invoke-direct {v0}, Lscala/collection/mutable/Queue$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Queue$;->MODULE$:Lscala/collection/mutable/Queue$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 193
    sget-object v0, Lscala/collection/mutable/Queue$;->MODULE$:Lscala/collection/mutable/Queue$;

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
            "Lscala/collection/mutable/Queue<",
            "*>;TA;",
            "Lscala/collection/mutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lscala/collection/mutable/Queue$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    .line 196
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    new-instance v1, Lscala/collection/mutable/Queue$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/mutable/Queue$$anonfun$newBuilder$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/MutableList;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
