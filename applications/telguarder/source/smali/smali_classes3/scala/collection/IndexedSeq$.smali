.class public final Lscala/collection/IndexedSeq$;
.super Lscala/collection/generic/IndexedSeqFactory;
.source "IndexedSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/IndexedSeqFactory<",
        "Lscala/collection/IndexedSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/IndexedSeq$;


# instance fields
.field private final ReusableCBF:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/IndexedSeq;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/IndexedSeq$;

    invoke-direct {v0}, Lscala/collection/IndexedSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lscala/collection/generic/IndexedSeqFactory;-><init>()V

    sput-object p0, Lscala/collection/IndexedSeq$;->MODULE$:Lscala/collection/IndexedSeq$;

    .line 33
    new-instance v0, Lscala/collection/IndexedSeq$$anon$1;

    invoke-direct {v0}, Lscala/collection/IndexedSeq$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/collection/IndexedSeq$;->ReusableCBF:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    return-void
.end method


# virtual methods
.method public ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/IndexedSeq;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lscala/collection/IndexedSeq$;->ReusableCBF:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/IndexedSeq<",
            "*>;TA;",
            "Lscala/collection/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lscala/collection/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
