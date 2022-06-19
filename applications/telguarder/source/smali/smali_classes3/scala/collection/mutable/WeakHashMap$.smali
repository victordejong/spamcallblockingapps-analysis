.class public final Lscala/collection/mutable/WeakHashMap$;
.super Lscala/collection/generic/MutableMapFactory;
.source "WeakHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableMapFactory<",
        "Lscala/collection/mutable/WeakHashMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/WeakHashMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/WeakHashMap$;

    invoke-direct {v0}, Lscala/collection/mutable/WeakHashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lscala/collection/generic/MutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/WeakHashMap$;->MODULE$:Lscala/collection/mutable/WeakHashMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 50
    sget-object v0, Lscala/collection/mutable/WeakHashMap$;->MODULE$:Lscala/collection/mutable/WeakHashMap$;

    return-object v0
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
            "Lscala/collection/mutable/WeakHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/WeakHashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap$;->empty()Lscala/collection/mutable/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/WeakHashMap$;->empty()Lscala/collection/mutable/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/WeakHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lscala/collection/mutable/WeakHashMap;

    invoke-direct {v0}, Lscala/collection/mutable/WeakHashMap;-><init>()V

    return-object v0
.end method
