.class public final Lscala/collection/mutable/LinearSeq$;
.super Lscala/collection/generic/SeqFactory;
.source "LinearSeq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/LinearSeq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/LinearSeq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/LinearSeq$;

    invoke-direct {v0}, Lscala/collection/mutable/LinearSeq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/LinearSeq$;->MODULE$:Lscala/collection/mutable/LinearSeq$;

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
            "Lscala/collection/mutable/LinearSeq<",
            "*>;TA;",
            "Lscala/collection/mutable/LinearSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/LinearSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/LinearSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    return-object v0
.end method
