.class public final Lscala/collection/LinearSeq$;
.super Lscala/collection/generic/SeqFactory;
.source "LinearSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/LinearSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/LinearSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/LinearSeq$;

    invoke-direct {v0}, Lscala/collection/LinearSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/LinearSeq$;->MODULE$:Lscala/collection/LinearSeq$;

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
            "Lscala/collection/LinearSeq<",
            "*>;TA;",
            "Lscala/collection/LinearSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lscala/collection/LinearSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/LinearSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lscala/collection/immutable/LinearSeq$;->MODULE$:Lscala/collection/immutable/LinearSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/LinearSeq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
