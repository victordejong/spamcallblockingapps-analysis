.class public final Lscala/collection/mutable/LinkedList$;
.super Lscala/collection/generic/SeqFactory;
.source "LinkedList.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/LinkedList;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/LinkedList$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/LinkedList$;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedList$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 118
    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

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
            "Lscala/collection/mutable/LinkedList<",
            "*>;TA;",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList$;->empty()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/collection/mutable/LinkedList;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedList;-><init>()V

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
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    new-instance v1, Lscala/collection/mutable/LinkedList$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/mutable/LinkedList$$anonfun$newBuilder$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/MutableList;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
