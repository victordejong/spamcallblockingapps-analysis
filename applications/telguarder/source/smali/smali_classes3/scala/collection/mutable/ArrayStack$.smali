.class public final Lscala/collection/mutable/ArrayStack$;
.super Lscala/collection/generic/SeqFactory;
.source "ArrayStack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/ArrayStack;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayStack$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayStack$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayStack$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayStack$;->MODULE$:Lscala/collection/mutable/ArrayStack$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 22
    sget-object v0, Lscala/collection/mutable/ArrayStack$;->MODULE$:Lscala/collection/mutable/ArrayStack$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayStack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;",
            "Lscala/reflect/ClassTag<",
            "TA;>;)",
            "Lscala/collection/mutable/ArrayStack<",
            "TA;>;"
        }
    .end annotation

    .line 27
    new-instance p2, Lscala/collection/mutable/ArrayStack$$anonfun$1;

    invoke-direct {p2}, Lscala/collection/mutable/ArrayStack$$anonfun$1;-><init>()V

    sget-object v0, Lscala/collection/package$;->MODULE$:Lscala/collection/package$;

    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v2}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/package$;->breakOut(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lscala/collection/Seq;->reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 28
    array-length p2, p1

    if-nez p2, :cond_0

    new-instance p1, Lscala/collection/mutable/ArrayStack;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayStack;-><init>()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lscala/collection/mutable/ArrayStack;

    array-length v0, p1

    invoke-direct {p2, p1, v0}, Lscala/collection/mutable/ArrayStack;-><init>([Ljava/lang/Object;I)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/ArrayStack<",
            "*>;TA;",
            "Lscala/collection/mutable/ArrayStack<",
            "TA;>;>;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayStack$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 39
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    array-length v6, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/ArrayStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayStack<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lscala/collection/mutable/ArrayStack;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayStack;-><init>()V

    return-object v0
.end method

.method public growArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 33
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    array-length v6, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
            "Lscala/collection/mutable/ArrayStack<",
            "TA;>;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lscala/collection/mutable/ArrayStack;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayStack;-><init>()V

    return-object v0
.end method
