.class public final Lscala/collection/immutable/IndexedSeq$;
.super Lscala/collection/generic/IndexedSeqFactory;
.source "IndexedSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/IndexedSeqFactory<",
        "Lscala/collection/immutable/IndexedSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/IndexedSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/IndexedSeq$;

    invoke-direct {v0}, Lscala/collection/immutable/IndexedSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lscala/collection/generic/IndexedSeqFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

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
            "Lscala/collection/immutable/IndexedSeq<",
            "*>;TA;",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
