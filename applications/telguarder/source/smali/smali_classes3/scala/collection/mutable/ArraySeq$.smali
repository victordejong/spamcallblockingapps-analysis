.class public final Lscala/collection/mutable/ArraySeq$;
.super Lscala/collection/generic/SeqFactory;
.source "ArraySeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/ArraySeq;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArraySeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArraySeq$;

    invoke-direct {v0}, Lscala/collection/mutable/ArraySeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 106
    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

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
            "Lscala/collection/mutable/ArraySeq<",
            "*>;TA;",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    new-instance v1, Lscala/collection/mutable/ArraySeq$$anonfun$newBuilder$1;

    invoke-direct {v1}, Lscala/collection/mutable/ArraySeq$$anonfun$newBuilder$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
