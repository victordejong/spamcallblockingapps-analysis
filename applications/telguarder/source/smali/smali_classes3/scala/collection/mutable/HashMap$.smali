.class public final Lscala/collection/mutable/HashMap$;
.super Lscala/collection/generic/MutableMapFactory;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableMapFactory<",
        "Lscala/collection/mutable/HashMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/HashMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/HashMap$;

    invoke-direct {v0}, Lscala/collection/mutable/HashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lscala/collection/generic/MutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 152
    sget-object v0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

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
            "Lscala/collection/mutable/HashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap$;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap$;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 154
    new-instance v0, Lscala/collection/mutable/HashMap;

    invoke-direct {v0}, Lscala/collection/mutable/HashMap;-><init>()V

    return-object v0
.end method
