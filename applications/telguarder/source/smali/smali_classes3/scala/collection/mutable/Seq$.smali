.class public final Lscala/collection/mutable/Seq$;
.super Lscala/collection/generic/SeqFactory;
.source "Seq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/Seq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Seq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Seq$;

    invoke-direct {v0}, Lscala/collection/mutable/Seq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Seq$;->MODULE$:Lscala/collection/mutable/Seq$;

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
            "Lscala/collection/mutable/Seq<",
            "*>;TA;",
            "Lscala/collection/mutable/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lscala/collection/mutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-object v0
.end method
