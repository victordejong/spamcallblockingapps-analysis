.class public final Lscala/collection/mutable/IndexedSeq$;
.super Lscala/collection/generic/SeqFactory;
.source "IndexedSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/IndexedSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/IndexedSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/IndexedSeq$;

    invoke-direct {v0}, Lscala/collection/mutable/IndexedSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/IndexedSeq$;->MODULE$:Lscala/collection/mutable/IndexedSeq$;

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
            "Lscala/collection/mutable/IndexedSeq<",
            "*>;TA;",
            "Lscala/collection/mutable/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/IndexedSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-object v0
.end method
