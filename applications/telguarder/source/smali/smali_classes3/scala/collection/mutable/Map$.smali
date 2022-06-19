.class public final Lscala/collection/mutable/Map$;
.super Lscala/collection/generic/MutableMapFactory;
.source "Map.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableMapFactory<",
        "Lscala/collection/mutable/Map;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/Map$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/Map$;

    invoke-direct {v0}, Lscala/collection/mutable/Map$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lscala/collection/generic/MutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/Map<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Map$;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Map$;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lscala/collection/mutable/HashMap;

    invoke-direct {v0}, Lscala/collection/mutable/HashMap;-><init>()V

    return-object v0
.end method
