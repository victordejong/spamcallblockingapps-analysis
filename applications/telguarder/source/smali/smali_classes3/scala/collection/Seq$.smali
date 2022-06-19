.class public final Lscala/collection/Seq$;
.super Lscala/collection/generic/SeqFactory;
.source "Seq.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/Seq;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/Seq$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/Seq$;

    invoke-direct {v0}, Lscala/collection/Seq$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

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
            "Lscala/collection/Seq<",
            "*>;TA;",
            "Lscala/collection/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 37
    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
