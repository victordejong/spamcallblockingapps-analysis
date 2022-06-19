.class public final Lscala/collection/mutable/MutableList$;
.super Lscala/collection/generic/SeqFactory;
.source "MutableList.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/SeqFactory<",
        "Lscala/collection/mutable/MutableList;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/MutableList$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/MutableList$;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lscala/collection/generic/SeqFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 167
    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

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
            "Lscala/collection/mutable/MutableList<",
            "*>;TA;",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;>;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/MutableList<",
            "TA;>;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    return-object v0
.end method
