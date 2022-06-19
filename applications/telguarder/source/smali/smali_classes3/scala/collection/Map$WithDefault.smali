.class public abstract Lscala/collection/Map$WithDefault;
.super Lscala/collection/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractMap<",
        "TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final d:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final underlying:Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Map;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Map<",
            "TA;TB;>;",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lscala/collection/Map$WithDefault;->underlying:Lscala/collection/Map;

    iput-object p2, p0, Lscala/collection/Map$WithDefault;->d:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lscala/collection/Map$WithDefault;->d:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lscala/collection/Map$WithDefault;->underlying:Lscala/collection/Map;

    invoke-interface {v0, p1}, Lscala/collection/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lscala/collection/Map$WithDefault;->underlying:Lscala/collection/Map;

    invoke-interface {v0}, Lscala/collection/Map;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 50
    iget-object v0, p0, Lscala/collection/Map$WithDefault;->underlying:Lscala/collection/Map;

    invoke-interface {v0}, Lscala/collection/Map;->size()I

    move-result v0

    return v0
.end method
