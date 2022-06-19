.class public final Lscala/collection/immutable/Queue$;
.super Lscala/collection/generic/SeqFactory;
.source "Queue.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/immutable/Queue;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Queue$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Queue$;

    invoke-direct {v0}, Lscala/collection/immutable/Queue$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 157
    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/Queue;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Seq;)Lscala/collection/immutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/immutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lscala/collection/immutable/Queue;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-interface {p1}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Queue<",
            "*>;TA;",
            "Lscala/collection/immutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lscala/collection/immutable/Queue$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lscala/collection/immutable/Queue$EmptyQueue$;->MODULE$:Lscala/collection/immutable/Queue$EmptyQueue$;

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
            "Lscala/collection/immutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    new-instance v1, Lscala/collection/immutable/Queue$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/immutable/Queue$$anonfun$newBuilder$1;-><init>()V

    invoke-static {v0, v1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
